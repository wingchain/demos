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

use smallvec::alloc::rc::Rc;

struct A {
	#[allow(dead_code)]
	x: String,
	x_ref: XRef<'static>,
}

struct XRef<'a> {
	x: &'a String,
}

struct AW {
	inner: A,
}

#[test]
fn test_transmute() {
	let x = "abc".to_string();
	let x_ref = XRef { x: &x };
	let x_ref = unsafe { std::mem::transmute::<XRef<'_>, XRef<'static>>(x_ref) };
	let a = A { x, x_ref };

	//println!("{}", a.x_ref.x);

	let a = Rc::new(AW { inner: a });

	println!("{}", a.inner.x_ref.x);
	println!("{}", a.inner.x_ref.x);
}
