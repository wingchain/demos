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
use std::sync::Arc;
use lru::LruCache;

const KEY_COUNT: usize = 10000;

#[bench]
fn bench_kv_hash_map(b: &mut Bencher) {

    let map: HashMap<Vec<u8>, Vec<u8>> = get_data().into_iter().collect();

    b.iter(||black_box({
        for i in 0..KEY_COUNT {
            let _a = map.get(format!("key{}", i).as_bytes());
        }
    }))

}

#[bench]
fn bench_kv_chash_map(b: &mut Bencher) {
    let map: CHashMap<Vec<u8>, Vec<u8>> = get_data().into_iter().collect();
    b.iter(||black_box({
        for i in 0..KEY_COUNT {
            let _a = map.get(format!("key{}", i).as_bytes());
        }
    }))
}

#[bench]
fn bench_kv_fnv_hash_map(b: &mut Bencher) {
    let map: FnvHashMap<Vec<u8>, Vec<u8>> = get_data().into_iter().collect();
    b.iter(||black_box({
        for i in 0..KEY_COUNT {
            let _a = map.get(format!("key{}", i).as_bytes());
        }
    }))
}

#[bench]
fn bench_kv_lru_hash_map(b: &mut Bencher) {
    let data =  get_data();
    let mut map: LruCache<Vec<u8>, Vec<u8>> = LruCache::new(KEY_COUNT);
    for (k, v) in data {
        map.put(k, v);
    }
    b.iter(||black_box({
        for i in 0..KEY_COUNT {
            let _a = map.get(&format!("key{}", i).as_bytes().to_vec());
        }
    }))
}

