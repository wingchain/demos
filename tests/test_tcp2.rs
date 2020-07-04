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

use tokio::net::{
	TcpListener,
	TcpStream,
};
use std::time::Duration;
use tokio::runtime::Runtime;
use tokio::time;
use std::io;
use bytes::{BytesMut, Buf};
use tokio::io::{AsyncReadExt, AsyncWriteExt};
use tokio::net::tcp::{OwnedReadHalf, OwnedWriteHalf};
use parking_lot::RwLock;
use std::sync::Arc;
use tokio::sync::mpsc;
use tokio::sync::mpsc::{UnboundedReceiver, UnboundedSender};
use tokio::sync::oneshot::{self, Sender, Receiver};

#[test]
fn test_tcp2() {
	let mut rt = Runtime::new().unwrap();

	rt.spawn(start_tcp());

	rt.block_on(async {
		time::delay_for(Duration::from_secs(100)).await;
	});
}

async fn start_tcp() -> io::Result<()> {
	let addr = format!("0.0.0.0:7777");
	let mut listener = TcpListener::bind(addr).await?;
	loop {
		let (stream, addr) = listener.accept().await?;
		let _ = stream.set_keepalive(Some(Duration::from_secs(3)));
		let _ = stream.set_ttl(30);
		let _ = stream.set_recv_buffer_size(20 * 1024);
		let addr = addr.to_string();
		process(stream).await;
	}
}

async fn process(stream: TcpStream) {
	let (mut reader, mut writer) = stream.into_split();

	let (mut tx, mut rx) = mpsc::unbounded_channel();

	let (mut process_output_close_tx, process_output_close_rx) = oneshot::channel();
	tokio::spawn(process_output(writer, rx, process_output_close_rx));

	let (mut write_interval_close_tx, write_interval_close_rx) = oneshot::channel();
	tokio::spawn(write_interval(tx.clone(), write_interval_close_rx));

	let mut buffer = BytesMut::with_capacity(10);
	while let Ok(n) = reader.read_buf(&mut buffer).await {
		let input = match String::from_utf8(buffer.to_vec()) {
			Ok(input) => input,
			Err(_) => break,
		};
		println!("{}", input);
		tx.send(input);
		buffer.clear();
	}

	println!("send close signal");
	process_output_close_tx.send(());
	write_interval_close_tx.send(());
}

async fn process_output(mut writer: OwnedWriteHalf, mut rx: UnboundedReceiver<String>, mut close_rx: Receiver<()>) {
	loop {
		if let Ok(close_signal) = close_rx.try_recv() {
			println!("recv close signal");
			break;
		}
		if let Some(content) = rx.recv().await {
			let output = format!("output: {}", content);
			let mut buffer = BytesMut::from(output.as_bytes());
			writer.write_buf(&mut buffer).await;
		}
	}
}

async fn write_interval(tx: UnboundedSender<String>, mut close_rx: Receiver<()>) {
	let mut int = time::interval(Duration::from_secs(1));
	loop {
		if let Ok(close_signal) = close_rx.try_recv() {
			println!("recv close signal");
			break;
		}
		int.tick().await;
		println!("write_interval tick");
		tx.send("tick\n".to_string());
	}
}

// async fn write(writer: Arc<RwLock<OwnedWriteHalf>>, content: &str) {
// 	let output = format!("output: {}", content);
// 	let mut buffer = BytesMut::from(output.as_bytes());
// 	writer.write().write_buf(&mut buffer).await;
// }

