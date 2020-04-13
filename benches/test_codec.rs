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

use test::{Bencher, black_box};

use parity_codec::{Decode, Encode};

#[derive(Encode, Decode)]
struct Wrapper([u8; 128]);

#[derive(Encode, Decode)]
enum Variable{
	L16([u8; 16]),
	L32([u8; 32]),
	L128([u8; 128]),
	L64([u8; 64]),
}

#[bench]
fn bench_vec_encode(b: &mut Bencher) {
	let a = vec![1u8; 128];

	let encode = || {
		a.encode()
	};

	b.iter(|| black_box(encode()));
}

#[bench]
fn bench_vec_encode_to(b: &mut Bencher) {
	let a = vec![1u8; 128];

	let mut r = Vec::with_capacity(10000);

	let mut encode = || {
		a.encode_to(&mut r)
	};

	b.iter(|| black_box(encode()));
}

#[bench]
fn bench_array_encode(b: &mut Bencher) {
	let a = Wrapper([1u8; 128]);

	let encode = || {
		a.encode()
	};

	b.iter(|| black_box(encode()));
}

#[bench]
fn bench_array_encode_to(b: &mut Bencher) {
	let a = Wrapper([1u8; 128]);

	let mut r = Vec::with_capacity(10000);

	let mut encode = || {
		a.encode_to(&mut r)
	};

	b.iter(|| black_box(encode()));
}

#[bench]
fn bench_enum_encode(b: &mut Bencher) {
	let a = Variable::L128([1u8; 128]);

	let encode = || {
		a.encode()
	};

	b.iter(|| black_box(encode()));
}

#[bench]
fn bench_enum_encode_to(b: &mut Bencher) {
	let a = Variable::L128([1u8; 128]);

	let mut r = Vec::with_capacity(10000);

	let mut encode = || {
		a.encode_to(&mut r)
	};

	b.iter(|| black_box(encode()));
}

#[bench]
fn bench_vec_decode(b: &mut Bencher) {
	let a = vec![1u8; 128];

	let encoded = a.encode();

	let decode = || {
		let t : Vec<u8> = Decode::decode(&mut &encoded[..]).unwrap();
		t
	};

	b.iter(|| black_box(decode()));
}

#[bench]
fn bench_array_decode(b: &mut Bencher) {
	let a = Wrapper([1u8; 128]);

	let encoded = a.encode();

	let decode = || {
		let t: Wrapper = Decode::decode(&mut &encoded[..]).unwrap();
		t
	};

	b.iter(|| black_box(decode()));
}

#[bench]
fn bench_enum_decode(b: &mut Bencher) {
	let a = Variable::L128([1u8; 128]);

	let encoded = a.encode();

	let decode = || {
		let t: Variable = Decode::decode(&mut &encoded[..]).unwrap();
		t
	};

	b.iter(|| black_box(decode()));
}
