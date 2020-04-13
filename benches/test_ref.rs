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
use smallvec::alloc::rc::Rc;
use std::cell::RefCell;

#[bench]
fn bench_ref_rc(b: &mut Bencher) {
	struct X(u32);
	struct A(Rc<RefCell<X>>);

	let x = Rc::new(RefCell::new(X(10)));
	let a = A(x.clone());

	let run = || {
		for _ in 0..1000 {
			let mut x = a.0.borrow_mut();
			x.0 = x.0 + 1;
		}
	};

	b.iter(|| black_box(run()));
}

#[bench]
fn bench_ref_ref(b: &mut Bencher) {
	struct X(u32);
	struct A<'a>(&'a RefCell<X>);

	let x = RefCell::new(X(10));
	let a = A(&x);

	let run = || {
		for _i in 0..1000 {
			let mut x = a.0.borrow_mut();
			x.0 = x.0 + 1;
		}
	};

	b.iter(|| black_box(run()));
}

#[bench]
fn bench_ref_rc_read(b: &mut Bencher) {
	struct X(u32);
	struct A(Rc<X>);

	let x = Rc::new(X(10));
	let a = A(x.clone());

	let run = || {
		for _i in 0..1000 {
			let _x = &*a.0;
		}
	};

	b.iter(|| black_box(run()));
}
