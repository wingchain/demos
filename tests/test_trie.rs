#![allow(dead_code)]

use keccak_hasher::KeccakHasher;
use memory_db::{MemoryDB, PrefixedKey};
use reference_trie::{RefTrieDBMutNoExt, RefTrieDBNoExt};
use trie_db::DBValue;
use trie_db::Trie;
use trie_db::TrieMut;

#[test]
fn test_trie() {
	let mut memdb = MemoryDB::<KeccakHasher, PrefixedKey<_>, DBValue>::default();
	let mut root = Default::default();

	let mut root = {
		let mut t = RefTrieDBMutNoExt::new(&mut memdb, &mut root);
		t.insert(&b"aa".to_vec(), &b"1".to_vec()).unwrap();
		t.insert(&b"bb".to_vec(), &b"2".to_vec()).unwrap();
		t.root().clone()
	};
	println!("after put(aa, 1), put(bb, 2)");
	println!("root: {:?}", root);
	for (k, (v, rc)) in memdb.clone().drain() {
		println!("{:?}={:?} ({})", k, v, rc);
	}

	let root_old = root;

	let t = RefTrieDBNoExt::new(&memdb, &root).unwrap();
	println!("trie: ");
	println!("{:#?}", t);
	let v = t.get(&b"aa".to_vec()).unwrap();
	println!("get(aa): {:?}", v);
	for (k, (v, rc)) in memdb.clone().drain() {
		println!("{:?}={:?} ({})", k, v, rc);
	}

	let root = {
		let mut t = RefTrieDBMutNoExt::from_existing(&mut memdb, &mut root).unwrap();
		t.insert(&b"aa".to_vec(), &b"2".to_vec()).unwrap();
		t.root().clone()
	};

	println!("\nafter put(aa, 2)");
	println!("root: {:?}", root);
	for (k, (v, rc)) in memdb.clone().drain() {
		println!("{:?}={:?} ({})", k, v, rc);
	}

	let t = RefTrieDBNoExt::new(&memdb, &root).unwrap();
	println!("trie: ");
	println!("{:#?}", t);
	let v = t.get(&b"aa".to_vec()).unwrap();
	println!("get(aa): {:?}", v);
	let v = t.get(&b"bb".to_vec()).unwrap();
	println!("get(bb): {:?}", v);

	println!("\nread old root: ");
	let t = RefTrieDBNoExt::new(&memdb, &root_old).unwrap();
	println!("trie: ");
	println!("{:#?}", t);
	let v = t.get(&b"aa".to_vec()).unwrap();
	println!("get(aa): {:?}", v);
	for (k, (v, rc)) in memdb.clone().drain() {
		println!("{:?}={:?} ({})", k, v, rc);
	}
}

#[test]
fn test_trie_insert() {

	let mut memdb = MemoryDB::<KeccakHasher, PrefixedKey<_>, DBValue>::default();
	let mut root = Default::default();

	let mut root = {
		let mut t = RefTrieDBMutNoExt::new(&mut memdb, &mut root);
		t.insert(&b"abc".to_vec(), &b"111111111111111111111111111111111111111111111111111111111112".to_vec()).unwrap();
		t.insert(&b"abc".to_vec(), &b"111111111111111111111111111111111111111111111111111111111111".to_vec()).unwrap();
		t.insert(&b"def".to_vec(), &b"111111111111111111111111111111111111111111111111111111111111".to_vec()).unwrap();
		t.insert(&b"ghi".to_vec(), &b"111111111111111111111111111111111111111111111111111111111111".to_vec()).unwrap();
		t.insert(&b"jkl".to_vec(), &b"111111111111111111111111111111111111111111111111111111111111".to_vec()).unwrap();
		t.insert(&b"mno".to_vec(), &b"111111111111111111111111111111111111111111111111111111111111".to_vec()).unwrap();
		t.root().clone()
	};
	let old_root = root.clone();

	println!("after put(..., ...)");
	println!("root: {:?}", root);
	let t = RefTrieDBNoExt::new(&memdb, &root).unwrap();
	// println!("trie: ");
	// println!("{:#?}", t);
	for (k, (v, rc)) in memdb.clone().drain() {
		println!("{:?}={:?} ({})", k, v, rc);
	}

	let root = {
		let mut t = RefTrieDBMutNoExt::from_existing(&mut memdb, &mut root).unwrap();
		t.insert(&b"abc".to_vec(), &b"111111111111111111111111111111111111111111111111111111111112".to_vec()).unwrap();
		t.root().clone()
	};

	println!("\nafter put(abc, ...)");
	println!("root: {:?}", root);
	for (k, (v, rc)) in memdb.clone().drain() {
		println!("{:?}={:?} ({})", k, v, rc);
	}

	let t = RefTrieDBNoExt::new(&memdb, &old_root).unwrap();
	let v = t.get(&b"abc".to_vec());
	println!("old get(abc): {:?}", v);
	// println!("old trie: {:#?}", t);
}

#[test]
fn test_trie_remove() {

	let mut memdb = MemoryDB::<KeccakHasher, PrefixedKey<_>, DBValue>::default();
	let mut root = Default::default();

	let mut root = {
		let mut t = RefTrieDBMutNoExt::new(&mut memdb, &mut root);
		t.insert(&b"abc".to_vec(), &b"111111111111111111111111111111111111111111111111111111111111".to_vec()).unwrap();
		t.insert(&b"def".to_vec(), &b"111111111111111111111111111111111111111111111111111111111111".to_vec()).unwrap();
		t.insert(&b"ghi".to_vec(), &b"111111111111111111111111111111111111111111111111111111111111".to_vec()).unwrap();
		t.insert(&b"jkl".to_vec(), &b"111111111111111111111111111111111111111111111111111111111111".to_vec()).unwrap();
		t.insert(&b"mno".to_vec(), &b"111111111111111111111111111111111111111111111111111111111111".to_vec()).unwrap();
		t.root().clone()
	};
	let old_root = root.clone();

	println!("after put(..., ...)");
	println!("root: {:?}", root);
	let t = RefTrieDBNoExt::new(&memdb, &root).unwrap();
	println!("trie: ");
	println!("{:#?}", t);
	for (k, (v, rc)) in memdb.clone().drain() {
		println!("{:?}={:?} ({})", k, v, rc);
	}

	let root = {
		let mut t = RefTrieDBMutNoExt::from_existing(&mut memdb, &mut root).unwrap();
		t.remove(&b"abc".to_vec()).unwrap();
		t.root().clone()
	};

	println!("\nafter update(abc, ...)");
	println!("root: {:?}", root);
	for (k, (v, rc)) in memdb.clone().drain() {
		println!("{:?}={:?} ({})", k, v, rc);
	}

	let t = RefTrieDBNoExt::new(&memdb, &root).unwrap();
	let v = t.get(&b"abc".to_vec());
	println!("get(abc): {:?}", v);
	println!("trie: {:#?}", t);

	let t = RefTrieDBNoExt::new(&memdb, &old_root).unwrap();
	let v = t.get(&b"abc".to_vec());
	println!("old get(abc): {:?}", v);
	println!("old trie: {:#?}", t);


}
