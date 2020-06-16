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

use test::{black_box, Bencher};

use parity_codec::alloc::collections::HashMap;

trait Run {
	fn run(&self);
}

#[derive(Clone)]
struct A {
	a: Vec<u8>,
}

impl A {
	fn new() -> Self {
		A { a: vec![0u8; 1024] }
	}
}

impl Run for A {
	fn run(&self) {
		println!("a");
	}
}

#[derive(Clone)]
struct B {
	b: Vec<u8>,
}

impl B {
	fn new() -> Self {
		B { b: vec![0u8; 1024] }
	}
}

impl Run for B {
	fn run(&self) {
		println!("b");
	}
}

#[bench]
fn bench_dynamic_dispatch_trait_object(b: &mut Bencher) {
	let mut map: HashMap<&'static str, Box<dyn Run>> = HashMap::new();
	map.insert("a", Box::new(A::new()));
	map.insert("b", Box::new(B::new()));

	fn run(name: &str, map: &HashMap<&'static str, Box<dyn Run>>) {
		let run = map.get(name).unwrap();
		run.run();
	}

	let run = || {
		run("a", &map);
		run("b", &map);
	};

	b.iter(|| black_box(run()));
}

#[bench]
fn bench_dynamic_dispatch_fn(be: &mut Bencher) {
	let mut map: HashMap<&'static str, fn()> = HashMap::new();
	map.insert("a", || A::new().run());
	map.insert("b", || B::new().run());

	fn run(name: &str, map: &HashMap<&'static str, fn()>) {
		let run = map.get(name).unwrap();
		run();
	}

	let run = || {
		run("a", &map);
		run("b", &map);
	};

	be.iter(|| black_box(run()));
}

#[bench]
fn bench_static_dispatch(be: &mut Bencher) {
	let a = A::new();
	let b = B::new();

	fn run(name: &str, a: &A, b: &B) {
		match name {
			"a" => a.run(),
			"b" => b.run(),
			_ => panic!(),
		}
	}

	let run = || {
		run("a", &a, &b);
		run("b", &a, &b);
	};

	be.iter(|| black_box(run()));
}

#[bench]
fn bench_static_dispatch_new(be: &mut Bencher) {
	fn run(name: &str) {
		match name {
			"a" => A::new().run(),
			"b" => B::new().run(),
			_ => panic!(),
		}
	}

	let run = || {
		run("a");
		run("b");
	};

	be.iter(|| black_box(run()));
}

#[bench]
fn bench_static_dispatch_hashmap(be: &mut Bencher) {
	enum AOrB {
		A(A),
		B(B),
	}

	let a = AOrB::A(A::new());
	let b = AOrB::B(B::new());

	let mut map: HashMap<&'static str, AOrB> = HashMap::new();
	map.insert("a", a);
	map.insert("b", b);

	fn run(name: &str, map: &HashMap<&str, AOrB>) {
		let x = map.get(name).unwrap();
		match x {
			AOrB::A(a) => a.run(),
			AOrB::B(b) => b.run(),
		}
	}

	let run = || {
		run("a", &map);
		run("b", &map);
	};

	be.iter(|| black_box(run()));
}

#[bench]
fn bench_static_dispatch_vec(be: &mut Bencher) {
	#[derive(Clone)]
	enum AOrB {
		A(A),
		B(B),
	}

	let a = AOrB::A(A::new());
	let b = AOrB::B(B::new());

	let mut map: Vec<(&'static str, AOrB)> = Vec::new();
	map.push(("c", b.clone()));
	map.push(("d", b.clone()));
	map.push(("e", b.clone()));
	map.push(("f", b.clone()));
	map.push(("a", a));
	map.push(("b", b.clone()));

	fn run(name: &str, vec: &Vec<(&str, AOrB)>) {
		for (target_name, x) in vec {
			if &name == target_name {
				match x {
					AOrB::A(a) => a.run(),
					AOrB::B(b) => b.run(),
				}
				break;
			}
		}
	}

	let run = || {
		run("a", &map);
		run("b", &map);
	};

	be.iter(|| black_box(run()));
}

#[bench]
fn bench_static_dispatch_struct(be: &mut Bencher) {
	struct Map {
		a: A,
		b: B,
	}

	let map = Map {
		a: A::new(),
		b: B::new(),
	};

	fn run(name: &str, map: &Map) {
		match name {
			"a" => map.a.run(),
			"b" => map.b.run(),
			_ => panic!(),
		};
	}

	let run = || {
		run("a", &map);
		run("b", &map);
	};

	be.iter(|| black_box(run()));
}
