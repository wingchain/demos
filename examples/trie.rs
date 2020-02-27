use keccak_hasher::KeccakHasher;
use memory_db::{MemoryDB, PrefixedKey};
use reference_trie::{RefTrieDBMutNoExt, RefTrieDBNoExt};
use trie_db::DBValue;
use trie_db::Trie;
use trie_db::TrieMut;

fn main() {
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

	let root_old = root;

	let t = RefTrieDBNoExt::new(&memdb, &root).unwrap();
	println!("trie: ");
	println!("{:#?}", t);
	let v = t.get(&b"aa".to_vec()).unwrap();
	println!("get(aa): {:?}", v);

	let root = {
		let mut t = RefTrieDBMutNoExt::from_existing(&mut memdb, &mut root).unwrap();
		t.insert(&b"aa".to_vec(), &b"2".to_vec()).unwrap();
		t.root().clone()
	};

	println!("\nafter put(aa, 2)");
	println!("root: {:?}", root);

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
}
