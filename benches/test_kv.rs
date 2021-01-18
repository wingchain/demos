#![feature(test)]

extern crate test;

use test::{Bencher, black_box};
use std::collections::HashMap;
use chashmap::CHashMap;
use fnv::FnvHashMap;
use rocksdb::{DB, BlockBasedOptions, Options, WriteOptions, ReadOptions};
use tempfile::tempdir;
use std::cmp;
use tokio::runtime::Runtime;
use tokio::net::{TcpListener, TcpStream};
use tokio::io::AsyncReadExt;
use tokio::io::AsyncWriteExt;
use std::sync::Arc;

#[bench]
fn bench_kv_hash_map(b: &mut Bencher) {

    let map: HashMap<Vec<u8>, Vec<u8>> = get_data().into_iter().collect();

    b.iter(||black_box({
        for i in 0..10000 {
            let _a = map.get(format!("key{}", i).as_bytes());
        }
    }))

}

#[bench]
fn bench_kv_chash_map(b: &mut Bencher) {
    let map: CHashMap<Vec<u8>, Vec<u8>> = get_data().into_iter().collect();
    b.iter(||black_box({
        for i in 0..10000 {
            let _a = map.get(format!("key{}", i).as_bytes());
        }
    }))
}

#[bench]
fn bench_kv_fnv_hash_map(b: &mut Bencher) {
    let map: FnvHashMap<Vec<u8>, Vec<u8>> = get_data().into_iter().collect();
    b.iter(||black_box({
        for i in 0..10000 {
            let _a = map.get(format!("key{}", i).as_bytes());
        }
    }))
}

#[bench]
fn bench_kv_rocksdb(b: &mut Bencher) {
    let path = tempdir().expect("Could not create a temp dir");
    let path = path.into_path();
    let db = DB::open_default(path).unwrap();
    let data = get_data();
    for (k, v) in data {
        db.put(k, v).unwrap();
    }
    b.iter(||black_box({
        for i in 0..10000 {
            let _a = db.get(format!("key{}", i).as_bytes());
        }
    }))
}

#[bench]
fn bench_kv_rocksdb_with_option(b: &mut Bencher) {
    let path = tempdir().expect("Could not create a temp dir");
    let path = path.into_path();

    let block_opts = gen_block_opts();
    let read_opts = gen_read_opts();
    let _write_opts = gen_write_opts();
    let opts = gen_opts(1, &block_opts);

    let db = DB::open(&opts, path).unwrap();
    let data = get_data();
    for (k, v) in data {
        db.put(k, v).unwrap();
    }
    b.iter(||black_box({
        for i in 0..10000 {
            let _a = db.get_opt(format!("key{}", i).as_bytes(), &read_opts);
        }
    }))
}

#[bench]
fn bench_kv_tcp(b: &mut Bencher) {
    let data = get_data();
    let data: HashMap<Vec<u8>, Vec<u8>> = data.into_iter().collect();
    let rt = Runtime::new().unwrap();
    rt.spawn(listen(data));

    let mut socket = rt.block_on(connect()).unwrap();

    b.iter(||black_box({
        rt.block_on(async {
            for i in 0..10000 {
                let _a = get(&mut socket,format!("key{}", i).as_bytes()).await;
            }
        });
    }));
}

async fn get(socket: &mut TcpStream, key: &[u8]) -> Option<Vec<u8>> {
    socket.write_u8(key.len() as u8).await.unwrap();
    socket.write(key).await.unwrap();
    let some = socket.read_u8().await.unwrap();
    match some {
        1 => {
            let len = socket.read_u8().await.unwrap();
            let mut payload = vec![0u8; len as usize];
            socket.read_exact(&mut payload).await.unwrap();
            Some(payload)
        },
        0 => {
            None
        },
        _ => unreachable!(),
    }
}

async fn connect() -> std::io::Result<TcpStream> {
    let stream = TcpStream::connect("127.0.0.1:8888").await?;
    Ok(stream)
}

async fn listen(data: HashMap<Vec<u8>, Vec<u8>>) -> std::io::Result<()> {
    let listener = TcpListener::bind("0.0.0.0:8888").await?;
    let data = Arc::new(data);
    loop {
        let (socket, _) = listener.accept().await?;
        tokio::spawn(process_socket(socket, data.clone()));
    }
}

async fn process_socket(mut socket: TcpStream, data: Arc<HashMap<Vec<u8>, Vec<u8>>>) {
    loop {
        let len = socket.read_u8().await.unwrap();
        let mut payload = vec![0u8; len as usize];
        socket.read_exact(&mut payload).await.unwrap();
        let k = payload;
        let v = data.get(&k);
        match v {
            Some(v) => {
                socket.write_u8(1).await.unwrap();
                socket.write_u8(v.len() as u8).await.unwrap();
                socket.write(v).await.unwrap();
            },
            None => {
                socket.write_u8(0).await.unwrap();
            }
        }
    }
}

fn get_data() -> Vec<(Vec<u8>, Vec<u8>)> {

    (0..10000).map(|n| {
        (format!("key{}", n).as_bytes().to_vec(), format!("value{}", n).as_bytes().to_vec())
    }).collect()

}

pub fn gen_block_opts() -> BlockBasedOptions {
    let mut opts = BlockBasedOptions::default();
    opts.set_block_size(16 * 1024);
    opts.set_lru_cache(0);
    // opts.set_lru_cache(DB_DEFAULT_MEMORY_BUDGET_MB * 1024 * 1024 / 3);
    opts.set_cache_index_and_filter_blocks(true);
    opts.set_pin_l0_filter_and_index_blocks_in_cache(true);
    opts.set_bloom_filter(10, true);
    opts
}

pub fn gen_opts(col_count: usize, block_opts: &BlockBasedOptions) -> Options {
    let mut opts = Options::default();

    opts.set_block_based_table_factory(block_opts);
    opts.set_level_compaction_dynamic_level_bytes(true);
    opts.optimize_level_style_compaction(memory_budget_per_col(col_count));
    opts.set_target_file_size_base(64 * 1024 * 1024);
    opts.set_compression_per_level(&[]);

    opts.set_report_bg_io_stats(true);
    opts.set_use_fsync(false);
    opts.create_if_missing(true);
    opts.set_max_open_files(512);
    opts.set_bytes_per_sync(1048576);
    opts.set_write_buffer_size(memory_budget_per_col(col_count) / 2);
    opts.increase_parallelism(cmp::max(1, ::num_cpus::get() as i32 / 2));

    opts
}

pub fn gen_write_opts() -> WriteOptions {
    WriteOptions::default()
}

pub fn gen_read_opts() -> ReadOptions {
    let mut opts = ReadOptions::default();
    opts.set_verify_checksums(false);

    opts
}

const DB_DEFAULT_MEMORY_BUDGET_MB: usize = 128;
fn memory_budget_per_col(col_count: usize) -> usize {
    DB_DEFAULT_MEMORY_BUDGET_MB * 1024 * 1024 / col_count
}