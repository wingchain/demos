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

use futures::prelude::*;
use futures::task::{Context, Poll};
use futures::Stream;
use futures_timer::Delay;
use log::warn;
use std::pin::Pin;
use std::time::{Duration, Instant, SystemTime};
use tokio::runtime::Runtime;
use tokio::time;

#[test]
fn test_schedule1() {
	let rt = Runtime::new().unwrap();

	rt.spawn(run());
}

async fn run() {
	let mut int = time::interval(Duration::from_secs(5));
	loop {
		int.tick().await;
		let mut a = 0;
		let now = Instant::now();
		for _i in 0..100000000 {
			a = a + 1;
		}
		println!("s: {}", now.elapsed().as_millis());
		println!("hello {} at {}", a, chrono::Local::now());
	}
}

#[test]
fn test_schedule2() {
	let rt = Runtime::new().unwrap();

	let task = Scheduler {
		duration: 5000,
		delay: None,
	}
	.try_for_each(|info: ScheduleInfo| work(info))
	.then(|res| {
		if let Err(err) = res {
			warn!("Terminated with an error: {:?}", err);
		}
		future::ready(())
	});

	rt.spawn(task);
	rt.block_on(async {
		time::sleep(Duration::from_secs(10));
	})
}

async fn work(info: ScheduleInfo) -> Result<(), ()> {
	let mut a = 0;
	let now = Instant::now();
	for _i in 0..100000000 {
		a = a + 1;
	}

	if info.timestamp % 2 == 0 {
		println!("error");
		return Ok(());
	}

	success(a, now, info).await
}

async fn success(a: i32, now: Instant, info: ScheduleInfo) -> Result<(), ()> {
	println!("s: {}", now.elapsed().as_millis());
	println!("hello {} at {}", a, info.timestamp);
	Ok(())
}

struct Scheduler {
	duration: u64,
	delay: Option<Delay>,
}

struct ScheduleInfo {
	timestamp: u64,
}

impl Stream for Scheduler {
	type Item = Result<ScheduleInfo, ()>;

	fn poll_next(mut self: Pin<&mut Self>, cx: &mut Context<'_>) -> Poll<Option<Self::Item>> {
		self.delay = match self.delay.take() {
			None => {
				// schedule wait.
				let wait_dur = time_until_next(duration_now(), self.duration);
				Some(Delay::new(wait_dur))
			}
			Some(d) => Some(d),
		};

		if let Some(ref mut delay) = self.delay {
			match Future::poll(Pin::new(delay), cx) {
				Poll::Pending => return Poll::Pending,
				Poll::Ready(()) => {}
			}
		}

		self.delay = None;

		let timestamp = SystemTime::now();
		let timestamp = match timestamp.duration_since(SystemTime::UNIX_EPOCH) {
			Ok(timestamp) => timestamp.as_millis() as u64,
			Err(_) => return Poll::Ready(Some(Err(()))),
		};

		Poll::Ready(Some(Ok(ScheduleInfo { timestamp })))
	}
}

fn time_until_next(now: Duration, duration: u64) -> Duration {
	let remaining_full_millis = duration - (now.as_millis() as u64 % duration) - 1;
	Duration::from_millis(remaining_full_millis)
}

fn duration_now() -> Duration {
	let now = SystemTime::now();
	now.duration_since(SystemTime::UNIX_EPOCH)
		.unwrap_or_else(|e| {
			panic!(
				"Current time {:?} is before unix epoch. Something is wrong: {:?}",
				now, e,
			)
		})
}
