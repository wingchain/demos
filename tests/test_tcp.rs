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
// use tokio::net::{
// 	TcpListener,
// 	TcpStream,
// };
// use std::time::Duration;
// use tokio::runtime::Runtime;
// use tokio::time;
// use std::io;
// use bytes::{BytesMut, Buf};
// use tokio::io::{AsyncReadExt, AsyncWriteExt};
// use tokio::net::tcp::{OwnedReadHalf, OwnedWriteHalf};
// use parking_lot::RwLock;
// use std::sync::Arc;
//
// #[test]
// fn test_tcp() {
//
// 	let mut rt = Runtime::new().unwrap();
//
// 	rt.spawn(start_tcp());
//
// 	rt.block_on(async {
// 		time::delay_for(Duration::from_secs(100)).await;
// 	});
// }
//
// async fn start_tcp() -> io::Result<()> {
// 	let addr = format!("0.0.0.0:7777");
// 	let mut listener = TcpListener::bind(addr).await?;
// 	loop {
// 		let (stream, addr) = listener.accept().await?;
// 		let _ = stream.set_keepalive(Some(Duration::from_secs(3)));
// 		let _ = stream.set_ttl(30);
// 		let _ = stream.set_recv_buffer_size(20 * 1024);
// 		let addr = addr.to_string();
// 		process(stream).await;
// 	}
// }
//
// async fn process(stream: TcpStream) {
// 	let (mut reader, mut writer) = stream.into_split();
//
// 	let writer = Arc::new(RwLock::new(writer));
//
// 	tokio::spawn(write_interval(writer.clone()));
//
// 	let mut buffer = BytesMut::with_capacity(10);
// 	while let Ok(n) = reader.read_buf(&mut buffer).await {
// 		let input = match String::from_utf8(buffer.to_vec()) {
// 			Ok(input) => input,
// 			Err(_) => break,
// 		};
// 		println!("{}", input);
// 		write( writer.clone(), &input).await;
// 		buffer.clear();
// 	}
// }
//
// async fn write(writer: Arc<RwLock<OwnedWriteHalf>>, content: &str) {
// 	let output = format!("output: {}", content);
// 	let mut buffer = BytesMut::from(output.as_bytes());
// 	let mut writer = &*writer.write();
// 	writer.write_buf(&mut buffer).await;
// }
//
// async fn write_interval(writer: Arc<RwLock<OwnedWriteHalf>>) {
// 	let mut int = time::interval(Duration::from_secs(1));
// 	loop{
// 		int.tick().await;
// 		println!("tick");
// 	}
//
// }