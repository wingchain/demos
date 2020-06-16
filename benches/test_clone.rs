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

use rand::random;
use smallvec::alloc::sync::Arc;
use std::cell::RefCell;
use test::{black_box, Bencher};

#[bench]
fn bench_clone_owned(b: &mut Bencher) {
	let txs = gen_txs(10000);

	let run = || {
		let _ = txs.clone();
	};

	b.iter(|| black_box(run()));
}

#[bench]
fn bench_clone_arc(b: &mut Bencher) {
	let txs = gen_txs(10000);

	let txs = txs.into_iter().map(Arc::new).collect::<Vec<_>>();

	let run = || {
		let _ = txs.clone();
	};

	b.iter(|| black_box(run()));
}

#[bench]
fn bench_clone_refcell_arc(b: &mut Bencher) {
	let txs = gen_txs(10000);

	let txs = RefCell::new(txs.into_iter().map(Arc::new).collect::<Vec<_>>());

	let run = || {
		let _ = txs.clone();
	};

	b.iter(|| black_box(run()));
}

fn gen_txs(size: usize) -> Vec<Vec<u8>> {
	let mut txs = Vec::with_capacity(size);
	for _ in 0..size {
		let tx: Vec<u8> = (0..64).map(|_| random::<u8>()).collect();
		txs.push(tx);
	}
	txs
}
