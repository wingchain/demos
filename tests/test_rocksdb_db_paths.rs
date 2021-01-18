use std::path::PathBuf;
use rocksdb::{DB, Options, DBPath};

#[test]
fn test_rdp() {

    let path = "/Users/gb/Downloads/rdp";
    let path = PathBuf::from(path);

    let mut opts = Options::default();
    let paths = [
        DBPath::new(PathBuf::from("/Users/gb/Downloads/rdp/db0"), 128).unwrap(),
        DBPath::new(PathBuf::from("/Users/gb/Downloads/rdp/db1"), 128).unwrap(),
        DBPath::new(PathBuf::from("/Users/gb/Downloads/rdp/db2"), 128).unwrap(),
    ];
    opts.set_db_paths(&paths);
    opts.create_if_missing(true);

    let db = DB::open(&opts, &path).unwrap();

    let data = get_data();
    for (k, v) in &data {
        db.put(k, v);
    }

    drop(db);
    let db = DB::open(&opts,&path).unwrap();
    for (k, _v) in data {
        let v = db.get(&k).unwrap().unwrap();
        println!("{:?}={}", k, v.len());
    }
}

const KEY_COUNT: usize = 10000;

fn get_data() -> Vec<(Vec<u8>, Vec<u8>)> {

    (0..KEY_COUNT).map(|n| {
        let mut v = format!("value{}", n).as_bytes().to_vec();
        v.extend_from_slice(&vec![0; 768]);
        (format!("key{}", n).as_bytes().to_vec(), v)
    }).collect()

}