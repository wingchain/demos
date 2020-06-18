// The entry file of your WebAssembly module.

//@ts-ignore
@external("env", "input_read")
@global
declare function _input_read(ptr: u64): void;

//@ts-ignore
@external("env", "input_len")
@global
declare function _input_len() : u64;

//@ts-ignore
@external("env", "output_write")
@global
declare function _output_write(len: u64, ptr: u64): void;

import { JSONEncoder, JSON } from "assemblyscript-json";

// function stringToBytes(s: string): Uint8Array {
//   let len = String.UTF8.byteLength(s, true) - 1;
//   let bytes = new Uint8Array(len);
//   memory.copy(bytes.dataStart, toUTF8(s), len);
//   return bytes;
// }
//
// function toUTF8(str: string, nullTerminated: boolean = false): usize {
//   return changetype<usize>(String.UTF8.encode(str, nullTerminated));
// }

export function process(): void {
  const len = _input_len();
  const value = new Uint8Array(len as i32);
  //@ts-ignore
  _input_read(value.dataStart);
  //@ts-ignore
  let jsonObj: JSON.Obj = <JSON.Obj>JSON.parse(value);

  jsonObj.set("foo", new JSON.Num((<JSON.Num>jsonObj.get("foo"))._num+1));

  let bar = <JSON.Arr>jsonObj.get("bar");
  bar.push(new JSON.Num(5));
  jsonObj.set("bar", bar);

  let json = Uint8Array.wrap(String.UTF8.encode(jsonObj.toString(), false));

   //@ts-ignore
  _output_write(json.length, json.dataStart);
}
