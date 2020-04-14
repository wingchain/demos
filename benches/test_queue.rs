// Copyright 2019, 2020 Wingchain
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
#![feature(test)]

extern crate test;

use test::Bencher;
use std::hint::black_box;
use rand::random;
use hash_db::Hasher;
use std::sync::{Arc, RwLock};
use parity_codec::alloc::collections::HashMap;
use rayon::prelude::*;
use chashmap::CHashMap;
use crossbeam_queue::ArrayQueue;

const TXS_COUNT : usize = 10000;

#[bench]
fn bench_queue_hashmap_rwlock_std(b: &mut Bencher) {
	let txs = gen_txs(TXS_COUNT);

	let run = move || {
		let cache = Arc::new(RwLock::new(HashMap::with_capacity(TXS_COUNT)));
		txs.par_iter().for_each(|(hash, tx)| {
			cache.write().unwrap().insert(hash.clone(), tx.clone());
		});
	};

	b.iter( || black_box(run()));
}

#[bench]
fn bench_queue_hashmap_rwlock_parking_lot(b: &mut Bencher) {
	let txs = gen_txs(TXS_COUNT);

	let run = move || {
		let cache = Arc::new(parking_lot::RwLock::new(HashMap::with_capacity(TXS_COUNT)));
		txs.par_iter().for_each(|(hash, tx)| {
			cache.write().insert(hash.clone(), tx.clone());
		});
	};

	b.iter( || black_box(run()));
}

#[bench]
fn bench_queue_chashmap(b: &mut Bencher) {
	let txs = gen_txs(TXS_COUNT);

	let run = move || {
		let cache = CHashMap::with_capacity(TXS_COUNT);
		txs.par_iter().for_each(|(hash, tx)| {
			cache.insert(hash.clone(), tx.clone());
		});
	};

	b.iter( || black_box(run()));
}

#[bench]
fn bench_queue_array_queue(b: &mut Bencher) {
	let txs = gen_txs(TXS_COUNT);

	let run = move || {
		let cache = ArrayQueue::new(TXS_COUNT);
		txs.par_iter().for_each(|(_hash, tx)| {
			cache.push(tx.clone()).unwrap();
		});
	};

	b.iter( || black_box(run()));
}

#[bench]
fn bench_queue_mpsc(b: &mut Bencher) {
	let txs = gen_txs(TXS_COUNT);

	let (ctx, _crx) = tokio::sync::mpsc::unbounded_channel();

	let run = move || {
		txs.par_iter().for_each(|(_hash, tx)| {
			ctx.send(tx.clone()).unwrap();
		});
	};

	b.iter( || black_box(run()));
}

#[bench]
fn bench_queue_vec_parking_lot(b: &mut Bencher) {
	let txs = gen_txs(TXS_COUNT);

	let run = move || {
		let cache = Arc::new(parking_lot::RwLock::new(Vec::with_capacity(TXS_COUNT)));
		txs.par_iter().for_each(|(_hash, tx)| {
			cache.write().push(tx.clone());
		});
	};

	b.iter( || black_box(run()));
}

fn gen_txs(size: usize) -> Vec<([u8; 32], Vec<u8>)> {
	let mut txs = Vec::with_capacity(size);
	for _ in 0..size {
		let tx: Vec<u8> = (0..64).map(|_| random::<u8>()).collect();
		let hash = keccak_hasher::KeccakHasher::hash(&tx);
		txs.push((hash, tx));
	}
	txs
}
