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

#![allow(dead_code)]

use parity_codec::Encode;

#[derive(Encode)]
enum Number {
	U16(u16),
	U32(u32),
	T0(u32),
	T1(u32),
	T2(u32),
	T3(u32),
	T4(u32),
	T5(u32),
	T6(u32),
	T7(u32),
	T8(u32),
	T9(u32),
	T10(u32),
	T11(u32),
	T12(u32),
	T13(u32),
	T14(u32),
	T15(u32),
	T16(u32),
	T17(u32),
	T18(u32),
	T19(u32),
	T20(u32),
	T21(u32),
	T22(u32),
	T23(u32),
	T24(u32),
	T25(u32),
	T26(u32),
	T27(u32),
	T28(u32),
	T29(u32),
	T30(u32),
	T31(u32),
	T32(u32),
	T33(u32),
	T34(u32),
	T35(u32),
	T36(u32),
	T37(u32),
	T38(u32),
	T39(u32),
	T40(u32),
	T41(u32),
	T42(u32),
	T43(u32),
	T44(u32),
	T45(u32),
	T46(u32),
	T47(u32),
	T48(u32),
	T49(u32),
	T50(u32),
	T51(u32),
	T52(u32),
	T53(u32),
	T54(u32),
	T55(u32),
	T56(u32),
	T57(u32),
	T58(u32),
	T59(u32),
	T60(u32),
	T61(u32),
	T62(u32),
	T63(u32),
	T64(u32),
	T65(u32),
	T66(u32),
	T67(u32),
	T68(u32),
	T69(u32),
	T70(u32),
	T71(u32),
	T72(u32),
	T73(u32),
	T74(u32),
	T75(u32),
	T76(u32),
	T77(u32),
	T78(u32),
	T79(u32),
	T80(u32),
	T81(u32),
	T82(u32),
	T83(u32),
	T84(u32),
	T85(u32),
	T86(u32),
	T87(u32),
	T88(u32),
	T89(u32),
	T90(u32),
	T91(u32),
	T92(u32),
	T93(u32),
	T94(u32),
	T95(u32),
	T96(u32),
	T97(u32),
	T98(u32),
	T99(u32),
	T100(u32),
	T101(u32),
	T102(u32),
	T103(u32),
	T104(u32),
	T105(u32),
	T106(u32),
	T107(u32),
	T108(u32),
	T109(u32),
	T110(u32),
	T111(u32),
	T112(u32),
	T113(u32),
	T114(u32),
	T115(u32),
	T116(u32),
	T117(u32),
	T118(u32),
	T119(u32),
	T120(u32),
	T121(u32),
	T122(u32),
	T123(u32),
	T124(u32),
	T125(u32),
	T126(u32),
	T127(u32),
	T128(u32),
	T129(u32),
	T130(u32),
	T131(u32),
	T132(u32),
	T133(u32),
	T134(u32),
	T135(u32),
	T136(u32),
	T137(u32),
	T138(u32),
	T139(u32),
	T140(u32),
	T141(u32),
	T142(u32),
	T143(u32),
	T144(u32),
	T145(u32),
	T146(u32),
	T147(u32),
	T148(u32),
	T149(u32),
	T150(u32),
	T151(u32),
	T152(u32),
	T153(u32),
	T154(u32),
	T155(u32),
	T156(u32),
	T157(u32),
	T158(u32),
	T159(u32),
	T160(u32),
	T161(u32),
	T162(u32),
	T163(u32),
	T164(u32),
	T165(u32),
	T166(u32),
	T167(u32),
	T168(u32),
	T169(u32),
	T170(u32),
	T171(u32),
	T172(u32),
	T173(u32),
	T174(u32),
	T175(u32),
	T176(u32),
	T177(u32),
	T178(u32),
	T179(u32),
	T180(u32),
	T181(u32),
	T182(u32),
	T183(u32),
	T184(u32),
	T185(u32),
	T186(u32),
	T187(u32),
	T188(u32),
	T189(u32),
	T190(u32),
	T191(u32),
	T192(u32),
	T193(u32),
	T194(u32),
	T195(u32),
	T196(u32),
	T197(u32),
	T198(u32),
	T199(u32),
	T200(u32),
	T201(u32),
	T202(u32),
	T203(u32),
	T204(u32),
	T205(u32),
	T206(u32),
	T207(u32),
	T208(u32),
	T209(u32),
	T210(u32),
	T211(u32),
	T212(u32),
	T213(u32),
	T214(u32),
	T215(u32),
	T216(u32),
	T217(u32),
	T218(u32),
	T219(u32),
	T220(u32),
	T221(u32),
	T222(u32),
	T223(u32),
	T224(u32),
	T225(u32),
	T226(u32),
	T227(u32),
	T228(u32),
	T229(u32),
	T230(u32),
	T231(u32),
	T232(u32),
	T233(u32),
	T234(u32),
	T235(u32),
	T236(u32),
	T237(u32),
	T238(u32),
	T239(u32),
	T240(u32),
	T241(u32),
	T242(u32),
	T243(u32),
	T244(u32),
	T245(u32),
	T246(u32),
	T247(u32),
	T248(u32),
	T249(u32),
	T250(u32),
	T251(u32),
	T252(u32),
	T253(u32),
	// T254(u32),
	// T255(u32),
	// T256(u32),
}

#[derive(Encode)]
struct S {
	a: u16,
	b: u32,
}

#[test]
fn test_vec() {
	let a = Vec::<u32>::new();
	let a = a.encode();
	println!("{:?}", a);

	let a = Vec::<(u32, u32)>::new();
	let a = a.encode();
	println!("{:?}", a);
}

#[test]
fn test_codec() {
	let num = Number::U16(2);

	let result = num.encode();

	println!("{:?}", result);

	let num = Number::U32(2);

	let result = num.encode();

	println!("{:?}", result);

	let a: Vec<u8> = vec![1, 2, 3];

	let mut result = vec![0u8; 8];

	a.encode_to(&mut result);

	println!("{:?}", result);

	a.encode_to(&mut result);

	println!("{:?}", result);

	a.encode_to(&mut result);

	println!("{:?}", result);

	let a = S { a: 1, b: 1 };

	let result = a.encode();
	println!("{:?}", result);
}
