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

use serde::Serialize;
use serde_json::Value;

#[test]
fn test_serde() {
	let a = bincode::serialize(&10u32).unwrap();

	println!("{:?}", a);

	let a = bincode::serialize("abc").unwrap();

	println!("{:?}", a);

	let a = bincode::serialize(&vec![1u8, 2, 3]).unwrap();

	println!("{:?}", a);

	let a = bincode::serialize(&Some(10u32)).unwrap();

	println!("{:?}", a);

	let a = bincode::serialize(&Option::<u32>::None).unwrap();

	println!("{:?}", a);

	fn f(x: ()) {
		let a = bincode::serialize(&x).unwrap();

		println!("{:?}", a);
	}

	f(());

	#[derive(Serialize)]
	struct A;

	let a = bincode::serialize(&A).unwrap();
	println!("{:?}", a);

	let a = vec![1u8; 32];
	let b = vec![2u8; 32];
	let c = (&a, &b);
	let c = bincode::serialize(&c).unwrap();
	println!("{:?}", c);

	#[derive(Serialize)]
	struct B {
		name: String,
		age: u32,
		interests: Vec<String>,
	}

	let b = B {
		name: "b".to_string(),
		age: 10,
		interests: vec!["reading".to_string(), "ball".to_string()],
	};

	let bjson = serde_json::to_string(&b).unwrap();

	let _b: Value = serde_json::from_str(&bjson).unwrap();

	println!("{}", bjson);
}
