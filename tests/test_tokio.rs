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

use std::sync::RwLock;
use std::thread::sleep;
use std::time::Duration;

use crossbeam_queue::ArrayQueue;
use futures::future::FutureExt;
use futures::future::join_all;
use futures::Stream;
use futures::task::{Context, Waker};
use smallvec::alloc::sync::Arc;
use tokio::macros::support::{Pin, Poll};
use tokio::runtime::Runtime;
use tokio::sync::mpsc;
use tokio::time;

#[test]
fn test_future() {
	let mut rt = Runtime::new().unwrap();

	rt.spawn(a());

	rt.spawn(b());

	rt.spawn(c());

	rt.block_on(async {
		time::delay_for(Duration::from_secs(10)).await;
	});
}

async fn a() {
	let mut int = time::interval(Duration::from_secs(1));
	loop {
		int.tick().await;
		println!("hello a");
	}
}

async fn b() {
	let mut int = time::interval(Duration::from_secs(1));
	loop {
		int.tick().await;
		println!("hello b");
	}
}

async fn c() {
	let mut int = time::interval(Duration::from_secs(1));
	loop {
		int.tick().await;
		println!("hello c");
	}
}

#[test]
fn test_channel() {
	let mut rt = Runtime::new().unwrap();

	let (mut tx, mut rx) = mpsc::channel(100);

	rt.spawn(async move {
		for i in 0..1000 {
			time::delay_for(Duration::from_secs(2)).await;
			tx.send(i).await.unwrap();
			println!("send {}", i);
		}
	});

	rt.spawn(async move {
		loop {
			if let Some(r) = rx.recv().await {
				println!("recv {}", r);
			}
		}
	});

	rt.block_on(async {
		time::delay_for(Duration::from_secs(10)).await;
	});
}


#[test]
fn test_tokio_select() {
	let mut rt = Runtime::new().unwrap();

	rt.spawn(async {
		let fs = vec![s("a").boxed(), s("b").boxed(), s("c").boxed()];

		let _r = join_all(fs).await;
	});

	rt.block_on(async {
		time::delay_for(Duration::from_secs(10)).await;
	});
}

async fn s(name: &str) {
	let mut int = time::interval(Duration::from_secs(1));
	loop {
		int.tick().await;
		println!("hello {}", name);
	}
}

#[test]
fn test_loop() {
	struct Buffer {
		inner: ArrayQueue<u32>,
	}

	impl Buffer {
		fn push(&self, data: u32) {
			self.inner.push(data).unwrap();
		}
	}

	let buffer = Buffer {
		inner: ArrayQueue::new(1024),
	};

	let mut rt = Runtime::new().unwrap();

	let buffer = Arc::new(buffer);
	let buffer_clone = buffer.clone();

	rt.spawn(async move {
		let mut int = time::interval(Duration::from_millis(1000));
		let mut i = 0;
		loop {
			int.tick().await;
			println!("push: {}", i);
			buffer.push(i);
			i = i + 1;
		}
	});

	rt.spawn(async move {
		let mut int = time::interval(Duration::from_millis(50));
		loop {
			int.tick().await;
			while let Ok(one) = buffer_clone.inner.pop() {
				println!("read: {}", one);
			}
		}
	});

	rt.block_on(async {
		time::delay_for(Duration::from_secs(10)).await;
	});
}

#[test]
fn test_stream() {
	use futures::stream::StreamExt;

	struct Buffer {
		inner: ArrayQueue<u32>,
		waker: RwLock<Option<Waker>>,
	}

	impl Buffer {
		fn push(&self, data: u32) {
			self.inner.push(data).unwrap();
			let mut a = self.waker.write().unwrap();
			a.take().map(|a| a.wake());
		}
	}

	let buffer = Buffer {
		inner: ArrayQueue::new(1024),
		waker: RwLock::new(None),
	};

	let mut rt = Runtime::new().unwrap();

	let buffer = Arc::new(buffer);
	let buffer_clone = buffer.clone();

	rt.spawn(async move {
		let mut int = time::interval(Duration::from_millis(1000));
		let mut i = 0;
		loop {
			int.tick().await;
			println!("push: {} at {}", i, chrono::Local::now());
			buffer.push(i);
			i = i + 1;
		}
	});

	struct Reader {
		buffer: Arc<Buffer>,
	}
	impl Stream for Reader {
		type Item = ();

		fn poll_next(
			self: Pin<&mut Self>,
			cx: &mut Context<'_>,
		) -> Poll<Option<Self::Item>> {
			if self.buffer.inner.is_empty() {
				let mut a = self.buffer.waker.write().unwrap();
				*a = Some(cx.waker().clone());
				Poll::Pending
			} else {
				while let Ok(one) = self.buffer.inner.pop() {
					println!("read: {}", one);
				}
				sleep(Duration::from_secs(3));
				Poll::Ready(None)
			}
		}
	}
	let mut reader = Reader {
		buffer: buffer_clone,
	};

	rt.spawn(async move {
		loop {
			let _a = reader.next().await;
		}
	});

	rt.block_on(async {
		time::delay_for(Duration::from_secs(10)).await;
	});
}