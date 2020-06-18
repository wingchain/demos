mod utils;

use wasm_bindgen::prelude::*;
use serde::{Serialize, Deserialize};

// When the `wee_alloc` feature is enabled, use `wee_alloc` as the global
// allocator.
#[cfg(feature = "wee_alloc")]
#[global_allocator]
static ALLOC: wee_alloc::WeeAlloc = wee_alloc::WeeAlloc::INIT;

mod env {
	extern "C" {
		pub fn input_read(ptr: u64);
		pub fn input_len() -> u64;
		pub fn output_write(len: u64, ptr: u64);
	}
}

pub fn input_read(ptr: u64) {
	unsafe {
		env::input_read(ptr)
	}
}

pub fn input_len() -> u64 {
	unsafe {
		env::input_len()
	}
}

pub fn output_write(len: u64, ptr: u64) {
	unsafe {
		env::output_write(len, ptr)
	}
}

#[derive(Serialize, Deserialize)]
struct Input {
	foo: u32,
	bar: Vec<u8>,
}

#[wasm_bindgen]
pub fn process() {
	let len = input_len();

	let buffer = vec![0u8; len as usize];

	input_read( buffer.as_ptr() as _);

	let mut i : Input = serde_json::from_slice(&buffer).unwrap();

	i.foo = i.foo + 1;
	i.bar.push(5);

	let output = serde_json::to_vec(&i).unwrap();

	output_write(output.len() as _, output.as_ptr() as  _);
}

