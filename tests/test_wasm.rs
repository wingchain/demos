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
use std::ffi::c_void;
use wasmer_runtime::{func, imports};
use wasmer_runtime_core::memory::Memory;
use wasmer_runtime_core::vm::Ctx;

#[test]
fn test_wasm_rs() {
	test_wasm(&include_bytes!("../wasm-rs/pkg/wasm_rs_bg.wasm")[..]);
}

#[test]
fn test_wasm_as() {
	test_wasm(&include_bytes!("../wasm-as/build/untouched.wasm")[..]);
}

fn test_wasm(code: &[u8]) {
	let module = wasmer_runtime::compile(code).unwrap();

	let input = Input {
		foo: 10,
		bar: vec![1, 2, 3, 4],
	};

	let input = serde_json::to_vec(&input).unwrap();

	let mut context = Context {
		memory: None,
		input,
		output: None,
	};

	println!("before: {}", context.input.len());

	let context_ref = ContextRef(&mut context as *mut _ as *mut c_void);

	let import_object = imports! {
		move || (context_ref.0, |_a| {}),
		"env" => {
			"input_read" => func!(input_read),
			"input_len" => func!(input_len),
			"output_write" => func!(output_write),
			"abort" => func!(abort),
		}
	};

	let instance = module.instantiate(&import_object).unwrap();

	let memory = instance.context().memory(0);

	context.memory = Some(memory);

	let result = instance.call("process", &[]);

	println!("{:?}", result);

	println!("{:?}", context.input);
	println!("{:?}", String::from_utf8(context.input).unwrap());

	println!("{:?}", context.output);
	println!("{:?}", String::from_utf8(context.output.unwrap()).unwrap());
}

struct ContextRef(*mut c_void);
unsafe impl Send for ContextRef {}
unsafe impl Sync for ContextRef {}

struct Context<'a> {
	memory: Option<&'a Memory>,
	input: Vec<u8>,
	output: Option<Vec<u8>>,
}

#[derive(Serialize)]
struct Input {
	foo: u32,
	bar: Vec<u8>,
}

fn input_read(ctx: &mut Ctx, ptr: u64) {
	let context = unsafe { &mut *(ctx.data as *mut Context) };
	println!("input_len: {}", context.input.len());
	let memory = &context.memory.unwrap();
	let ptr = ptr as usize;
	memory.view()[ptr..(ptr + context.input.len())]
		.iter()
		.zip(context.input.iter())
		.for_each(|(cell, v)| cell.set(*v));
}

fn input_len(ctx: &mut Ctx) -> u64 {
	let context = unsafe { &mut *(ctx.data as *mut Context) };
	println!("input_len: {}", context.input.len());
	context.input.len() as u64
}

fn output_write(ctx: &mut Ctx, len: u64, ptr: u64) {
	let context = unsafe { &mut *(ctx.data as *mut Context) };
	let memory = &context.memory.unwrap();
	let ptr = ptr as usize;
	let len = len as usize;
	let mut output = vec![0; len];
	for (i, cell) in memory.view()[ptr..(ptr + len)].iter().enumerate() {
		output[i] = cell.get();
	}
	context.output = Some(output);
}

pub fn abort(_ctx: &mut Ctx, _msg_ptr: u32, _filename_ptr: u32, _line: u32, _col: u32) {}