#[bench]
fn bench_kv_rocksdb(b: &mut Bencher) {
    let path = tempdir().expect("Could not create a temp dir");
    let path = path.into_path();
    let db = DB::open_default(&path).unwrap();
    let data = get_data();
    for (k, v) in data {
        db.put(k, v).unwrap();
    }
    drop(db);
    let db = DB::open_default(&path).unwrap();
    b.iter(||black_box({
        for i in 0..KEY_COUNT {
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

    let db = DB::open(&opts, &path).unwrap();
    let data = get_data();
    for (k, v) in data {
        db.put(k, v).unwrap();
    }
    drop(db);
    let db = DB::open(&opts, &path).unwrap();
    b.iter(||black_box({
        for i in 0..KEY_COUNT {
            let _a = db.get_opt(format!("key{}", i).as_bytes(), &read_opts);
        }
    }))
}

#[bench]
fn bench_kv_tcp_tokio(b: &mut Bencher) {
    let data = get_data();
    let data: HashMap<Vec<u8>, Vec<u8>> = data.into_iter().collect();
    let rt = Runtime::new().unwrap();
    rt.spawn(tokio_tcp::listen(data));

    let mut socket = rt.block_on(tokio_tcp::connect()).unwrap();

    b.iter(||black_box({
        rt.block_on(async {
            for i in 0..KEY_COUNT {
                let _a = tokio_tcp::get(&mut socket,format!("key{}", i).as_bytes()).await;
            }
        });
    }));
}

#[bench]
fn bench_kv_tcp_std(b: &mut Bencher) {
    let data = get_data();
    let data: HashMap<Vec<u8>, Vec<u8>> = data.into_iter().collect();
    std::thread::spawn(||std_tcp::listen(data));

    let mut socket = std_tcp::connect().unwrap();

    b.iter(||black_box({
        for i in 0..KEY_COUNT {
            let _a = std_tcp::get(&mut socket,format!("key{}", i).as_bytes());
        }
    }));
}

#[bench]
fn bench_kv_udp_tokio(b: &mut Bencher) {
    let data = get_data();
    let data: HashMap<Vec<u8>, Vec<u8>> = data.into_iter().collect();
    let rt = Runtime::new().unwrap();
    rt.spawn(tokio_udp::listen(data));

    let mut socket = rt.block_on(tokio_udp::connect()).unwrap();

    b.iter(||black_box({
        rt.block_on(async {
            for i in 0..KEY_COUNT {
                let _a = tokio_udp::get(&mut socket,format!("key{}", i).as_bytes()).await.unwrap();
            }
        });
    }));
}

#[bench]
fn bench_kv_udp_std(b: &mut Bencher) {
    let data = get_data();
    let data: HashMap<Vec<u8>, Vec<u8>> = data.into_iter().collect();
    std::thread::spawn(||std_udp::listen(data));

    let mut socket = std_udp::connect().unwrap();

    b.iter(||black_box({
        for i in 0..KEY_COUNT {
            let _a = std_udp::get(&mut socket,format!("key{}", i).as_bytes()).unwrap();
        }
    }));
}

mod tokio_udp {
    use super::*;
    use tokio::net::{UdpSocket};
    use std::net::SocketAddr;

    pub async fn listen(data: HashMap<Vec<u8>, Vec<u8>>)-> std::io::Result<()> {

        let socket = UdpSocket::bind("0.0.0.0:8898").await?;

        let mut buf = vec![0; 1024];
        let mut to_send : Option<(usize, SocketAddr)> = None;
        loop {
            if let Some((size, peer)) = to_send {
                let _amt = socket.send_to(&buf[..size], &peer).await?;
            }

            let (size, peer) = socket.recv_from(&mut buf).await?;
            let k = &buf[..size];
            let v = data.get(k);
            to_send = match v{
                None => {
                    buf[0] = 0;
                    Some((1, peer))
                },
                Some(v) => {
                    buf[0] = 1;
                    buf[1..v.len()+1].copy_from_slice(&v);
                    Some((v.len()+1, peer))
                }
            };
        }
    }

    pub async fn connect() -> std::io::Result<UdpSocket> {
        let socket = UdpSocket::bind("127.0.0.1:0").await?;
        socket.connect("127.0.0.1:8898").await?;
        Ok(socket)
    }

    pub async fn get(socket: &mut UdpSocket, key: &[u8]) -> std::io::Result<Option<Vec<u8>>> {
        socket.send(key).await?;
        let mut data = vec![0u8; 1024];
        let len = socket.recv(&mut data).await?;
        match data[0] {
            0 => Ok(None),
            1 => {
               Ok(Some(data[1..len].to_vec()))
            },
            _ => unreachable!(),
        }

    }
}

mod std_udp {
    use super::*;
    use std::net::{SocketAddr, UdpSocket};

    pub fn listen(data: HashMap<Vec<u8>, Vec<u8>>)-> std::io::Result<()> {

        let socket = UdpSocket::bind("0.0.0.0:8899")?;

        let mut buf = vec![0; 1024];
        let mut to_send : Option<(usize, SocketAddr)> = None;
        loop {
            if let Some((size, peer)) = to_send {
                let _amt = socket.send_to(&buf[..size], &peer)?;
            }

            let (size, peer) = socket.recv_from(&mut buf)?;
            let k = &buf[..size];
            let v = data.get(k);
            to_send = match v{
                None => {
                    buf[0] = 0;
                    Some((1, peer))
                },
                Some(v) => {
                    buf[0] = 1;
                    buf[1..v.len()+1].copy_from_slice(&v);
                    Some((v.len()+1, peer))
                }
            };
        }
    }

    pub fn connect() -> std::io::Result<UdpSocket> {
        let socket = UdpSocket::bind("127.0.0.1:0")?;
        socket.connect("127.0.0.1:8899")?;
        Ok(socket)
    }

    pub fn get(socket: &mut UdpSocket, key: &[u8]) -> std::io::Result<Option<Vec<u8>>> {
        socket.send(key)?;
        let mut data = vec![0u8; 1024];
        let len = socket.recv(&mut data)?;
        match data[0] {
            0 => Ok(None),
            1 => {
                Ok(Some(data[1..len].to_vec()))
            },
            _ => unreachable!(),
        }

    }
}

mod tokio_tcp {
    use super::*;
    use tokio::net::{TcpListener, TcpStream};
    use tokio::io::AsyncReadExt;
    use tokio::io::AsyncWriteExt;
    pub async fn get(socket: &mut TcpStream, key: &[u8]) -> Option<Vec<u8>> {
        socket.write_u16(key.len() as u16).await.unwrap();
        socket.write(key).await.unwrap();
        let some = socket.read_u8().await.unwrap();
        match some {
            1 => {
                let len = socket.read_u16().await.unwrap();
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

    pub async fn connect() -> std::io::Result<TcpStream> {
        let stream = TcpStream::connect("127.0.0.1:8888").await?;
        Ok(stream)
    }

    pub async fn listen(data: HashMap<Vec<u8>, Vec<u8>>) -> std::io::Result<()> {
        let listener = TcpListener::bind("0.0.0.0:8888").await?;
        let data = Arc::new(data);
        loop {
            let (socket, _) = listener.accept().await?;
            tokio::spawn(process_socket(socket, data.clone()));
        }
    }

    pub async fn process_socket(mut socket: TcpStream, data: Arc<HashMap<Vec<u8>, Vec<u8>>>) {
        loop {
            let len = socket.read_u16().await.unwrap();
            let mut payload = vec![0u8; len as usize];
            socket.read_exact(&mut payload).await.unwrap();
            let k = payload;
            let v = data.get(&k);
            match v {
                Some(v) => {
                    socket.write_u8(1).await.unwrap();
                    socket.write_u16(v.len() as u16).await.unwrap();
                    socket.write(v).await.unwrap();
                },
                None => {
                    socket.write_u8(0).await.unwrap();
                }
            }
        }
    }
}

mod std_tcp {
    use super::*;
    use std::net::{TcpStream, TcpListener};
    use std::io::{Write, Read};

    pub fn get(socket: &mut TcpStream, key: &[u8]) -> Option<Vec<u8>> {
        let len = key.len() as u16;
        let len = u16::to_le_bytes(len);
        socket.write(&len).unwrap();
        socket.write(key).unwrap();
        let mut some = [0u8; 1];
        socket.read(&mut some).unwrap();
        match some[0] {
            1 => {
                let mut len = [0u8; 2];
                socket.read(&mut len).unwrap();
                let len = u16::from_le_bytes(len);
                let mut payload = vec![0u8; len as usize];
                socket.read_exact(&mut payload).unwrap();
                Some(payload)
            },
            0 => {
                None
            },
            _ => unreachable!(),
        }
    }

    pub fn connect() -> std::io::Result<TcpStream> {
        let stream = TcpStream::connect("127.0.0.1:8889")?;
        Ok(stream)
    }

    pub fn listen(data: HashMap<Vec<u8>, Vec<u8>>) -> std::io::Result<()> {
        let listener = TcpListener::bind("0.0.0.0:8889")?;
        let data = Arc::new(data);
        loop {
            let (socket, _) = listener.accept()?;
            let data = data.clone();
            std::thread::spawn(||process_socket(socket, data));
        }
    }

    pub fn process_socket(mut socket: TcpStream, data: Arc<HashMap<Vec<u8>, Vec<u8>>>) {
        loop {
            let mut len = [0u8; 2];
            socket.read(&mut len).unwrap();
            let len = u16::from_le_bytes(len);
            let mut payload = vec![0u8; len as usize];
            socket.read_exact(&mut payload).unwrap();
            let k = payload;
            let v = data.get(&k);
            match v {
                Some(v) => {
                    socket.write(&[1]).unwrap();
                    let len = v.len() as u16;
                    let len = u16::to_le_bytes(len);
                    socket.write(&len).unwrap();
                    socket.write(v).unwrap();
                },
                None => {
                    socket.write(&[0]).unwrap();
                }
            }
        }
    }
}

fn get_data() -> Vec<(Vec<u8>, Vec<u8>)> {

    (0..KEY_COUNT).map(|n| {
        let mut v = format!("value{}", n).as_bytes().to_vec();
        v.extend_from_slice(&vec![0; 768]);
        (format!("key{}", n).as_bytes().to_vec(), v)
    }).collect()

}

pub fn gen_block_opts() -> BlockBasedOptions {
    let mut opts = BlockBasedOptions::default();
    opts.set_block_size(16 * 1024);
    // opts.set_lru_cache(0);
    opts.set_lru_cache(DB_DEFAULT_MEMORY_BUDGET_MB * 1024 * 1024 / 3);
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