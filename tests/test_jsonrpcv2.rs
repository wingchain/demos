// // Copyright 2019, 2020 Wingchain
// //
// // Licensed under the Apache License, Version 2.0 (the "License");
// // you may not use this file except in compliance with the License.
// // You may obtain a copy of the License at
// //
// //     http://www.apache.org/licenses/LICENSE-2.0
// //
// // Unless required by applicable law or agreed to in writing, software
// // distributed under the License is distributed on an "AS IS" BASIS,
// // WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// // See the License for the specific language governing permissions and
// // limitations under the License.
//
// use jsonrpc_v2::{Data, Error, Params, Server};
// use parking_lot::RwLock;
// use serde::Deserialize;
// use std::time::Duration;
// use tokio::runtime::Runtime;
//
// async fn incr(data: Data<RwLock<u32>>, params: Params<(u32, Option<u32>)>) -> Result<u32, Error> {
// 	let mut a = data.0.write();
// 	*a = *a + (params.0).0;
// 	Ok(*a)
// }
//
// #[derive(Deserialize)]
// struct P {
// 	a: u32,
// 	#[allow(dead_code)]
// 	b: Option<u32>,
// }
//
// async fn incr2(data: Data<RwLock<u32>>, params: Params<P>) -> Result<u32, Error> {
// 	let mut a = data.0.write();
// 	*a = *a + (params.0).a;
// 	Ok(*a)
// }
//
// async fn get(data: Data<RwLock<u32>>) -> Result<u32, Error> {
// 	Ok(*data.0.read())
// }
//
// #[test]
// fn test_jsonrpcv2() {
// 	let mut runtime = Runtime::new().unwrap();
// 	let local = tokio::task::LocalSet::new();
// 	local.block_on(&mut runtime, async {
// 		tokio::task::spawn_local(async {
// 			let local = tokio::task::LocalSet::new();
// 			let actix_rt = actix_rt::System::run_in_tokio("actix-web", &local);
// 			tokio::task::spawn_local(actix_rt);
//
// 			run().await.unwrap();
// 		});
//
// 		tokio::time::delay_for(Duration::from_secs(60)).await;
// 	});
// }
//
// #[test]
// fn test_localset() {
// 	use std::thread;
//
// 	let mut runtime = Runtime::new().unwrap();
//
// 	runtime.block_on(async {
// 		thread::spawn(|| {
// 			let mut runtime = Runtime::new().unwrap();
//
// 			let local = tokio::task::LocalSet::new();
//
// 			local.spawn_local(async {
// 				let mut interval = tokio::time::interval(Duration::from_secs(1));
// 				loop {
// 					interval.tick().await;
// 					println!("tick");
// 				}
// 			});
//
// 			local.block_on(&mut runtime, async {
// 				tokio::time::delay_for(Duration::from_secs(10)).await;
// 			});
// 		});
//
// 		tokio::time::delay_for(Duration::from_secs(5)).await;
// 	})
// }
//
// async fn run() -> std::io::Result<()> {
// 	let rpc = Server::new()
// 		.with_data(Data::new(RwLock::new(0u32)))
// 		.with_method("incr", incr)
// 		.with_method("incr2", incr2)
// 		.with_method("get", get)
// 		.finish();
//
// 	actix_web::HttpServer::new(move || {
// 		let rpc = rpc.clone();
// 		actix_web::App::new().service(
// 			actix_web::web::service("/api")
// 				.guard(actix_web::guard::Post())
// 				.finish(rpc.into_web_service()),
// 		)
// 	})
// 	.bind("0.0.0.0:3000")?
// 	.run()
// 	.await
// }
