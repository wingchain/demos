(module
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (type $i32_=>_none (func (param i32)))
 (type $i32_i32_i32_=>_none (func (param i32 i32 i32)))
 (type $none_=>_none (func))
 (type $none_=>_i32 (func (result i32)))
 (type $i64_=>_i32 (func (param i64) (result i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i64_=>_none (func (param i64)))
 (type $i64_i64_=>_none (func (param i64 i64)))
 (type $none_=>_i64 (func (result i64)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (import "env" "input_len" (func $assembly/index/_input_len (result i64)))
 (import "env" "input_read" (func $assembly/index/_input_read (param i64)))
 (import "env" "output_write" (func $assembly/index/_output_write (param i64 i64)))
 (memory $0 1)
 (data (i32.const 1024) "\1e\00\00\00\01\00\00\00\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s")
 (data (i32.const 1072) "(\00\00\00\01\00\00\00\01\00\00\00(\00\00\00a\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e")
 (data (i32.const 1136) "\1e\00\00\00\01\00\00\00\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00p\00u\00r\00e\00.\00t\00s")
 (data (i32.const 1184) "\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\00t\00r\00u\00e")
 (data (i32.const 1216) "\n\00\00\00\01\00\00\00\01\00\00\00\n\00\00\00f\00a\00l\00s\00e")
 (data (i32.const 1248) "\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\00n\00u\00l\00l")
 (data (i32.const 1280) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\000")
 (data (i32.const 1312) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\009")
 (data (i32.const 1344) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00A")
 (data (i32.const 1376) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00a")
 (data (i32.const 1408) "\1c\00\00\00\01\00\00\00\01\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h")
 (data (i32.const 1456) "\1a\00\00\00\01\00\00\00\01\00\00\00\1a\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s")
 (data (i32.const 1504) "&\00\00\00\01\00\00\00\01\00\00\00&\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s")
 (data (i32.const 1572) "\01\00\00\00\01")
 (data (i32.const 1584) "$\00\00\00\01\00\00\00\01\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e")
 (data (i32.const 1648) "$\00\00\00\01\00\00\00\01\00\00\00$\00\00\00~\00l\00i\00b\00/\00t\00y\00p\00e\00d\00a\00r\00r\00a\00y\00.\00t\00s")
 (data (i32.const 1712) "(\00\00\00\01\00\00\00\01\00\00\00(\00\00\00U\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00i\00n\00p\00u\00t\00 \00e\00n\00d")
 (data (i32.const 1776) "F\00\00\00\01\00\00\00\01\00\00\00F\00\00\00~\00l\00i\00b\00/\00a\00s\00s\00e\00m\00b\00l\00y\00s\00c\00r\00i\00p\00t\00-\00j\00s\00o\00n\00/\00d\00e\00c\00o\00d\00e\00r\00.\00t\00s")
 (data (i32.const 1872) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00{")
 (data (i32.const 1904) "^\00\00\00\01\00\00\00\01\00\00\00^\00\00\00E\00l\00e\00m\00e\00n\00t\00 \00t\00y\00p\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00n\00u\00l\00l\00a\00b\00l\00e\00 \00i\00f\00 \00a\00r\00r\00a\00y\00 \00i\00s\00 \00h\00o\00l\00e\00y")
 (data (i32.const 2016) "@\00\00\00\01\00\00\00\01\00\00\00@\00\00\00~\00l\00i\00b\00/\00a\00s\00s\00e\00m\00b\00l\00y\00s\00c\00r\00i\00p\00t\00-\00j\00s\00o\00n\00/\00J\00S\00O\00N\00.\00t\00s")
 (data (i32.const 2096) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00}")
 (data (i32.const 2128) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00,")
 (data (i32.const 2160) "\18\00\00\00\01\00\00\00\01\00\00\00\18\00\00\00E\00x\00p\00e\00c\00t\00e\00d\00 \00\'\00,\00\'")
 (data (i32.const 2208) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00\"")
 (data (i32.const 2240) ":\00\00\00\01\00\00\00\01\00\00\00:\00\00\00E\00x\00p\00e\00c\00t\00e\00d\00 \00d\00o\00u\00b\00l\00e\00-\00q\00u\00o\00t\00e\00d\00 \00s\00t\00r\00i\00n\00g")
 (data (i32.const 2320) "8\00\00\00\01\00\00\00\01\00\00\008\00\00\00U\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00c\00o\00n\00t\00r\00o\00l\00 \00c\00h\00a\00r\00a\00c\00t\00e\00r")
 (data (i32.const 2400) "\1c\00\00\00\01\00\00\00\01\00\00\00\1c\00\00\00~\00l\00i\00b\00/\00s\00t\00r\00i\00n\00g\00.\00t\00s")
 (data (i32.const 2448) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00\\")
 (data (i32.const 2480) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00/")
 (data (i32.const 2512) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00b")
 (data (i32.const 2544) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00\08")
 (data (i32.const 2576) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00n")
 (data (i32.const 2608) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00\n")
 (data (i32.const 2640) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00r")
 (data (i32.const 2672) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00\0d")
 (data (i32.const 2704) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00t")
 (data (i32.const 2736) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00\t")
 (data (i32.const 2768) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00u")
 (data (i32.const 2800) "&\00\00\00\01\00\00\00\01\00\00\00&\00\00\00U\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00\\\00u\00 \00d\00i\00g\00i\00t")
 (data (i32.const 2864) "<\00\00\00\01\00\00\00\01\00\00\00<\00\00\00U\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00e\00s\00c\00a\00p\00e\00d\00 \00c\00h\00a\00r\00a\00c\00t\00e\00r\00:\00 ")
 (data (i32.const 2944) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00:")
 (data (i32.const 2976) "\18\00\00\00\01\00\00\00\01\00\00\00\18\00\00\00E\00x\00p\00e\00c\00t\00e\00d\00 \00\'\00:\00\'")
 (data (i32.const 3024) "0\00\00\00\01\00\00\00\01\00\00\000\00\00\00U\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00e\00n\00d\00 \00o\00f\00 \00o\00b\00j\00e\00c\00t")
 (data (i32.const 3088) "\1c\00\00\00\01\00\00\00\01\00\00\00\1c\00\00\00A\00r\00r\00a\00y\00 \00i\00s\00 \00e\00m\00p\00t\00y")
 (data (i32.const 3136) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00[")
 (data (i32.const 3168) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00]")
 (data (i32.const 3200) ".\00\00\00\01\00\00\00\01\00\00\00.\00\00\00U\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00e\00n\00d\00 \00o\00f\00 \00a\00r\00r\00a\00y")
 (data (i32.const 3264) "\14\00\00\00\01\00\00\00\01\00\00\00\14\00\00\00E\00x\00p\00e\00c\00t\00e\00d\00 \00\'")
 (data (i32.const 3312) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00\'")
 (data (i32.const 3344) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00-")
 (data (i32.const 3376) "\"\00\00\00\01\00\00\00\01\00\00\00\"\00\00\00C\00a\00n\00n\00o\00t\00 \00p\00a\00r\00s\00e\00 \00J\00S\00O\00N")
 (data (i32.const 3440) "\"\00\00\00\01\00\00\00\01\00\00\00\"\00\00\00a\00s\00s\00e\00m\00b\00l\00y\00/\00i\00n\00d\00e\00x\00.\00t\00s")
 (data (i32.const 3504) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00f\00o\00o")
 (data (i32.const 3536) "$\00\00\00\01\00\00\00\01\00\00\00$\00\00\00K\00e\00y\00 \00d\00o\00e\00s\00 \00n\00o\00t\00 \00e\00x\00i\00s\00t")
 (data (i32.const 3600) "\16\00\00\00\01\00\00\00\01\00\00\00\16\00\00\00~\00l\00i\00b\00/\00m\00a\00p\00.\00t\00s")
 (data (i32.const 3648) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00b\00a\00r")
 (data (i32.const 3684) "\01")
 (data (i32.const 3696) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00\"\00:")
 (data (i32.const 3728) "d\00\00\00\01\00\00\00\01\00\00\00d\00\00\00t\00o\00S\00t\00r\00i\00n\00g\00(\00)\00 \00r\00a\00d\00i\00x\00 \00a\00r\00g\00u\00m\00e\00n\00t\00 \00m\00u\00s\00t\00 \00b\00e\00 \00b\00e\00t\00w\00e\00e\00n\00 \002\00 \00a\00n\00d\00 \003\006")
 (data (i32.const 3856) "&\00\00\00\01\00\00\00\01\00\00\00&\00\00\00~\00l\00i\00b\00/\00u\00t\00i\00l\00/\00n\00u\00m\00b\00e\00r\00.\00t\00s")
 (data (i32.const 3920) "H\00\00\00\01\00\00\00\01\00\00\00H\00\00\000\001\002\003\004\005\006\007\008\009\00a\00b\00c\00d\00e\00f\00g\00h\00i\00j\00k\00l\00m\00n\00o\00p\00q\00r\00s\00t\00u\00v\00w\00x\00y\00z")
 (data (i32.const 4016) "\18\00\00\00\01\00\00\00\01\00\00\00\18\00\00\00N\00o\00t\00 \00a\00 \00v\00a\00l\00u\00e\00.")
 (data (i32.const 4064) "\12\00\00\00 \00\00\00\00\00\00\00 \00\00\00\00\00\00\00 \00\00\00\00\00\00\00 \00\00\00\00\00\00\00 \00\00\00\00\00\00\00\"A\00\00\00\00\00\00 \00\00\00\00\00\00\00 \00\00\00\00\00\00\00a\00\00\00\02\00\00\00 \00\00\00\04\00\00\000A\82\00\00\00\00\00\"A\00\00\00\00\00\00 \00\00\00\04\00\00\00\"\t\00\00\00\00\00\00 \00\00\00\04\00\00\00 \00\00\00\04\00\00\00 \00\00\00\04\00\00\00 \00\00\00\04")
 (global $~lib/rt/tlsf/ROOT (mut i32) (i32.const 0))
 (global $~lib/rt/tlsf/collectLock (mut i32) (i32.const 0))
 (global $~lib/assemblyscript-json/decoder/CHAR_0 (mut i32) (i32.const 0))
 (global $~lib/assemblyscript-json/decoder/CHAR_9 (mut i32) (i32.const 0))
 (global $~lib/assemblyscript-json/decoder/CHAR_A (mut i32) (i32.const 0))
 (global $~lib/assemblyscript-json/decoder/CHAR_A_LOWER (mut i32) (i32.const 0))
 (global $~lib/assemblyscript-json/JSON/_JSON.handler (mut i32) (i32.const 0))
 (global $~lib/assemblyscript-json/JSON/_JSON.decoder (mut i32) (i32.const 0))
 (global $~argumentsLength (mut i32) (i32.const 0))
 (global $~lib/rt/__rtti_base i32 (i32.const 4064))
 (export "memory" (memory $0))
 (export "__alloc" (func $~lib/rt/tlsf/__alloc))
 (export "__retain" (func $~lib/rt/pure/__retain))
 (export "__release" (func $~lib/rt/pure/__release))
 (export "__collect" (func $~lib/rt/pure/__collect))
 (export "__rtti_base" (global $~lib/rt/__rtti_base))
 (export "process" (func $assembly/index/process))
 (start $~start)
 (func $~lib/rt/tlsf/removeBlock (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $1
  i32.load
  local.tee $2
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1040
   i32.const 277
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const -4
  i32.and
  local.tee $2
  i32.const 16
  i32.ge_u
  if (result i32)
   local.get $2
   i32.const 1073741808
   i32.lt_u
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 1040
   i32.const 279
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 256
  i32.lt_u
  if
   local.get $2
   i32.const 4
   i32.shr_u
   local.set $2
  else
   local.get $2
   i32.const 31
   local.get $2
   i32.clz
   i32.sub
   local.tee $4
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
   local.set $2
   local.get $4
   i32.const 7
   i32.sub
   local.set $4
  end
  local.get $2
  i32.const 16
  i32.lt_u
  i32.const 0
  local.get $4
  i32.const 23
  i32.lt_u
  select
  i32.eqz
  if
   i32.const 0
   i32.const 1040
   i32.const 292
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load offset=20
  local.set $3
  local.get $1
  i32.load offset=16
  local.tee $5
  if
   local.get $5
   local.get $3
   i32.store offset=20
  end
  local.get $3
  if
   local.get $3
   local.get $5
   i32.store offset=16
  end
  local.get $1
  local.get $0
  local.get $2
  local.get $4
  i32.const 4
  i32.shl
  i32.add
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=96
  i32.eq
  if
   local.get $0
   local.get $2
   local.get $4
   i32.const 4
   i32.shl
   i32.add
   i32.const 2
   i32.shl
   i32.add
   local.get $3
   i32.store offset=96
   local.get $3
   i32.eqz
   if
    local.get $0
    local.get $4
    i32.const 2
    i32.shl
    i32.add
    local.tee $3
    i32.load offset=4
    i32.const 1
    local.get $2
    i32.shl
    i32.const -1
    i32.xor
    i32.and
    local.set $1
    local.get $3
    local.get $1
    i32.store offset=4
    local.get $1
    i32.eqz
    if
     local.get $0
     local.get $0
     i32.load
     i32.const 1
     local.get $4
     i32.shl
     i32.const -1
     i32.xor
     i32.and
     i32.store
    end
   end
  end
 )
 (func $~lib/rt/tlsf/insertBlock (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $1
  i32.eqz
  if
   i32.const 0
   i32.const 1040
   i32.const 205
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load
  local.tee $3
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1040
   i32.const 207
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 16
  i32.add
  local.get $1
  i32.load
  i32.const -4
  i32.and
  i32.add
  local.tee $4
  i32.load
  local.tee $5
  i32.const 1
  i32.and
  if
   local.get $3
   i32.const -4
   i32.and
   i32.const 16
   i32.add
   local.get $5
   i32.const -4
   i32.and
   i32.add
   local.tee $2
   i32.const 1073741808
   i32.lt_u
   if
    local.get $0
    local.get $4
    call $~lib/rt/tlsf/removeBlock
    local.get $1
    local.get $2
    local.get $3
    i32.const 3
    i32.and
    i32.or
    local.tee $3
    i32.store
    local.get $1
    i32.const 16
    i32.add
    local.get $1
    i32.load
    i32.const -4
    i32.and
    i32.add
    local.tee $4
    i32.load
    local.set $5
   end
  end
  local.get $3
  i32.const 2
  i32.and
  if
   local.get $1
   i32.const 4
   i32.sub
   i32.load
   local.tee $2
   i32.load
   local.tee $7
   i32.const 1
   i32.and
   i32.eqz
   if
    i32.const 0
    i32.const 1040
    i32.const 228
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
   local.get $7
   i32.const -4
   i32.and
   i32.const 16
   i32.add
   local.get $3
   i32.const -4
   i32.and
   i32.add
   local.tee $8
   i32.const 1073741808
   i32.lt_u
   if
    local.get $0
    local.get $2
    call $~lib/rt/tlsf/removeBlock
    local.get $2
    local.get $8
    local.get $7
    i32.const 3
    i32.and
    i32.or
    local.tee $3
    i32.store
    local.get $2
    local.set $1
   end
  end
  local.get $4
  local.get $5
  i32.const 2
  i32.or
  i32.store
  local.get $3
  i32.const -4
  i32.and
  local.tee $2
  i32.const 16
  i32.ge_u
  if (result i32)
   local.get $2
   i32.const 1073741808
   i32.lt_u
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 1040
   i32.const 243
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  local.get $1
  i32.const 16
  i32.add
  i32.add
  local.get $4
  i32.ne
  if
   i32.const 0
   i32.const 1040
   i32.const 244
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  i32.const 4
  i32.sub
  local.get $1
  i32.store
  local.get $2
  i32.const 256
  i32.lt_u
  if
   local.get $2
   i32.const 4
   i32.shr_u
   local.set $2
  else
   local.get $2
   i32.const 31
   local.get $2
   i32.clz
   i32.sub
   local.tee $3
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
   local.set $2
   local.get $3
   i32.const 7
   i32.sub
   local.set $6
  end
  local.get $2
  i32.const 16
  i32.lt_u
  i32.const 0
  local.get $6
  i32.const 23
  i32.lt_u
  select
  i32.eqz
  if
   i32.const 0
   i32.const 1040
   i32.const 260
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $2
  local.get $6
  i32.const 4
  i32.shl
  i32.add
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=96
  local.set $3
  local.get $1
  i32.const 0
  i32.store offset=16
  local.get $1
  local.get $3
  i32.store offset=20
  local.get $3
  if
   local.get $3
   local.get $1
   i32.store offset=16
  end
  local.get $0
  local.get $2
  local.get $6
  i32.const 4
  i32.shl
  i32.add
  i32.const 2
  i32.shl
  i32.add
  local.get $1
  i32.store offset=96
  local.get $0
  local.get $0
  i32.load
  i32.const 1
  local.get $6
  i32.shl
  i32.or
  i32.store
  local.get $0
  local.get $6
  i32.const 2
  i32.shl
  i32.add
  local.tee $0
  local.get $0
  i32.load offset=4
  i32.const 1
  local.get $2
  i32.shl
  i32.or
  i32.store offset=4
 )
 (func $~lib/rt/tlsf/addMemory (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $2
  i32.const 15
  i32.and
  i32.eqz
  i32.const 0
  local.get $1
  i32.const 15
  i32.and
  i32.eqz
  i32.const 0
  local.get $1
  local.get $2
  i32.le_u
  select
  select
  i32.eqz
  if
   i32.const 0
   i32.const 1040
   i32.const 386
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=1568
  local.tee $3
  if
   local.get $1
   local.get $3
   i32.const 16
   i32.add
   i32.lt_u
   if
    i32.const 0
    i32.const 1040
    i32.const 396
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
   local.get $3
   local.get $1
   i32.const 16
   i32.sub
   i32.eq
   if
    local.get $3
    i32.load
    local.set $4
    local.get $1
    i32.const 16
    i32.sub
    local.set $1
   end
  else
   local.get $1
   local.get $0
   i32.const 1572
   i32.add
   i32.lt_u
   if
    i32.const 0
    i32.const 1040
    i32.const 408
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $2
  local.get $1
  i32.sub
  local.tee $2
  i32.const 48
  i32.lt_u
  if
   return
  end
  local.get $1
  local.get $4
  i32.const 2
  i32.and
  local.get $2
  i32.const 32
  i32.sub
  i32.const 1
  i32.or
  i32.or
  i32.store
  local.get $1
  i32.const 0
  i32.store offset=16
  local.get $1
  i32.const 0
  i32.store offset=20
  local.get $1
  local.get $2
  i32.add
  i32.const 16
  i32.sub
  local.tee $2
  i32.const 2
  i32.store
  local.get $0
  local.get $2
  i32.store offset=1568
  local.get $0
  local.get $1
  call $~lib/rt/tlsf/insertBlock
 )
 (func $~lib/rt/tlsf/maybeInitialize (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/rt/tlsf/ROOT
  local.tee $0
  i32.eqz
  if
   i32.const 1
   memory.size
   local.tee $0
   i32.gt_s
   if (result i32)
    i32.const 1
    local.get $0
    i32.sub
    memory.grow
    i32.const 0
    i32.lt_s
   else
    i32.const 0
   end
   if
    unreachable
   end
   i32.const 4224
   local.tee $0
   i32.const 0
   i32.store
   i32.const 5792
   i32.const 0
   i32.store
   loop $for-loop|0
    local.get $1
    i32.const 23
    i32.lt_u
    if
     local.get $1
     i32.const 2
     i32.shl
     i32.const 4224
     i32.add
     i32.const 0
     i32.store offset=4
     i32.const 0
     local.set $2
     loop $for-loop|1
      local.get $2
      i32.const 16
      i32.lt_u
      if
       local.get $1
       i32.const 4
       i32.shl
       local.get $2
       i32.add
       i32.const 2
       i32.shl
       i32.const 4224
       i32.add
       i32.const 0
       i32.store offset=96
       local.get $2
       i32.const 1
       i32.add
       local.set $2
       br $for-loop|1
      end
     end
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     br $for-loop|0
    end
   end
   i32.const 4224
   i32.const 5808
   memory.size
   i32.const 16
   i32.shl
   call $~lib/rt/tlsf/addMemory
   i32.const 4224
   global.set $~lib/rt/tlsf/ROOT
  end
  local.get $0
 )
 (func $~lib/rt/tlsf/prepareSize (param $0 i32) (result i32)
  local.get $0
  i32.const 1073741808
  i32.ge_u
  if
   i32.const 1088
   i32.const 1040
   i32.const 461
   i32.const 30
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 15
  i32.add
  i32.const -16
  i32.and
  local.tee $0
  i32.const 16
  local.get $0
  i32.const 16
  i32.gt_u
  select
 )
 (func $~lib/rt/tlsf/searchBlock (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  i32.const 256
  i32.lt_u
  if
   local.get $1
   i32.const 4
   i32.shr_u
   local.set $1
  else
   local.get $1
   i32.const 536870904
   i32.lt_u
   if
    local.get $1
    i32.const 1
    i32.const 27
    local.get $1
    i32.clz
    i32.sub
    i32.shl
    i32.add
    i32.const 1
    i32.sub
    local.set $1
   end
   local.get $1
   i32.const 31
   local.get $1
   i32.clz
   i32.sub
   local.tee $2
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
   local.set $1
   local.get $2
   i32.const 7
   i32.sub
   local.set $2
  end
  local.get $1
  i32.const 16
  i32.lt_u
  i32.const 0
  local.get $2
  i32.const 23
  i32.lt_u
  select
  i32.eqz
  if
   i32.const 0
   i32.const 1040
   i32.const 338
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $2
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=4
  i32.const -1
  local.get $1
  i32.shl
  i32.and
  local.tee $1
  if (result i32)
   local.get $0
   local.get $1
   i32.ctz
   local.get $2
   i32.const 4
   i32.shl
   i32.add
   i32.const 2
   i32.shl
   i32.add
   i32.load offset=96
  else
   local.get $0
   i32.load
   i32.const -1
   local.get $2
   i32.const 1
   i32.add
   i32.shl
   i32.and
   local.tee $1
   if (result i32)
    local.get $0
    local.get $1
    i32.ctz
    local.tee $1
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=4
    local.tee $2
    i32.eqz
    if
     i32.const 0
     i32.const 1040
     i32.const 351
     i32.const 18
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $2
    i32.ctz
    local.get $1
    i32.const 4
    i32.shl
    i32.add
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=96
   else
    i32.const 0
   end
  end
 )
 (func $~lib/rt/tlsf/prepareBlock (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  i32.load
  local.set $3
  local.get $2
  i32.const 15
  i32.and
  if
   i32.const 0
   i32.const 1040
   i32.const 365
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const -4
  i32.and
  local.get $2
  i32.sub
  local.tee $4
  i32.const 32
  i32.ge_u
  if
   local.get $1
   local.get $2
   local.get $3
   i32.const 2
   i32.and
   i32.or
   i32.store
   local.get $2
   local.get $1
   i32.const 16
   i32.add
   i32.add
   local.tee $1
   local.get $4
   i32.const 16
   i32.sub
   i32.const 1
   i32.or
   i32.store
   local.get $0
   local.get $1
   call $~lib/rt/tlsf/insertBlock
  else
   local.get $1
   local.get $3
   i32.const -2
   i32.and
   i32.store
   local.get $1
   i32.const 16
   i32.add
   local.tee $0
   local.get $1
   i32.load
   i32.const -4
   i32.and
   i32.add
   local.get $0
   local.get $1
   i32.load
   i32.const -4
   i32.and
   i32.add
   i32.load
   i32.const -3
   i32.and
   i32.store
  end
 )
 (func $~lib/rt/tlsf/allocateBlock (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/rt/tlsf/collectLock
  if
   i32.const 0
   i32.const 1040
   i32.const 500
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/rt/tlsf/prepareSize
  local.tee $4
  call $~lib/rt/tlsf/searchBlock
  local.tee $3
  i32.eqz
  if
   i32.const 1
   global.set $~lib/rt/tlsf/collectLock
   i32.const 0
   global.set $~lib/rt/tlsf/collectLock
   local.get $0
   local.get $4
   call $~lib/rt/tlsf/searchBlock
   local.tee $3
   i32.eqz
   if
    i32.const 16
    memory.size
    local.tee $3
    i32.const 16
    i32.shl
    i32.const 16
    i32.sub
    local.get $0
    i32.load offset=1568
    i32.ne
    i32.shl
    local.get $4
    i32.const 1
    i32.const 27
    local.get $4
    i32.clz
    i32.sub
    i32.shl
    i32.const 1
    i32.sub
    i32.add
    local.get $4
    local.get $4
    i32.const 536870904
    i32.lt_u
    select
    i32.add
    i32.const 65535
    i32.add
    i32.const -65536
    i32.and
    i32.const 16
    i32.shr_u
    local.set $5
    local.get $3
    local.get $5
    local.get $3
    local.get $5
    i32.gt_s
    select
    memory.grow
    i32.const 0
    i32.lt_s
    if
     local.get $5
     memory.grow
     i32.const 0
     i32.lt_s
     if
      unreachable
     end
    end
    local.get $0
    local.get $3
    i32.const 16
    i32.shl
    memory.size
    i32.const 16
    i32.shl
    call $~lib/rt/tlsf/addMemory
    local.get $0
    local.get $4
    call $~lib/rt/tlsf/searchBlock
    local.tee $3
    i32.eqz
    if
     i32.const 0
     i32.const 1040
     i32.const 512
     i32.const 20
     call $~lib/builtins/abort
     unreachable
    end
   end
  end
  local.get $3
  i32.load
  i32.const -4
  i32.and
  local.get $4
  i32.lt_u
  if
   i32.const 0
   i32.const 1040
   i32.const 520
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 0
  i32.store offset=4
  local.get $3
  local.get $2
  i32.store offset=8
  local.get $3
  local.get $1
  i32.store offset=12
  local.get $0
  local.get $3
  call $~lib/rt/tlsf/removeBlock
  local.get $0
  local.get $3
  local.get $4
  call $~lib/rt/tlsf/prepareBlock
  local.get $3
 )
 (func $~lib/rt/tlsf/__alloc (param $0 i32) (param $1 i32) (result i32)
  call $~lib/rt/tlsf/maybeInitialize
  local.get $0
  local.get $1
  call $~lib/rt/tlsf/allocateBlock
  i32.const 16
  i32.add
 )
 (func $~lib/rt/pure/__retain (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.const 4212
  i32.gt_u
  if
   local.get $0
   i32.const 16
   i32.sub
   local.tee $1
   i32.load offset=4
   local.tee $2
   i32.const -268435456
   i32.and
   local.get $2
   i32.const 1
   i32.add
   i32.const -268435456
   i32.and
   i32.ne
   if
    i32.const 0
    i32.const 1152
    i32.const 109
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   local.get $2
   i32.const 1
   i32.add
   i32.store offset=4
   local.get $1
   i32.load
   i32.const 1
   i32.and
   if
    i32.const 0
    i32.const 1152
    i32.const 112
    i32.const 14
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $0
 )
 (func $~lib/rt/pure/__release (param $0 i32)
  local.get $0
  i32.const 4212
  i32.gt_u
  if
   local.get $0
   i32.const 16
   i32.sub
   call $~lib/rt/pure/decrement
  end
 )
 (func $~lib/string/String#get:length (param $0 i32) (result i32)
  local.get $0
  i32.const 16
  i32.sub
  i32.load offset=12
  i32.const 1
  i32.shr_u
 )
 (func $~lib/string/String#charCodeAt (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  call $~lib/string/String#get:length
  i32.ge_u
  if
   i32.const -1
   return
  end
  local.get $0
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  i32.load16_u
 )
 (func $~lib/memory/memory.fill (param $0 i32) (param $1 i32)
  (local $2 i32)
  block $~lib/util/memory/memset|inlined.0
   local.get $1
   i32.eqz
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 0
   i32.store8
   local.get $0
   local.get $1
   i32.add
   i32.const 4
   i32.sub
   local.tee $2
   i32.const 0
   i32.store8 offset=3
   local.get $1
   i32.const 2
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 0
   i32.store8 offset=1
   local.get $0
   i32.const 0
   i32.store8 offset=2
   local.get $2
   i32.const 0
   i32.store8 offset=2
   local.get $2
   i32.const 0
   i32.store8 offset=1
   local.get $1
   i32.const 6
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 0
   i32.store8 offset=3
   local.get $2
   i32.const 0
   i32.store8
   local.get $1
   i32.const 8
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 0
   local.get $0
   i32.sub
   i32.const 3
   i32.and
   local.tee $2
   i32.add
   local.tee $0
   i32.const 0
   i32.store
   local.get $0
   local.get $1
   local.get $2
   i32.sub
   i32.const -4
   i32.and
   local.tee $2
   i32.add
   i32.const 28
   i32.sub
   local.tee $1
   i32.const 0
   i32.store offset=24
   local.get $2
   i32.const 8
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 0
   i32.store offset=4
   local.get $0
   i32.const 0
   i32.store offset=8
   local.get $1
   i32.const 0
   i32.store offset=16
   local.get $1
   i32.const 0
   i32.store offset=20
   local.get $2
   i32.const 24
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 0
   i32.store offset=12
   local.get $0
   i32.const 0
   i32.store offset=16
   local.get $0
   i32.const 0
   i32.store offset=20
   local.get $0
   i32.const 0
   i32.store offset=24
   local.get $1
   i32.const 0
   i32.store
   local.get $1
   i32.const 0
   i32.store offset=4
   local.get $1
   i32.const 0
   i32.store offset=8
   local.get $1
   i32.const 0
   i32.store offset=12
   local.get $0
   local.get $0
   i32.const 4
   i32.and
   i32.const 24
   i32.add
   local.tee $1
   i32.add
   local.set $0
   local.get $2
   local.get $1
   i32.sub
   local.set $1
   loop $while-continue|0
    local.get $1
    i32.const 32
    i32.ge_u
    if
     local.get $0
     i64.const 0
     i64.store
     local.get $0
     i64.const 0
     i64.store offset=8
     local.get $0
     i64.const 0
     i64.store offset=16
     local.get $0
     i64.const 0
     i64.store offset=24
     local.get $1
     i32.const 32
     i32.sub
     local.set $1
     local.get $0
     i32.const 32
     i32.add
     local.set $0
     br $while-continue|0
    end
   end
  end
 )
 (func $~lib/array/Array<~lib/assemblyscript-json/JSON/JSON.Value>#constructor (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 16
  i32.const 5
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.tee $2
  i32.const 0
  i32.store
  local.get $2
  i32.const 0
  i32.store offset=4
  local.get $2
  i32.const 0
  i32.store offset=8
  local.get $2
  i32.const 0
  i32.store offset=12
  i32.const 0
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.tee $0
  i32.const 0
  call $~lib/memory/memory.fill
  local.get $0
  local.set $1
  local.get $0
  local.get $2
  i32.load
  local.tee $3
  i32.ne
  if
   local.get $1
   call $~lib/rt/pure/__retain
   local.set $1
   local.get $3
   call $~lib/rt/pure/__release
  end
  local.get $2
  local.get $1
  i32.store
  local.get $2
  local.get $0
  i32.store offset=4
  local.get $2
  i32.const 0
  i32.store offset=8
  local.get $2
  i32.const 0
  i32.store offset=12
  local.get $2
 )
 (func $~lib/typedarray/Uint8Array#__get (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.ge_u
  if
   i32.const 1600
   i32.const 1664
   i32.const 152
   i32.const 45
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $0
  i32.load offset=4
  i32.add
  i32.load8_u
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#peekChar (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
  i32.load offset=4
  local.get $0
  i32.load offset=4
  i32.load offset=8
  i32.load offset=8
  i32.ge_s
  if
   i32.const -1
   return
  end
  local.get $0
  i32.load offset=4
  i32.load offset=8
  local.get $0
  i32.load offset=4
  i32.load offset=4
  call $~lib/typedarray/Uint8Array#__get
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readChar (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.load offset=4
  i32.load offset=4
  local.get $0
  i32.load offset=4
  i32.load offset=8
  i32.load offset=8
  i32.ge_s
  if
   i32.const 1728
   i32.const 1792
   i32.const 112
   i32.const 9
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.load offset=8
  local.get $0
  i32.load offset=4
  local.get $0
  i32.load offset=4
  i32.load offset=4
  local.tee $0
  i32.const 1
  i32.add
  i32.store offset=4
  local.get $0
  call $~lib/typedarray/Uint8Array#__get
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#skipWhitespace (param $0 i32)
  (local $1 i32)
  loop $while-continue|0
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#peekChar
   local.tee $1
   i32.const 9
   i32.eq
   if (result i32)
    i32.const 1
   else
    local.get $1
    i32.const 10
    i32.eq
   end
   if (result i32)
    i32.const 1
   else
    local.get $1
    i32.const 13
    i32.eq
   end
   if (result i32)
    i32.const 1
   else
    local.get $1
    i32.const 32
    i32.eq
   end
   if
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readChar
    drop
    br $while-continue|0
   end
  end
 )
 (func $~lib/assemblyscript-json/JSON/JSON.Value#constructor (param $0 i32) (result i32)
  local.get $0
  if (result i32)
   local.get $0
  else
   i32.const 0
   i32.const 4
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
  end
 )
 (func $~lib/arraybuffer/ArrayBuffer#constructor (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.const 1073741808
  i32.gt_u
  if
   i32.const 1424
   i32.const 1520
   i32.const 49
   i32.const 43
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.tee $1
  local.get $0
  call $~lib/memory/memory.fill
  local.get $1
  call $~lib/rt/pure/__retain
  local.tee $0
 )
 (func $~lib/array/Array<~lib/string/String>#constructor (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 16
  i32.const 11
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.tee $2
  i32.const 0
  i32.store
  local.get $2
  i32.const 0
  i32.store offset=4
  local.get $2
  i32.const 0
  i32.store offset=8
  local.get $2
  i32.const 0
  i32.store offset=12
  i32.const 0
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.tee $0
  i32.const 0
  call $~lib/memory/memory.fill
  local.get $0
  local.set $1
  local.get $0
  local.get $2
  i32.load
  local.tee $3
  i32.ne
  if
   local.get $1
   call $~lib/rt/pure/__retain
   local.set $1
   local.get $3
   call $~lib/rt/pure/__release
  end
  local.get $2
  local.get $1
  i32.store
  local.get $2
  local.get $0
  i32.store offset=4
  local.get $2
  i32.const 0
  i32.store offset=8
  local.get $2
  i32.const 0
  i32.store offset=12
  local.get $2
 )
 (func $~lib/memory/memory.copy (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  block $~lib/util/memory/memmove|inlined.0
   local.get $2
   local.set $4
   local.get $0
   local.get $1
   i32.eq
   br_if $~lib/util/memory/memmove|inlined.0
   local.get $0
   local.get $1
   i32.lt_u
   if
    local.get $1
    i32.const 7
    i32.and
    local.get $0
    i32.const 7
    i32.and
    i32.eq
    if
     loop $while-continue|0
      local.get $0
      i32.const 7
      i32.and
      if
       local.get $4
       i32.eqz
       br_if $~lib/util/memory/memmove|inlined.0
       local.get $4
       i32.const 1
       i32.sub
       local.set $4
       local.get $0
       local.tee $2
       i32.const 1
       i32.add
       local.set $0
       local.get $1
       local.tee $3
       i32.const 1
       i32.add
       local.set $1
       local.get $2
       local.get $3
       i32.load8_u
       i32.store8
       br $while-continue|0
      end
     end
     loop $while-continue|1
      local.get $4
      i32.const 8
      i32.ge_u
      if
       local.get $0
       local.get $1
       i64.load
       i64.store
       local.get $4
       i32.const 8
       i32.sub
       local.set $4
       local.get $0
       i32.const 8
       i32.add
       local.set $0
       local.get $1
       i32.const 8
       i32.add
       local.set $1
       br $while-continue|1
      end
     end
    end
    loop $while-continue|2
     local.get $4
     if
      local.get $0
      local.tee $2
      i32.const 1
      i32.add
      local.set $0
      local.get $1
      local.tee $3
      i32.const 1
      i32.add
      local.set $1
      local.get $2
      local.get $3
      i32.load8_u
      i32.store8
      local.get $4
      i32.const 1
      i32.sub
      local.set $4
      br $while-continue|2
     end
    end
   else
    local.get $1
    i32.const 7
    i32.and
    local.get $0
    i32.const 7
    i32.and
    i32.eq
    if
     loop $while-continue|3
      local.get $0
      local.get $4
      i32.add
      i32.const 7
      i32.and
      if
       local.get $4
       i32.eqz
       br_if $~lib/util/memory/memmove|inlined.0
       local.get $4
       i32.const 1
       i32.sub
       local.tee $4
       local.get $0
       i32.add
       local.get $1
       local.get $4
       i32.add
       i32.load8_u
       i32.store8
       br $while-continue|3
      end
     end
     loop $while-continue|4
      local.get $4
      i32.const 8
      i32.ge_u
      if
       local.get $4
       i32.const 8
       i32.sub
       local.tee $4
       local.get $0
       i32.add
       local.get $1
       local.get $4
       i32.add
       i64.load
       i64.store
       br $while-continue|4
      end
     end
    end
    loop $while-continue|5
     local.get $4
     if
      local.get $4
      i32.const 1
      i32.sub
      local.tee $4
      local.get $0
      i32.add
      local.get $1
      local.get $4
      i32.add
      i32.load8_u
      i32.store8
      br $while-continue|5
     end
    end
   end
  end
 )
 (func $~lib/rt/tlsf/freeBlock (param $0 i32) (param $1 i32)
  local.get $1
  local.get $1
  i32.load
  i32.const 1
  i32.or
  i32.store
  local.get $0
  local.get $1
  call $~lib/rt/tlsf/insertBlock
 )
 (func $~lib/rt/tlsf/reallocateBlock (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $2
  call $~lib/rt/tlsf/prepareSize
  local.tee $3
  local.get $1
  i32.load
  local.tee $5
  i32.const -4
  i32.and
  i32.le_u
  if
   local.get $0
   local.get $1
   local.get $3
   call $~lib/rt/tlsf/prepareBlock
   local.get $1
   local.get $2
   i32.store offset=12
   local.get $1
   return
  end
  local.get $1
  i32.const 16
  i32.add
  local.get $1
  i32.load
  i32.const -4
  i32.and
  i32.add
  local.tee $6
  i32.load
  local.tee $4
  i32.const 1
  i32.and
  if
   local.get $5
   i32.const -4
   i32.and
   i32.const 16
   i32.add
   local.get $4
   i32.const -4
   i32.and
   i32.add
   local.tee $4
   local.get $3
   i32.ge_u
   if
    local.get $0
    local.get $6
    call $~lib/rt/tlsf/removeBlock
    local.get $1
    local.get $5
    i32.const 3
    i32.and
    local.get $4
    i32.or
    i32.store
    local.get $1
    local.get $2
    i32.store offset=12
    local.get $0
    local.get $1
    local.get $3
    call $~lib/rt/tlsf/prepareBlock
    local.get $1
    return
   end
  end
  local.get $0
  local.get $2
  local.get $1
  i32.load offset=8
  call $~lib/rt/tlsf/allocateBlock
  local.tee $3
  local.get $1
  i32.load offset=4
  i32.store offset=4
  local.get $3
  i32.const 16
  i32.add
  local.get $1
  i32.const 16
  i32.add
  local.get $2
  call $~lib/memory/memory.copy
  local.get $1
  i32.const 4212
  i32.ge_u
  if
   local.get $0
   local.get $1
   call $~lib/rt/tlsf/freeBlock
  end
  local.get $3
 )
 (func $~lib/rt/tlsf/__realloc (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  call $~lib/rt/tlsf/maybeInitialize
  local.get $0
  i32.const 16
  i32.sub
  local.set $2
  local.get $0
  i32.const 15
  i32.and
  i32.eqz
  i32.const 0
  local.get $0
  select
  if (result i32)
   local.get $2
   i32.load
   i32.const 1
   i32.and
   i32.eqz
  else
   i32.const 0
  end
  if (result i32)
   local.get $2
   i32.load offset=4
   i32.const -268435456
   i32.and
   i32.eqz
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 1040
   i32.const 580
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  local.get $1
  call $~lib/rt/tlsf/reallocateBlock
  i32.const 16
  i32.add
 )
 (func $~lib/array/Array<~lib/assemblyscript-json/JSON/JSON.Value>#push (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $0
  i32.load offset=12
  local.tee $6
  i32.const 1
  i32.add
  local.tee $3
  local.set $1
  local.get $3
  local.get $0
  i32.load offset=8
  local.tee $4
  i32.const 2
  i32.shr_u
  i32.gt_u
  if
   local.get $1
   i32.const 268435452
   i32.gt_u
   if
    i32.const 1424
    i32.const 1472
    i32.const 14
    i32.const 48
    call $~lib/builtins/abort
    unreachable
   end
   local.get $4
   local.get $0
   i32.load
   local.tee $7
   local.get $1
   i32.const 2
   i32.shl
   local.tee $5
   call $~lib/rt/tlsf/__realloc
   local.tee $1
   i32.add
   local.get $5
   local.get $4
   i32.sub
   call $~lib/memory/memory.fill
   local.get $1
   local.get $7
   i32.ne
   if
    local.get $0
    local.get $1
    i32.store
    local.get $0
    local.get $1
    i32.store offset=4
   end
   local.get $0
   local.get $5
   i32.store offset=8
  end
  local.get $0
  i32.load offset=4
  local.get $6
  i32.const 2
  i32.shl
  i32.add
  local.get $2
  call $~lib/rt/pure/__retain
  i32.store
  local.get $0
  local.get $3
  i32.store offset=12
  local.get $2
  call $~lib/rt/pure/__release
 )
 (func $~lib/array/Array<~lib/assemblyscript-json/JSON/JSON.Value>#__get (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 1600
   i32.const 1472
   i32.const 104
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  call $~lib/rt/pure/__retain
  local.tee $0
  i32.eqz
  if
   i32.const 1920
   i32.const 1472
   i32.const 108
   i32.const 40
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
 )
 (func $~lib/assemblyscript-json/JSON/Handler#get:peek (param $0 i32) (result i32)
  local.get $0
  i32.load
  local.get $0
  i32.load
  i32.load offset=12
  i32.const 1
  i32.sub
  call $~lib/array/Array<~lib/assemblyscript-json/JSON/JSON.Value>#__get
 )
 (func $~lib/rt/__instanceof (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.const 16
  i32.sub
  i32.load offset=8
  local.tee $0
  i32.const 4064
  i32.load
  i32.le_u
  if
   loop $do-continue|0
    local.get $0
    local.get $1
    i32.eq
    if
     i32.const 1
     return
    end
    local.get $0
    i32.const 3
    i32.shl
    i32.const 4068
    i32.add
    i32.load offset=4
    local.tee $0
    br_if $do-continue|0
   end
  end
  i32.const 0
 )
 (func $~lib/util/hash/hashStr (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const -2128831035
  local.set $1
  local.get $0
  call $~lib/rt/pure/__retain
  local.tee $0
  if
   local.get $0
   call $~lib/string/String#get:length
   i32.const 1
   i32.shl
   local.set $3
   loop $for-loop|0
    local.get $2
    local.get $3
    i32.lt_u
    if
     local.get $1
     local.get $0
     local.get $2
     i32.add
     i32.load8_u
     i32.xor
     i32.const 16777619
     i32.mul
     local.set $1
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $for-loop|0
    end
   end
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
 )
 (func $~lib/util/string/compareImpl (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.tee $4
  local.tee $3
  i32.const 7
  i32.and
  local.get $1
  call $~lib/rt/pure/__retain
  local.tee $5
  local.tee $1
  i32.const 7
  i32.and
  i32.or
  i32.eqz
  i32.const 0
  local.get $2
  i32.const 4
  i32.ge_u
  select
  if
   loop $do-continue|0
    local.get $3
    i64.load
    local.get $1
    i64.load
    i64.eq
    if
     local.get $3
     i32.const 8
     i32.add
     local.set $3
     local.get $1
     i32.const 8
     i32.add
     local.set $1
     local.get $2
     i32.const 4
     i32.sub
     local.tee $2
     i32.const 4
     i32.ge_u
     br_if $do-continue|0
    end
   end
  end
  loop $while-continue|1
   local.get $2
   local.tee $0
   i32.const 1
   i32.sub
   local.set $2
   local.get $0
   if
    local.get $3
    i32.load16_u
    local.tee $0
    local.get $1
    i32.load16_u
    local.tee $6
    i32.ne
    if
     local.get $4
     call $~lib/rt/pure/__release
     local.get $5
     call $~lib/rt/pure/__release
     local.get $0
     local.get $6
     i32.sub
     return
    end
    local.get $3
    i32.const 2
    i32.add
    local.set $3
    local.get $1
    i32.const 2
    i32.add
    local.set $1
    br $while-continue|1
   end
  end
  local.get $4
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  i32.const 0
 )
 (func $~lib/map/Map<~lib/string/String,~lib/assemblyscript-json/JSON/JSON.Value>#find (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $4
  local.get $0
  i32.load
  local.get $2
  local.get $0
  i32.load offset=4
  i32.and
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.set $0
  loop $while-continue|0
   local.get $0
   if
    local.get $0
    i32.load offset=8
    i32.const 1
    i32.and
    if
     i32.const 0
     local.set $1
    else
     block $__inlined_func$~lib/string/String.__eq
      local.get $0
      i32.load
      call $~lib/rt/pure/__retain
      local.tee $2
      local.get $4
      call $~lib/rt/pure/__retain
      local.tee $3
      i32.eq
      if
       local.get $2
       call $~lib/rt/pure/__release
       local.get $3
       call $~lib/rt/pure/__release
       i32.const 1
       local.set $1
       br $__inlined_func$~lib/string/String.__eq
      end
      block $folding-inner0
       local.get $3
       i32.eqz
       i32.const 1
       local.get $2
       select
       br_if $folding-inner0
       local.get $2
       call $~lib/string/String#get:length
       local.tee $1
       local.get $3
       call $~lib/string/String#get:length
       i32.ne
       br_if $folding-inner0
       local.get $2
       local.get $3
       local.get $1
       call $~lib/util/string/compareImpl
       i32.eqz
       local.set $1
       local.get $2
       call $~lib/rt/pure/__release
       local.get $3
       call $~lib/rt/pure/__release
       br $__inlined_func$~lib/string/String.__eq
      end
      local.get $2
      call $~lib/rt/pure/__release
      local.get $3
      call $~lib/rt/pure/__release
      i32.const 0
      local.set $1
     end
    end
    local.get $1
    if
     local.get $4
     call $~lib/rt/pure/__release
     local.get $0
     return
    end
    local.get $0
    i32.load offset=8
    i32.const -2
    i32.and
    local.set $0
    br $while-continue|0
   end
  end
  local.get $4
  call $~lib/rt/pure/__release
  i32.const 0
 )
 (func $~lib/map/Map<~lib/string/String,~lib/assemblyscript-json/JSON/JSON.Value>#has (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.tee $1
  call $~lib/rt/pure/__retain
  local.tee $2
  call $~lib/util/hash/hashStr
  local.set $3
  local.get $2
  call $~lib/rt/pure/__release
  local.get $0
  local.get $1
  local.get $3
  call $~lib/map/Map<~lib/string/String,~lib/assemblyscript-json/JSON/JSON.Value>#find
  i32.const 0
  i32.ne
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/map/Map<~lib/string/String,~lib/assemblyscript-json/JSON/JSON.Value>#rehash (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  local.get $1
  i32.const 1
  i32.add
  local.tee $4
  i32.const 2
  i32.shl
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $6
  local.get $4
  i32.const 3
  i32.shl
  i32.const 3
  i32.div_s
  local.tee $7
  i32.const 12
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $4
  local.get $0
  i32.load offset=8
  local.tee $3
  local.get $0
  i32.load offset=16
  i32.const 12
  i32.mul
  i32.add
  local.set $8
  local.get $4
  local.set $5
  loop $while-continue|0
   local.get $3
   local.get $8
   i32.ne
   if
    local.get $3
    local.tee $2
    i32.load offset=8
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $5
     local.get $2
     i32.load
     i32.store
     local.get $5
     local.get $2
     i32.load offset=4
     i32.store offset=4
     local.get $2
     i32.load
     call $~lib/rt/pure/__retain
     local.tee $9
     call $~lib/util/hash/hashStr
     local.set $2
     local.get $9
     call $~lib/rt/pure/__release
     local.get $5
     local.get $6
     local.get $1
     local.get $2
     i32.and
     i32.const 2
     i32.shl
     i32.add
     local.tee $2
     i32.load
     i32.store offset=8
     local.get $2
     local.get $5
     i32.store
     local.get $5
     i32.const 12
     i32.add
     local.set $5
    end
    local.get $3
    i32.const 12
    i32.add
    local.set $3
    br $while-continue|0
   end
  end
  local.get $6
  local.tee $3
  local.get $0
  local.tee $2
  i32.load
  local.tee $5
  i32.ne
  if
   local.get $3
   call $~lib/rt/pure/__retain
   local.set $3
   local.get $5
   call $~lib/rt/pure/__release
  end
  local.get $2
  local.get $3
  i32.store
  local.get $2
  local.get $1
  i32.store offset=4
  local.get $2
  local.set $1
  local.get $4
  local.tee $2
  local.get $1
  i32.load offset=8
  local.tee $3
  i32.ne
  if
   local.get $2
   call $~lib/rt/pure/__retain
   local.set $2
   local.get $3
   call $~lib/rt/pure/__release
  end
  local.get $1
  local.get $2
  i32.store offset=8
  local.get $1
  local.get $7
  i32.store offset=12
  local.get $1
  local.get $1
  i32.load offset=20
  i32.store offset=16
  local.get $6
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
 )
 (func $~lib/map/Map<~lib/string/String,~lib/assemblyscript-json/JSON/JSON.Value>#set (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $2
  call $~lib/rt/pure/__retain
  local.set $4
  local.get $3
  call $~lib/rt/pure/__retain
  local.tee $2
  call $~lib/util/hash/hashStr
  local.set $1
  local.get $2
  call $~lib/rt/pure/__release
  local.get $0
  local.get $3
  local.get $1
  local.tee $2
  call $~lib/map/Map<~lib/string/String,~lib/assemblyscript-json/JSON/JSON.Value>#find
  local.tee $1
  if
   local.get $4
   local.get $1
   i32.load offset=4
   local.tee $2
   i32.ne
   if
    local.get $1
    local.get $4
    call $~lib/rt/pure/__retain
    i32.store offset=4
    local.get $2
    call $~lib/rt/pure/__release
   end
  else
   local.get $0
   i32.load offset=16
   local.get $0
   i32.load offset=12
   i32.eq
   if
    local.get $0
    local.get $0
    i32.load offset=20
    local.get $0
    i32.load offset=12
    i32.const 3
    i32.mul
    i32.const 4
    i32.div_s
    i32.lt_s
    if (result i32)
     local.get $0
     i32.load offset=4
    else
     local.get $0
     i32.load offset=4
     i32.const 1
     i32.shl
     i32.const 1
     i32.or
    end
    call $~lib/map/Map<~lib/string/String,~lib/assemblyscript-json/JSON/JSON.Value>#rehash
   end
   local.get $0
   i32.load offset=8
   call $~lib/rt/pure/__retain
   local.set $5
   local.get $0
   local.get $0
   i32.load offset=16
   local.tee $1
   i32.const 1
   i32.add
   i32.store offset=16
   local.get $5
   local.get $1
   i32.const 12
   i32.mul
   i32.add
   local.tee $1
   local.get $3
   call $~lib/rt/pure/__retain
   i32.store
   local.get $1
   local.get $4
   call $~lib/rt/pure/__retain
   i32.store offset=4
   local.get $0
   local.get $0
   i32.load offset=20
   i32.const 1
   i32.add
   i32.store offset=20
   local.get $1
   local.get $0
   i32.load
   local.get $2
   local.get $0
   i32.load offset=4
   i32.and
   i32.const 2
   i32.shl
   i32.add
   local.tee $2
   i32.load
   i32.store offset=8
   local.get $2
   local.get $1
   i32.store
   local.get $5
   call $~lib/rt/pure/__release
  end
  local.get $0
  call $~lib/rt/pure/__retain
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
 )
 (func $~lib/assemblyscript-json/JSON/JSON.Obj#set<~lib/assemblyscript-json/JSON/JSON.Value> (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $2
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $3
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $2
  call $~lib/rt/pure/__retain
  local.set $4
  local.get $0
  i32.load
  local.get $1
  call $~lib/map/Map<~lib/string/String,~lib/assemblyscript-json/JSON/JSON.Value>#has
  i32.eqz
  if
   local.get $0
   i32.load offset=4
   local.get $1
   call $~lib/array/Array<~lib/assemblyscript-json/JSON/JSON.Value>#push
  end
  local.get $0
  i32.load
  local.get $1
  local.get $4
  call $~lib/map/Map<~lib/string/String,~lib/assemblyscript-json/JSON/JSON.Value>#set
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
 )
 (func $~lib/assemblyscript-json/JSON/JSON.Arr#push (param $0 i32) (param $1 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  i32.load
  local.get $1
  call $~lib/array/Array<~lib/assemblyscript-json/JSON/JSON.Value>#push
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/assemblyscript-json/JSON/Handler#addValue (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $2
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $3
  call $~lib/string/String#get:length
  if (result i32)
   i32.const 0
  else
   local.get $0
   i32.load
   i32.load offset=12
   i32.eqz
  end
  if
   local.get $0
   i32.load
   local.get $1
   call $~lib/array/Array<~lib/assemblyscript-json/JSON/JSON.Value>#push
   local.get $3
   call $~lib/rt/pure/__release
   local.get $1
   call $~lib/rt/pure/__release
   return
  end
  local.get $0
  call $~lib/assemblyscript-json/JSON/Handler#get:peek
  local.tee $5
  local.set $2
  local.get $5
  if (result i32)
   local.get $2
   i32.const 9
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if
   local.get $0
   call $~lib/assemblyscript-json/JSON/Handler#get:peek
   local.tee $2
   local.get $2
   i32.const 9
   call $~lib/rt/__instanceof
   i32.eqz
   if
    i32.const 0
    i32.const 2032
    i32.const 74
    i32.const 8
    call $~lib/builtins/abort
    unreachable
   end
   local.get $3
   local.get $1
   call $~lib/assemblyscript-json/JSON/JSON.Obj#set<~lib/assemblyscript-json/JSON/JSON.Value>
  else
   local.get $0
   call $~lib/assemblyscript-json/JSON/Handler#get:peek
   local.tee $2
   local.set $4
   local.get $2
   if (result i32)
    local.get $4
    i32.const 12
    call $~lib/rt/__instanceof
   else
    i32.const 0
   end
   if
    local.get $0
    call $~lib/assemblyscript-json/JSON/Handler#get:peek
    local.tee $0
    local.get $0
    i32.const 12
    call $~lib/rt/__instanceof
    i32.eqz
    if
     i32.const 0
     i32.const 2032
     i32.const 77
     i32.const 18
     call $~lib/builtins/abort
     unreachable
    end
    local.get $1
    call $~lib/assemblyscript-json/JSON/JSON.Arr#push
    local.get $0
    call $~lib/rt/pure/__release
   end
  end
  local.get $2
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/string/String.UTF8.decodeUnsafe (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  local.get $1
  i32.add
  local.tee $3
  local.get $0
  i32.lt_u
  if
   i32.const 0
   i32.const 2416
   i32.const 738
   i32.const 7
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 1
  i32.shl
  i32.const 1
  call $~lib/rt/tlsf/__alloc
  local.tee $5
  local.set $1
  loop $while-continue|0
   local.get $0
   local.get $3
   i32.lt_u
   if
    block $while-break|0
     local.get $0
     i32.load8_u
     local.set $2
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     local.get $2
     i32.const 128
     i32.and
     if
      local.get $0
      local.get $3
      i32.eq
      br_if $while-break|0
      local.get $0
      i32.load8_u
      i32.const 63
      i32.and
      local.set $4
      local.get $0
      i32.const 1
      i32.add
      local.set $0
      local.get $2
      i32.const 224
      i32.and
      i32.const 192
      i32.eq
      if
       local.get $1
       local.get $4
       local.get $2
       i32.const 31
       i32.and
       i32.const 6
       i32.shl
       i32.or
       i32.store16
      else
       local.get $0
       local.get $3
       i32.eq
       br_if $while-break|0
       local.get $0
       i32.load8_u
       i32.const 63
       i32.and
       local.set $6
       local.get $0
       i32.const 1
       i32.add
       local.set $0
       local.get $2
       i32.const 240
       i32.and
       i32.const 224
       i32.eq
       if
        local.get $6
        local.get $2
        i32.const 15
        i32.and
        i32.const 12
        i32.shl
        local.get $4
        i32.const 6
        i32.shl
        i32.or
        i32.or
        local.set $2
       else
        local.get $0
        local.get $3
        i32.eq
        br_if $while-break|0
        local.get $0
        i32.load8_u
        i32.const 63
        i32.and
        local.get $2
        i32.const 7
        i32.and
        i32.const 18
        i32.shl
        local.get $4
        i32.const 12
        i32.shl
        i32.or
        local.get $6
        i32.const 6
        i32.shl
        i32.or
        i32.or
        local.set $2
        local.get $0
        i32.const 1
        i32.add
        local.set $0
       end
       local.get $2
       i32.const 65536
       i32.lt_u
       if
        local.get $1
        local.get $2
        i32.store16
       else
        local.get $1
        local.get $2
        i32.const 65536
        i32.sub
        local.tee $2
        i32.const 10
        i32.shr_u
        i32.const 55296
        i32.or
        local.get $2
        i32.const 1023
        i32.and
        i32.const 56320
        i32.or
        i32.const 16
        i32.shl
        i32.or
        i32.store
        local.get $1
        i32.const 2
        i32.add
        local.set $1
       end
      end
     else
      local.get $1
      local.get $2
      i32.store16
     end
     local.get $1
     i32.const 2
     i32.add
     local.set $1
     br $while-continue|0
    end
   end
  end
  local.get $5
  local.get $1
  local.get $5
  i32.sub
  call $~lib/rt/tlsf/__realloc
  call $~lib/rt/pure/__retain
 )
 (func $~lib/assemblyscript-json/decoder/DecoderState#readString@varargs (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~argumentsLength
     i32.const 1
     i32.sub
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   local.get $0
   i32.load offset=4
   local.set $2
  end
  local.get $0
  i32.load offset=8
  call $~lib/rt/pure/__retain
  local.tee $3
  call $~lib/rt/pure/__retain
  local.tee $0
  i32.load
  local.get $0
  i32.load offset=4
  local.get $0
  i32.load
  i32.sub
  i32.add
  local.set $4
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  local.get $4
  i32.add
  local.get $2
  i32.const 1
  i32.sub
  local.get $1
  i32.sub
  call $~lib/string/String.UTF8.decodeUnsafe
  local.get $3
  call $~lib/rt/pure/__release
 )
 (func $~lib/string/String.__concat (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  block $__inlined_func$~lib/string/String#concat (result i32)
   local.get $0
   call $~lib/rt/pure/__retain
   local.tee $2
   i32.const 1264
   local.get $2
   select
   local.set $3
   local.get $1
   call $~lib/rt/pure/__retain
   local.tee $5
   call $~lib/rt/pure/__retain
   local.tee $0
   i32.eqz
   if
    local.get $0
    i32.const 1264
    i32.ne
    if
     local.get $0
     call $~lib/rt/pure/__release
    end
    i32.const 1264
    local.set $0
   end
   local.get $3
   call $~lib/string/String#get:length
   i32.const 1
   i32.shl
   local.tee $4
   local.get $0
   call $~lib/string/String#get:length
   i32.const 1
   i32.shl
   local.tee $6
   i32.add
   local.tee $1
   i32.eqz
   if
    local.get $0
    call $~lib/rt/pure/__release
    i32.const 1584
    br $__inlined_func$~lib/string/String#concat
   end
   local.get $1
   i32.const 1
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.tee $1
   local.get $3
   local.get $4
   call $~lib/memory/memory.copy
   local.get $1
   local.get $4
   i32.add
   local.get $0
   local.get $6
   call $~lib/memory/memory.copy
   local.get $0
   call $~lib/rt/pure/__release
   local.get $1
  end
  local.get $2
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
 )
 (func $~lib/util/string/joinReferenceArray<~lib/string/String> (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  local.set $5
  local.get $1
  i32.const 1
  i32.sub
  local.tee $6
  i32.const 0
  i32.lt_s
  if
   local.get $5
   call $~lib/rt/pure/__release
   i32.const 1584
   return
  end
  local.get $6
  i32.eqz
  if
   local.get $0
   i32.load
   local.tee $4
   if
    local.get $4
    call $~lib/rt/pure/__retain
    local.set $4
   end
   local.get $4
   if (result i32)
    local.get $4
    call $~lib/rt/pure/__retain
   else
    i32.const 1584
   end
   local.get $5
   call $~lib/rt/pure/__release
   local.get $4
   call $~lib/rt/pure/__release
   return
  end
  i32.const 1584
  local.set $1
  local.get $5
  call $~lib/string/String#get:length
  local.set $8
  loop $for-loop|0
   local.get $4
   local.get $6
   i32.lt_s
   if
    local.get $3
    local.tee $2
    local.get $0
    local.get $4
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.tee $3
    i32.ne
    if
     local.get $3
     call $~lib/rt/pure/__retain
     local.set $3
     local.get $2
     call $~lib/rt/pure/__release
    end
    local.get $3
    if
     local.get $3
     call $~lib/rt/pure/__retain
     local.tee $2
     local.get $1
     local.get $2
     call $~lib/string/String.__concat
     local.tee $9
     local.tee $2
     local.get $1
     i32.ne
     if
      local.get $2
      call $~lib/rt/pure/__retain
      local.set $2
      local.get $1
      call $~lib/rt/pure/__release
     end
     call $~lib/rt/pure/__release
     local.get $9
     call $~lib/rt/pure/__release
     local.get $2
     local.set $1
    end
    local.get $8
    if
     local.get $1
     local.tee $2
     local.get $5
     call $~lib/string/String.__concat
     local.tee $7
     local.tee $1
     local.get $2
     i32.ne
     if
      local.get $1
      call $~lib/rt/pure/__retain
      local.set $1
      local.get $2
      call $~lib/rt/pure/__release
     end
     local.get $7
     call $~lib/rt/pure/__release
    end
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $for-loop|0
   end
  end
  local.get $0
  local.get $6
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.tee $2
  local.get $3
  i32.ne
  if
   local.get $2
   call $~lib/rt/pure/__retain
   local.set $2
   local.get $3
   call $~lib/rt/pure/__release
  end
  local.get $2
  if
   local.get $2
   call $~lib/rt/pure/__retain
   local.tee $0
   local.get $1
   local.get $0
   call $~lib/string/String.__concat
   local.tee $0
   local.tee $3
   local.get $1
   i32.ne
   if
    local.get $3
    call $~lib/rt/pure/__retain
    local.set $3
    local.get $1
    call $~lib/rt/pure/__release
   end
   call $~lib/rt/pure/__release
   local.get $0
   call $~lib/rt/pure/__release
   local.get $3
   local.set $1
  end
  local.get $5
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $1
 )
 (func $~lib/array/Array<~lib/string/String>#join (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  i32.load offset=4
  local.get $0
  i32.load offset=12
  local.get $1
  call $~lib/util/string/joinReferenceArray<~lib/string/String>
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/rt/__allocArray (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  i32.const 16
  local.get $1
  call $~lib/rt/tlsf/__alloc
  local.tee $1
  local.get $0
  i32.const 2
  i32.shl
  local.tee $4
  local.set $6
  local.get $4
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.set $3
  local.get $2
  if
   local.get $3
   local.get $2
   local.get $6
   call $~lib/memory/memory.copy
  end
  local.get $3
  call $~lib/rt/pure/__retain
  i32.store
  local.get $1
  local.get $3
  i32.store offset=4
  local.get $1
  local.get $4
  i32.store offset=8
  local.get $1
  local.get $0
  i32.store offset=12
  local.get $1
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readHexDigit (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readChar
  local.tee $2
  global.get $~lib/assemblyscript-json/decoder/CHAR_0
  i32.sub
  local.tee $1
  i32.const 9
  i32.gt_s
  if
   local.get $2
   global.get $~lib/assemblyscript-json/decoder/CHAR_A
   i32.sub
   i32.const 10
   i32.add
   local.tee $1
   i32.const 10
   i32.lt_s
   if (result i32)
    i32.const 1
   else
    local.get $1
    i32.const 15
    i32.gt_s
   end
   if
    local.get $2
    global.get $~lib/assemblyscript-json/decoder/CHAR_A_LOWER
    i32.sub
    i32.const 10
    i32.add
    local.set $1
   end
  end
  i32.const 2
  i32.const 13
  i32.const 0
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $0
  i32.load offset=4
  local.tee $3
  local.get $2
  i32.store
  local.get $3
  local.get $1
  i32.store offset=4
  local.get $1
  i32.const 16
  i32.lt_s
  i32.const 0
  local.get $1
  i32.const 0
  i32.ge_s
  select
  i32.eqz
  if
   i32.const 2816
   i32.const 1792
   i32.const 269
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readEscapedChar (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readChar
  local.tee $1
  i32.const 2224
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 2224
   return
  end
  i32.const 2464
  i32.const 0
  call $~lib/string/String#charCodeAt
  local.get $1
  i32.eq
  if
   i32.const 2464
   return
  end
  i32.const 2496
  i32.const 0
  call $~lib/string/String#charCodeAt
  local.get $1
  i32.eq
  if
   i32.const 2496
   return
  end
  i32.const 2528
  i32.const 0
  call $~lib/string/String#charCodeAt
  local.get $1
  i32.eq
  if
   i32.const 2560
   return
  end
  i32.const 2592
  i32.const 0
  call $~lib/string/String#charCodeAt
  local.get $1
  i32.eq
  if
   i32.const 2624
   return
  end
  i32.const 2656
  i32.const 0
  call $~lib/string/String#charCodeAt
  local.get $1
  i32.eq
  if
   i32.const 2688
   return
  end
  i32.const 2720
  i32.const 0
  call $~lib/string/String#charCodeAt
  local.get $1
  i32.eq
  if
   i32.const 2752
   return
  end
  i32.const 2784
  i32.const 0
  call $~lib/string/String#charCodeAt
  local.get $1
  i32.eq
  if
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readHexDigit
   i32.const 12
   i32.shl
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readHexDigit
   i32.const 8
   i32.shl
   i32.add
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readHexDigit
   i32.const 4
   i32.shl
   i32.add
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readHexDigit
   i32.add
   local.tee $0
   i32.const 1114111
   i32.gt_u
   if
    i32.const 0
    i32.const 2416
    i32.const 33
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 2
   local.get $0
   i32.const 65535
   i32.gt_s
   local.tee $2
   i32.shl
   i32.const 1
   call $~lib/rt/tlsf/__alloc
   local.set $1
   local.get $2
   if
    local.get $1
    local.get $0
    i32.const 65536
    i32.sub
    local.tee $0
    i32.const 10
    i32.shr_u
    i32.const 55296
    i32.or
    local.get $0
    i32.const 1023
    i32.and
    i32.const 56320
    i32.or
    i32.const 16
    i32.shl
    i32.or
    i32.store
   else
    local.get $1
    local.get $0
    i32.store16
   end
   local.get $1
   call $~lib/rt/pure/__retain
   return
  end
  i32.const 1
  global.set $~argumentsLength
  i32.const 2
  i32.const 1
  call $~lib/rt/tlsf/__alloc
  local.tee $2
  local.get $1
  i32.store16
  i32.const 2880
  local.get $2
  call $~lib/rt/pure/__retain
  call $~lib/string/String.__concat
  i32.const 1792
  i32.const 255
  i32.const 5
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readString (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readChar
  i32.const 2224
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.ne
  if
   i32.const 2256
   i32.const 1792
   i32.const 197
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.load offset=4
  local.set $1
  call $~lib/array/Array<~lib/string/String>#constructor
  local.set $2
  loop $for-loop|0
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readChar
   local.tee $3
   i32.const 32
   i32.lt_s
   if
    i32.const 2336
    i32.const 1792
    i32.const 203
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 2224
   i32.const 0
   call $~lib/string/String#charCodeAt
   local.get $3
   i32.eq
   if
    local.get $0
    i32.load offset=4
    i32.const 1
    global.set $~argumentsLength
    local.get $1
    call $~lib/assemblyscript-json/decoder/DecoderState#readString@varargs
    local.set $1
    local.get $2
    i32.load offset=12
    i32.eqz
    if
     local.get $2
     call $~lib/rt/pure/__release
     local.get $1
     return
    end
    local.get $2
    local.get $1
    call $~lib/array/Array<~lib/assemblyscript-json/JSON/JSON.Value>#push
    local.get $2
    i32.const 1584
    call $~lib/array/Array<~lib/string/String>#join
    local.set $0
    local.get $1
    call $~lib/rt/pure/__release
    local.get $2
    call $~lib/rt/pure/__release
   else
    i32.const 2464
    i32.const 0
    call $~lib/string/String#charCodeAt
    local.get $3
    i32.eq
    if
     local.get $0
     i32.load offset=4
     i32.load offset=4
     local.get $1
     i32.const 1
     i32.add
     i32.gt_s
     if
      local.get $0
      i32.load offset=4
      local.set $3
      i32.const 1
      global.set $~argumentsLength
      local.get $2
      local.get $3
      local.get $1
      call $~lib/assemblyscript-json/decoder/DecoderState#readString@varargs
      local.tee $1
      call $~lib/array/Array<~lib/assemblyscript-json/JSON/JSON.Value>#push
      local.get $1
      call $~lib/rt/pure/__release
     end
     local.get $2
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readEscapedChar
     local.tee $3
     call $~lib/array/Array<~lib/assemblyscript-json/JSON/JSON.Value>#push
     local.get $0
     i32.load offset=4
     i32.load offset=4
     local.set $1
     local.get $3
     call $~lib/rt/pure/__release
    end
    br $for-loop|0
   end
  end
  local.get $0
 )
 (func $~lib/array/Array<~lib/assemblyscript-json/JSON/JSON.Value>#pop (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.load offset=12
  local.tee $1
  i32.const 1
  i32.lt_s
  if
   i32.const 3104
   i32.const 1472
   i32.const 300
   i32.const 21
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 1
  i32.sub
  local.tee $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  call $~lib/rt/pure/__retain
  local.get $0
  local.get $1
  i32.store offset=12
 )
 (func $~lib/assemblyscript-json/JSON/Handler#popObject (param $0 i32)
  local.get $0
  i32.load
  i32.load offset=12
  i32.const 1
  i32.gt_s
  if
   local.get $0
   i32.load
   call $~lib/array/Array<~lib/assemblyscript-json/JSON/JSON.Value>#pop
   call $~lib/rt/pure/__release
  end
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#parseObject (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#peekChar
  i32.const 1888
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.ne
  if
   i32.const 0
   return
  end
  local.get $0
  i32.load offset=4
  i32.load
  call $~lib/rt/pure/__retain
  local.set $4
  local.get $0
  i32.load offset=4
  local.tee $1
  i32.load
  call $~lib/rt/pure/__release
  local.get $1
  i32.const 1584
  i32.store
  local.get $0
  i32.load
  local.set $3
  local.get $4
  call $~lib/rt/pure/__retain
  local.set $5
  i32.const 8
  i32.const 9
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.tee $1
  i32.const 0
  i32.store
  local.get $1
  i32.const 0
  i32.store offset=4
  local.get $1
  call $~lib/assemblyscript-json/JSON/JSON.Value#constructor
  local.set $1
  i32.const 24
  i32.const 10
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.tee $2
  i32.const 16
  call $~lib/arraybuffer/ArrayBuffer#constructor
  i32.store
  local.get $2
  i32.const 3
  i32.store offset=4
  local.get $2
  i32.const 48
  call $~lib/arraybuffer/ArrayBuffer#constructor
  i32.store offset=8
  local.get $2
  i32.const 4
  i32.store offset=12
  local.get $2
  i32.const 0
  i32.store offset=16
  local.get $2
  i32.const 0
  i32.store offset=20
  local.get $1
  i32.load
  call $~lib/rt/pure/__release
  local.get $1
  local.get $2
  i32.store
  call $~lib/array/Array<~lib/string/String>#constructor
  local.set $2
  local.get $1
  i32.load offset=4
  call $~lib/rt/pure/__release
  local.get $1
  local.get $2
  i32.store offset=4
  local.get $3
  local.get $5
  local.get $1
  call $~lib/assemblyscript-json/JSON/Handler#addValue
  local.get $3
  i32.load
  local.get $1
  call $~lib/array/Array<~lib/assemblyscript-json/JSON/JSON.Value>#push
  local.get $1
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readChar
  drop
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#skipWhitespace
  i32.const 1
  local.set $1
  loop $while-continue|0
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#peekChar
   i32.const 2112
   i32.const 0
   call $~lib/string/String#charCodeAt
   i32.ne
   if
    local.get $1
    if
     i32.const 0
     local.set $1
    else
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readChar
     i32.const 2144
     i32.const 0
     call $~lib/string/String#charCodeAt
     i32.ne
     if
      i32.const 2176
      i32.const 1792
      i32.const 142
      i32.const 11
      call $~lib/builtins/abort
      unreachable
     end
    end
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#skipWhitespace
    local.get $0
    i32.load offset=4
    local.set $2
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readString
    local.set $3
    local.get $2
    i32.load
    call $~lib/rt/pure/__release
    local.get $2
    local.get $3
    i32.store
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#skipWhitespace
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readChar
    i32.const 2960
    i32.const 0
    call $~lib/string/String#charCodeAt
    i32.ne
    if
     i32.const 2992
     i32.const 1792
     i32.const 159
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#parseValue
    drop
    br $while-continue|0
   end
  end
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readChar
  i32.const 2112
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.ne
  if
   i32.const 3040
   i32.const 1792
   i32.const 149
   i32.const 7
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load
  call $~lib/assemblyscript-json/JSON/Handler#popObject
  local.get $4
  call $~lib/rt/pure/__release
  i32.const 1
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#parseArray (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#peekChar
  i32.const 3152
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.ne
  if
   i32.const 0
   return
  end
  local.get $0
  i32.load offset=4
  i32.load
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $0
  i32.load offset=4
  local.tee $1
  i32.load
  call $~lib/rt/pure/__release
  local.get $1
  i32.const 1584
  i32.store
  local.get $0
  i32.load
  local.set $2
  local.get $3
  call $~lib/rt/pure/__retain
  local.set $4
  i32.const 4
  i32.const 12
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.tee $1
  i32.const 0
  i32.store
  local.get $1
  call $~lib/assemblyscript-json/JSON/JSON.Value#constructor
  local.set $1
  call $~lib/array/Array<~lib/assemblyscript-json/JSON/JSON.Value>#constructor
  local.set $5
  local.get $1
  i32.load
  call $~lib/rt/pure/__release
  local.get $1
  local.get $5
  i32.store
  local.get $2
  i32.load
  i32.load offset=12
  if
   local.get $2
   local.get $4
   local.get $1
   call $~lib/assemblyscript-json/JSON/Handler#addValue
  end
  local.get $2
  i32.load
  local.get $1
  call $~lib/array/Array<~lib/assemblyscript-json/JSON/JSON.Value>#push
  local.get $1
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readChar
  drop
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#skipWhitespace
  i32.const 1
  local.set $1
  loop $while-continue|0
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#peekChar
   i32.const 3184
   i32.const 0
   call $~lib/string/String#charCodeAt
   i32.ne
   if
    local.get $1
    if
     i32.const 0
     local.set $1
    else
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readChar
     i32.const 2144
     i32.const 0
     call $~lib/string/String#charCodeAt
     i32.ne
     if
      i32.const 2176
      i32.const 1792
      i32.const 176
      i32.const 11
      call $~lib/builtins/abort
      unreachable
     end
    end
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#parseValue
    drop
    br $while-continue|0
   end
  end
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readChar
  i32.const 3184
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.ne
  if
   i32.const 3216
   i32.const 1792
   i32.const 182
   i32.const 7
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load
  call $~lib/assemblyscript-json/JSON/Handler#popObject
  local.get $3
  call $~lib/rt/pure/__release
  i32.const 1
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readAndAssert (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  loop $for-loop|0
   local.get $2
   local.get $1
   call $~lib/string/String#get:length
   i32.lt_s
   if
    local.get $1
    local.get $2
    call $~lib/string/String#charCodeAt
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readChar
    i32.ne
    if
     i32.const 3280
     local.get $1
     call $~lib/string/String.__concat
     i32.const 3328
     call $~lib/string/String.__concat
     i32.const 1792
     i32.const 321
     i32.const 7
     call $~lib/builtins/abort
     unreachable
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/assemblyscript-json/JSON/Handler#setBoolean (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $0
  local.get $1
  call $~lib/rt/pure/__retain
  local.tee $0
  i32.const 1
  i32.const 15
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.tee $1
  local.get $2
  i32.store8
  local.get $1
  call $~lib/assemblyscript-json/JSON/JSON.Value#constructor
  local.tee $1
  call $~lib/assemblyscript-json/JSON/Handler#addValue
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $~lib/assemblyscript-json/JSON/JSON.Num#constructor (param $0 i64) (result i32)
  (local $1 i32)
  i32.const 8
  i32.const 16
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.tee $1
  local.get $0
  i64.store
  local.get $1
  call $~lib/assemblyscript-json/JSON/JSON.Value#constructor
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#parseNumber (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i64)
  (local $3 i64)
  i64.const 1
  local.set $2
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#peekChar
  i32.const 3360
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readChar
   drop
   i64.const -1
   local.set $2
  end
  loop $while-continue|0
   global.get $~lib/assemblyscript-json/decoder/CHAR_0
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#peekChar
   i32.le_s
   if (result i32)
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#peekChar
    global.get $~lib/assemblyscript-json/decoder/CHAR_9
    i32.le_s
   else
    i32.const 0
   end
   if
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readChar
    global.get $~lib/assemblyscript-json/decoder/CHAR_0
    i32.sub
    i64.extend_i32_s
    local.get $3
    i64.const 10
    i64.mul
    i64.add
    local.set $3
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $while-continue|0
   end
  end
  local.get $1
  i32.const 0
  i32.gt_s
  if
   local.get $0
   i32.load
   local.get $0
   i32.load offset=4
   i32.load
   call $~lib/rt/pure/__retain
   local.tee $0
   local.get $2
   local.get $3
   i64.mul
   call $~lib/assemblyscript-json/JSON/JSON.Num#constructor
   local.tee $1
   call $~lib/assemblyscript-json/JSON/Handler#addValue
   local.get $1
   call $~lib/rt/pure/__release
   local.get $0
   call $~lib/rt/pure/__release
   i32.const 1
   return
  end
  i32.const 0
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#parseValue (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#skipWhitespace
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#parseObject
  local.tee $1
  i32.eqz
  if
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#parseArray
   local.set $1
  end
  local.get $1
  i32.eqz
  if
   block $__inlined_func$~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#parseString (result i32)
    i32.const 0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#peekChar
    i32.const 2224
    i32.const 0
    call $~lib/string/String#charCodeAt
    i32.ne
    br_if $__inlined_func$~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#parseString
    drop
    local.get $0
    i32.load
    local.get $0
    i32.load offset=4
    i32.load
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readString
    local.set $2
    call $~lib/rt/pure/__retain
    local.set $4
    local.get $2
    call $~lib/rt/pure/__retain
    local.tee $6
    call $~lib/rt/pure/__retain
    local.set $1
    i32.const 4
    i32.const 14
    call $~lib/rt/tlsf/__alloc
    call $~lib/rt/pure/__retain
    local.tee $3
    local.get $1
    call $~lib/rt/pure/__retain
    i32.store
    local.get $1
    call $~lib/rt/pure/__retain
    local.get $3
    call $~lib/assemblyscript-json/JSON/JSON.Value#constructor
    local.set $3
    call $~lib/rt/pure/__release
    local.get $1
    call $~lib/rt/pure/__release
    local.get $4
    local.get $3
    call $~lib/assemblyscript-json/JSON/Handler#addValue
    local.get $3
    call $~lib/rt/pure/__release
    local.get $4
    call $~lib/rt/pure/__release
    local.get $6
    call $~lib/rt/pure/__release
    local.get $2
    call $~lib/rt/pure/__release
    i32.const 1
   end
   local.set $1
  end
  local.get $1
  i32.eqz
  if
   block $__inlined_func$~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#parseBoolean (result i32)
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#peekChar
    i32.const 1232
    i32.const 0
    call $~lib/string/String#charCodeAt
    i32.eq
    if
     local.get $0
     i32.const 1232
     call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readAndAssert
     local.get $0
     i32.load
     local.get $0
     i32.load offset=4
     i32.load
     i32.const 0
     call $~lib/assemblyscript-json/JSON/Handler#setBoolean
     i32.const 1
     br $__inlined_func$~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#parseBoolean
    end
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#peekChar
    i32.const 1200
    i32.const 0
    call $~lib/string/String#charCodeAt
    i32.eq
    if
     local.get $0
     i32.const 1200
     call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readAndAssert
     local.get $0
     i32.load
     local.get $0
     i32.load offset=4
     i32.load
     i32.const 1
     call $~lib/assemblyscript-json/JSON/Handler#setBoolean
     i32.const 1
     br $__inlined_func$~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#parseBoolean
    end
    i32.const 0
   end
   local.set $1
  end
  local.get $1
  i32.eqz
  if
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#parseNumber
   local.set $1
  end
  local.get $1
  i32.eqz
  if
   block $__inlined_func$~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#parseNull (result i32)
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#peekChar
    i32.const 1264
    i32.const 0
    call $~lib/string/String#charCodeAt
    i32.eq
    if
     local.get $0
     i32.const 1264
     call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readAndAssert
     local.get $0
     i32.load
     local.get $0
     i32.load offset=4
     i32.load
     call $~lib/rt/pure/__retain
     local.tee $1
     i32.const 0
     i32.const 17
     call $~lib/rt/tlsf/__alloc
     call $~lib/rt/pure/__retain
     call $~lib/assemblyscript-json/JSON/JSON.Value#constructor
     local.tee $2
     call $~lib/assemblyscript-json/JSON/Handler#addValue
     local.get $2
     call $~lib/rt/pure/__release
     local.get $1
     call $~lib/rt/pure/__release
     i32.const 1
     br $__inlined_func$~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#parseNull
    end
    i32.const 0
   end
   local.set $1
  end
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#skipWhitespace
  local.get $1
 )
 (func $~lib/assemblyscript-json/JSON/_JSON.parse<~lib/typedarray/Uint8Array> (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.tee $4
  local.tee $0
  if
   local.get $0
   call $~lib/rt/pure/__retain
   local.set $0
  end
  global.get $~lib/assemblyscript-json/JSON/_JSON.decoder
  local.set $2
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $3
  i32.const 12
  i32.const 7
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.tee $1
  i32.const 1584
  i32.store
  local.get $1
  i32.const 0
  i32.store offset=4
  local.get $1
  local.get $3
  call $~lib/rt/pure/__retain
  i32.store offset=8
  local.get $2
  i32.load offset=4
  call $~lib/rt/pure/__release
  local.get $2
  local.get $1
  i32.store offset=4
  local.get $2
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#parseValue
  i32.eqz
  if
   i32.const 3392
   i32.const 1792
   i32.const 100
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  call $~lib/rt/pure/__release
  i32.const 0
  call $~lib/rt/pure/__release
  global.get $~lib/assemblyscript-json/JSON/_JSON.decoder
  i32.load
  call $~lib/assemblyscript-json/JSON/Handler#get:peek
  local.tee $1
  call $~lib/rt/pure/__retain
  global.get $~lib/assemblyscript-json/JSON/_JSON.decoder
  i32.load
  local.set $3
  loop $while-continue|0
   local.get $3
   i32.load
   i32.load offset=12
   i32.const 0
   i32.gt_s
   if
    local.get $3
    i32.load
    call $~lib/array/Array<~lib/assemblyscript-json/JSON/JSON.Value>#pop
    call $~lib/rt/pure/__release
    br $while-continue|0
   end
  end
  local.get $1
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $~lib/map/Map<~lib/string/String,~lib/assemblyscript-json/JSON/JSON.Value>#get (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.tee $1
  call $~lib/rt/pure/__retain
  local.tee $2
  call $~lib/util/hash/hashStr
  local.set $3
  local.get $2
  call $~lib/rt/pure/__release
  local.get $0
  local.get $1
  local.get $3
  call $~lib/map/Map<~lib/string/String,~lib/assemblyscript-json/JSON/JSON.Value>#find
  local.tee $0
  i32.eqz
  if
   i32.const 3552
   i32.const 3616
   i32.const 104
   i32.const 17
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  call $~lib/rt/pure/__retain
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/assemblyscript-json/JSON/JSON.Obj#get (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  i32.load
  local.get $1
  call $~lib/map/Map<~lib/string/String,~lib/assemblyscript-json/JSON/JSON.Value>#has
  i32.eqz
  if
   local.get $1
   call $~lib/rt/pure/__release
   i32.const 0
   return
  end
  local.get $0
  i32.load
  local.get $1
  call $~lib/map/Map<~lib/string/String,~lib/assemblyscript-json/JSON/JSON.Value>#get
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/assemblyscript-json/JSON/JSON.Str#toString (param $0 i32) (result i32)
  (local $1 i32)
  i32.const 2224
  local.get $0
  i32.load
  call $~lib/string/String.__concat
  local.tee $0
  i32.const 2224
  call $~lib/string/String.__concat
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $~lib/util/number/itoa64 (param $0 i64) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i64.eqz
  if
   i32.const 1296
   return
  end
  local.get $0
  i64.const 63
  i64.shr_u
  i32.wrap_i64
  local.tee $3
  if
   i64.const 0
   local.get $0
   i64.sub
   local.set $0
  end
  local.get $0
  i64.const 4294967295
  i64.le_u
  if
   local.get $3
   local.get $0
   i32.wrap_i64
   local.tee $1
   i32.const 10
   i32.ge_u
   i32.const 1
   i32.add
   local.get $1
   i32.const 10000
   i32.ge_u
   i32.const 3
   i32.add
   local.get $1
   i32.const 1000
   i32.ge_u
   i32.add
   local.get $1
   i32.const 100
   i32.lt_u
   select
   local.get $1
   i32.const 1000000
   i32.ge_u
   i32.const 6
   i32.add
   local.get $1
   i32.const 1000000000
   i32.ge_u
   i32.const 8
   i32.add
   local.get $1
   i32.const 100000000
   i32.ge_u
   i32.add
   local.get $1
   i32.const 10000000
   i32.lt_u
   select
   local.get $1
   i32.const 100000
   i32.lt_u
   select
   i32.add
   local.tee $2
   i32.const 1
   i32.shl
   i32.const 1
   call $~lib/rt/tlsf/__alloc
   local.tee $4
   local.set $5
   loop $do-continue|0
    local.get $1
    i32.const 10
    i32.rem_u
    local.set $6
    local.get $1
    i32.const 10
    i32.div_u
    local.set $1
    local.get $5
    local.get $2
    i32.const 1
    i32.sub
    local.tee $2
    i32.const 1
    i32.shl
    i32.add
    local.get $6
    i32.const 48
    i32.add
    i32.store16
    local.get $1
    br_if $do-continue|0
   end
  else
   local.get $3
   local.get $0
   i64.const 100000000000
   i64.ge_u
   i32.const 10
   i32.add
   local.get $0
   i64.const 10000000000
   i64.ge_u
   i32.add
   local.get $0
   i64.const 100000000000000
   i64.ge_u
   i32.const 13
   i32.add
   local.get $0
   i64.const 10000000000000
   i64.ge_u
   i32.add
   local.get $0
   i64.const 1000000000000
   i64.lt_u
   select
   local.get $0
   i64.const 10000000000000000
   i64.ge_u
   i32.const 16
   i32.add
   local.get $0
   i64.const -8446744073709551616
   i64.ge_u
   i32.const 18
   i32.add
   local.get $0
   i64.const 1000000000000000000
   i64.ge_u
   i32.add
   local.get $0
   i64.const 100000000000000000
   i64.lt_u
   select
   local.get $0
   i64.const 1000000000000000
   i64.lt_u
   select
   i32.add
   local.tee $1
   i32.const 1
   i32.shl
   i32.const 1
   call $~lib/rt/tlsf/__alloc
   local.tee $4
   local.set $2
   loop $do-continue|00
    local.get $0
    i64.const 10
    i64.rem_u
    i32.wrap_i64
    local.set $5
    local.get $0
    i64.const 10
    i64.div_u
    local.set $0
    local.get $2
    local.get $1
    i32.const 1
    i32.sub
    local.tee $1
    i32.const 1
    i32.shl
    i32.add
    local.get $5
    i32.const 48
    i32.add
    i32.store16
    local.get $0
    i64.const 0
    i64.ne
    br_if $do-continue|00
   end
  end
  local.get $3
  if
   local.get $4
   i32.const 45
   i32.store16
  end
  local.get $4
  call $~lib/rt/pure/__retain
 )
 (func $~lib/assemblyscript-json/JSON/JSON.Bool#toString (param $0 i32) (result i32)
  local.get $0
  i32.load8_u
  if (result i32)
   i32.const 1200
  else
   i32.const 1232
  end
 )
 (func $~lib/assemblyscript-json/JSON/JSON.Arr#toString~anonymous|0 (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $2
  call $~lib/rt/pure/__retain
  local.get $0
  call $~lib/assemblyscript-json/JSON/JSON.Value#toString@virtual
  local.set $2
  local.get $0
  call $~lib/rt/pure/__release
  call $~lib/rt/pure/__release
  local.get $2
 )
 (func $~lib/assemblyscript-json/JSON/JSON.Arr#toString (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.load
  local.tee $0
  i32.load offset=12
  local.tee $3
  i32.const 11
  i32.const 0
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $5
  i32.load offset=4
  local.set $6
  loop $for-loop|0
   local.get $1
   local.get $3
   local.get $0
   i32.load offset=12
   local.tee $2
   local.get $3
   local.get $2
   i32.lt_s
   select
   i32.lt_s
   if
    local.get $1
    i32.const 2
    i32.shl
    local.tee $2
    local.get $0
    i32.load offset=4
    i32.add
    i32.load
    local.set $4
    i32.const 3
    global.set $~argumentsLength
    local.get $2
    local.get $6
    i32.add
    local.get $4
    local.get $1
    local.get $0
    call $~lib/assemblyscript-json/JSON/JSON.Arr#toString~anonymous|0
    local.tee $2
    call $~lib/rt/pure/__retain
    local.tee $4
    call $~lib/rt/pure/__retain
    i32.store
    local.get $2
    call $~lib/rt/pure/__release
    local.get $4
    call $~lib/rt/pure/__release
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
  i32.const 3152
  local.get $5
  i32.const 2144
  call $~lib/array/Array<~lib/string/String>#join
  local.tee $0
  call $~lib/string/String.__concat
  local.tee $1
  i32.const 3184
  call $~lib/string/String.__concat
  local.get $5
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/assemblyscript-json/JSON/JSON.Value#toString (param $0 i32) (result i32)
  local.get $0
  if (result i32)
   local.get $0
   i32.const 14
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if
   local.get $0
   i32.const 14
   call $~lib/rt/__instanceof
   i32.eqz
   if
    i32.const 0
    i32.const 2032
    i32.const 126
    i32.const 22
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   call $~lib/assemblyscript-json/JSON/JSON.Str#toString
   return
  end
  local.get $0
  if (result i32)
   local.get $0
   i32.const 16
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if
   local.get $0
   i32.const 16
   call $~lib/rt/__instanceof
   i32.eqz
   if
    i32.const 0
    i32.const 2032
    i32.const 129
    i32.const 22
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i64.load
   call $~lib/util/number/itoa64
   return
  end
  local.get $0
  if (result i32)
   local.get $0
   i32.const 15
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if
   local.get $0
   i32.const 15
   call $~lib/rt/__instanceof
   i32.eqz
   if
    i32.const 0
    i32.const 2032
    i32.const 132
    i32.const 23
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   call $~lib/assemblyscript-json/JSON/JSON.Bool#toString
   return
  end
  local.get $0
  if (result i32)
   local.get $0
   i32.const 17
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if
   local.get $0
   i32.const 17
   call $~lib/rt/__instanceof
   i32.eqz
   if
    i32.const 0
    i32.const 2032
    i32.const 135
    i32.const 23
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 1264
   return
  end
  local.get $0
  if (result i32)
   local.get $0
   i32.const 12
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if
   local.get $0
   i32.const 12
   call $~lib/rt/__instanceof
   i32.eqz
   if
    i32.const 0
    i32.const 2032
    i32.const 138
    i32.const 22
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   call $~lib/assemblyscript-json/JSON/JSON.Arr#toString
   return
  end
  local.get $0
  if (result i32)
   local.get $0
   i32.const 9
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if
   local.get $0
   i32.const 9
   call $~lib/rt/__instanceof
   i32.eqz
   if
    i32.const 0
    i32.const 2032
    i32.const 141
    i32.const 22
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   call $~lib/assemblyscript-json/JSON/JSON.Obj#toString
   return
  end
  i32.const 4032
  i32.const 2032
  i32.const 143
  i32.const 7
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/assemblyscript-json/JSON/JSON.Obj#toString (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  i32.const 0
  i32.const 11
  i32.const 3696
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.set $2
  loop $for-loop|0
   local.get $1
   local.get $0
   i32.load offset=4
   i32.load offset=12
   i32.lt_s
   if
    local.get $2
    i32.const 2224
    local.get $0
    i32.load offset=4
    local.get $1
    call $~lib/array/Array<~lib/assemblyscript-json/JSON/JSON.Value>#__get
    local.tee $3
    call $~lib/string/String.__concat
    local.tee $4
    i32.const 3712
    call $~lib/string/String.__concat
    local.tee $5
    local.get $0
    i32.load
    local.get $0
    i32.load offset=4
    local.get $1
    call $~lib/array/Array<~lib/assemblyscript-json/JSON/JSON.Value>#__get
    local.tee $6
    call $~lib/map/Map<~lib/string/String,~lib/assemblyscript-json/JSON/JSON.Value>#get
    local.tee $7
    call $~lib/assemblyscript-json/JSON/JSON.Value#toString@virtual
    local.tee $8
    call $~lib/string/String.__concat
    local.tee $9
    call $~lib/array/Array<~lib/assemblyscript-json/JSON/JSON.Value>#push
    local.get $3
    call $~lib/rt/pure/__release
    local.get $4
    call $~lib/rt/pure/__release
    local.get $5
    call $~lib/rt/pure/__release
    local.get $6
    call $~lib/rt/pure/__release
    local.get $7
    call $~lib/rt/pure/__release
    local.get $8
    call $~lib/rt/pure/__release
    local.get $9
    call $~lib/rt/pure/__release
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
  i32.const 1888
  local.get $2
  i32.const 2144
  call $~lib/array/Array<~lib/string/String>#join
  local.tee $0
  call $~lib/string/String.__concat
  local.tee $1
  i32.const 2112
  call $~lib/string/String.__concat
  local.get $2
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/string/String.UTF8.byteLength (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.tee $4
  local.tee $0
  local.get $0
  i32.const 16
  i32.sub
  i32.load offset=12
  i32.add
  local.set $2
  loop $while-continue|0
   local.get $0
   local.get $2
   i32.lt_u
   if
    local.get $0
    i32.load16_u
    local.tee $3
    i32.const 128
    i32.lt_u
    if (result i32)
     local.get $1
     i32.const 1
     i32.add
    else
     local.get $3
     i32.const 2048
     i32.lt_u
     if (result i32)
      local.get $1
      i32.const 2
      i32.add
     else
      local.get $0
      i32.const 2
      i32.add
      local.get $2
      i32.lt_u
      i32.const 0
      local.get $3
      i32.const 64512
      i32.and
      i32.const 55296
      i32.eq
      select
      if
       local.get $0
       i32.load16_u offset=2
       i32.const 64512
       i32.and
       i32.const 56320
       i32.eq
       if
        local.get $1
        i32.const 4
        i32.add
        local.set $1
        local.get $0
        i32.const 4
        i32.add
        local.set $0
        br $while-continue|0
       end
      end
      local.get $1
      i32.const 3
      i32.add
     end
    end
    local.set $1
    local.get $0
    i32.const 2
    i32.add
    local.set $0
    br $while-continue|0
   end
  end
  local.get $4
  call $~lib/rt/pure/__release
  local.get $1
 )
 (func $~lib/string/String.UTF8.encodeUnsafe (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  local.set $3
  local.get $2
  local.set $1
  loop $while-continue|0
   local.get $0
   local.get $3
   i32.lt_u
   if
    local.get $0
    i32.load16_u
    local.tee $2
    i32.const 128
    i32.lt_u
    if (result i32)
     local.get $1
     local.get $2
     i32.store8
     local.get $1
     i32.const 1
     i32.add
    else
     local.get $2
     i32.const 2048
     i32.lt_u
     if (result i32)
      local.get $1
      local.get $2
      i32.const 6
      i32.shr_u
      i32.const 192
      i32.or
      local.get $2
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      i32.const 8
      i32.shl
      i32.or
      i32.store16
      local.get $1
      i32.const 2
      i32.add
     else
      local.get $0
      i32.const 2
      i32.add
      local.get $3
      i32.lt_u
      i32.const 0
      local.get $2
      i32.const 64512
      i32.and
      i32.const 55296
      i32.eq
      select
      if
       local.get $0
       i32.load16_u offset=2
       local.tee $4
       i32.const 64512
       i32.and
       i32.const 56320
       i32.eq
       if
        local.get $1
        local.get $2
        i32.const 1023
        i32.and
        i32.const 10
        i32.shl
        i32.const 65536
        i32.add
        local.get $4
        i32.const 1023
        i32.and
        i32.or
        local.tee $2
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.const 24
        i32.shl
        local.get $2
        i32.const 6
        i32.shr_u
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.const 16
        i32.shl
        i32.or
        local.get $2
        i32.const 12
        i32.shr_u
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.const 8
        i32.shl
        i32.or
        local.get $2
        i32.const 18
        i32.shr_u
        i32.const 240
        i32.or
        i32.or
        i32.store
        local.get $1
        i32.const 4
        i32.add
        local.set $1
        local.get $0
        i32.const 4
        i32.add
        local.set $0
        br $while-continue|0
       end
      end
      local.get $1
      local.get $2
      i32.const 12
      i32.shr_u
      i32.const 224
      i32.or
      local.get $2
      i32.const 6
      i32.shr_u
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      i32.const 8
      i32.shl
      i32.or
      i32.store16
      local.get $1
      local.get $2
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      i32.store8 offset=2
      local.get $1
      i32.const 3
      i32.add
     end
    end
    local.set $1
    local.get $0
    i32.const 2
    i32.add
    local.set $0
    br $while-continue|0
   end
  end
 )
 (func $assembly/index/process
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  call $assembly/index/_input_len
  i32.wrap_i64
  local.set $3
  i32.const 12
  i32.const 8
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.tee $1
  i32.eqz
  if
   i32.const 12
   i32.const 2
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $1
  end
  local.get $1
  i32.const 0
  i32.store
  local.get $1
  i32.const 0
  i32.store offset=4
  local.get $1
  i32.const 0
  i32.store offset=8
  local.get $3
  i32.const 1073741808
  i32.gt_u
  if
   i32.const 1424
   i32.const 1520
   i32.const 18
   i32.const 57
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.tee $0
  local.get $3
  call $~lib/memory/memory.fill
  local.get $0
  local.tee $2
  local.get $1
  i32.load
  local.tee $4
  i32.ne
  if
   local.get $2
   call $~lib/rt/pure/__retain
   local.set $2
   local.get $4
   call $~lib/rt/pure/__release
  end
  local.get $1
  local.get $2
  i32.store
  local.get $1
  local.get $0
  i32.store offset=4
  local.get $1
  local.get $3
  i32.store offset=8
  local.get $1
  local.tee $0
  i32.load offset=4
  i64.extend_i32_u
  call $assembly/index/_input_read
  local.get $1
  call $~lib/rt/pure/__retain
  local.tee $2
  call $~lib/assemblyscript-json/JSON/_JSON.parse<~lib/typedarray/Uint8Array>
  local.set $1
  local.get $2
  call $~lib/rt/pure/__release
  local.get $1
  i32.const 9
  call $~lib/rt/__instanceof
  i32.eqz
  if
   i32.const 0
   i32.const 3456
   i32.const 37
   i32.const 37
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__retain
  local.tee $2
  local.set $3
  local.get $2
  i32.const 3520
  call $~lib/assemblyscript-json/JSON/JSON.Obj#get
  local.tee $5
  local.set $1
  block $folding-inner1
   block $folding-inner0
    local.get $5
    i32.eqz
    br_if $folding-inner0
    local.get $1
    i32.const 16
    call $~lib/rt/__instanceof
    i32.eqz
    br_if $folding-inner0
    local.get $3
    i32.const 3520
    local.get $1
    i64.load
    i64.const 1
    i64.add
    call $~lib/assemblyscript-json/JSON/JSON.Num#constructor
    local.tee $7
    call $~lib/assemblyscript-json/JSON/JSON.Obj#set<~lib/assemblyscript-json/JSON/JSON.Value>
    local.get $2
    i32.const 3664
    call $~lib/assemblyscript-json/JSON/JSON.Obj#get
    local.tee $1
    i32.eqz
    br_if $folding-inner1
    local.get $1
    i32.const 12
    call $~lib/rt/__instanceof
    i32.eqz
    br_if $folding-inner1
    local.get $1
    call $~lib/rt/pure/__retain
    local.tee $6
    i64.const 5
    call $~lib/assemblyscript-json/JSON/JSON.Num#constructor
    local.tee $8
    call $~lib/assemblyscript-json/JSON/JSON.Arr#push
    local.get $2
    i32.const 3664
    local.get $6
    call $~lib/assemblyscript-json/JSON/JSON.Obj#set<~lib/assemblyscript-json/JSON/JSON.Value>
    local.get $2
    call $~lib/assemblyscript-json/JSON/JSON.Obj#toString
    local.tee $9
    call $~lib/rt/pure/__retain
    local.tee $3
    call $~lib/string/String.UTF8.byteLength
    i32.const 0
    call $~lib/rt/tlsf/__alloc
    local.set $1
    local.get $3
    local.get $3
    call $~lib/string/String#get:length
    local.get $1
    call $~lib/string/String.UTF8.encodeUnsafe
    local.get $1
    call $~lib/rt/pure/__retain
    local.set $1
    local.get $3
    call $~lib/rt/pure/__release
    i32.const 1
    global.set $~argumentsLength
    i32.const 0
    local.get $1
    call $~lib/rt/pure/__retain
    local.tee $10
    call $~lib/rt/pure/__retain
    local.tee $3
    i32.const 16
    i32.sub
    i32.load offset=12
    local.tee $11
    i32.gt_u
    if
     i32.const 1600
     i32.const 1664
     i32.const 1741
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    i32.const 12
    i32.const 8
    call $~lib/rt/tlsf/__alloc
    local.tee $4
    local.get $3
    call $~lib/rt/pure/__retain
    i32.store
    local.get $4
    local.get $11
    i32.store offset=8
    local.get $4
    local.get $3
    i32.store offset=4
    local.get $4
    call $~lib/rt/pure/__retain
    local.set $4
    local.get $3
    call $~lib/rt/pure/__release
    local.get $10
    call $~lib/rt/pure/__release
    local.get $4
    i32.load offset=8
    i64.extend_i32_s
    local.get $4
    i32.load offset=4
    i64.extend_i32_u
    call $assembly/index/_output_write
    local.get $0
    call $~lib/rt/pure/__release
    local.get $2
    call $~lib/rt/pure/__release
    local.get $5
    call $~lib/rt/pure/__release
    local.get $7
    call $~lib/rt/pure/__release
    local.get $6
    call $~lib/rt/pure/__release
    local.get $8
    call $~lib/rt/pure/__release
    local.get $9
    call $~lib/rt/pure/__release
    local.get $1
    call $~lib/rt/pure/__release
    local.get $4
    call $~lib/rt/pure/__release
    return
   end
   i32.const 0
   i32.const 3456
   i32.const 39
   i32.const 46
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.const 3456
  i32.const 41
  i32.const 23
  call $~lib/builtins/abort
  unreachable
 )
 (func $~start
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 1296
  i32.const 0
  call $~lib/string/String#charCodeAt
  global.set $~lib/assemblyscript-json/decoder/CHAR_0
  i32.const 1328
  i32.const 0
  call $~lib/string/String#charCodeAt
  global.set $~lib/assemblyscript-json/decoder/CHAR_9
  i32.const 1360
  i32.const 0
  call $~lib/string/String#charCodeAt
  global.set $~lib/assemblyscript-json/decoder/CHAR_A
  i32.const 1392
  i32.const 0
  call $~lib/string/String#charCodeAt
  global.set $~lib/assemblyscript-json/decoder/CHAR_A_LOWER
  i32.const 4
  i32.const 3
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.tee $0
  call $~lib/array/Array<~lib/assemblyscript-json/JSON/JSON.Value>#constructor
  i32.store
  local.get $0
  global.set $~lib/assemblyscript-json/JSON/_JSON.handler
  global.get $~lib/assemblyscript-json/JSON/_JSON.handler
  i32.const 8
  i32.const 6
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.tee $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  call $~lib/rt/pure/__retain
  local.tee $2
  local.tee $1
  local.get $0
  i32.load
  local.tee $3
  i32.ne
  if
   local.get $1
   call $~lib/rt/pure/__retain
   local.set $1
   local.get $3
   call $~lib/rt/pure/__release
  end
  local.get $0
  local.get $1
  i32.store
  local.get $2
  call $~lib/rt/pure/__release
  local.get $0
  global.set $~lib/assemblyscript-json/JSON/_JSON.decoder
 )
 (func $~lib/rt/pure/__collect
  nop
 )
 (func $~lib/rt/pure/decrement (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.load offset=4
  local.tee $2
  i32.const 268435455
  i32.and
  local.set $1
  local.get $0
  i32.load
  i32.const 1
  i32.and
  if
   i32.const 0
   i32.const 1152
   i32.const 122
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 1
  i32.eq
  if
   local.get $0
   i32.const 16
   i32.add
   call $~lib/rt/__visit_members
   local.get $2
   i32.const -2147483648
   i32.and
   if
    i32.const 0
    i32.const 1152
    i32.const 126
    i32.const 18
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/rt/tlsf/ROOT
   local.get $0
   call $~lib/rt/tlsf/freeBlock
  else
   local.get $1
   i32.const 0
   i32.le_u
   if
    i32.const 0
    i32.const 1152
    i32.const 136
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   local.get $1
   i32.const 1
   i32.sub
   local.get $2
   i32.const -268435456
   i32.and
   i32.or
   i32.store offset=4
  end
 )
 (func $~lib/assemblyscript-json/JSON/JSON.Value#toString@virtual (param $0 i32) (result i32)
  (local $1 i32)
  block $default
   block $case5
    block $case4
     block $case3
      block $case2
       block $case1
        local.get $0
        i32.const 8
        i32.sub
        i32.load
        local.tee $1
        i32.const 14
        i32.ne
        if
         local.get $1
         i32.const 9
         i32.sub
         br_table $case5 $default $default $case4 $default $default $case3 $case1 $case2 $default
        end
        local.get $0
        call $~lib/assemblyscript-json/JSON/JSON.Str#toString
        return
       end
       local.get $0
       i64.load
       call $~lib/util/number/itoa64
       return
      end
      i32.const 1264
      return
     end
     local.get $0
     call $~lib/assemblyscript-json/JSON/JSON.Bool#toString
     return
    end
    local.get $0
    call $~lib/assemblyscript-json/JSON/JSON.Arr#toString
    return
   end
   local.get $0
   call $~lib/assemblyscript-json/JSON/JSON.Obj#toString
   return
  end
  local.get $0
  call $~lib/assemblyscript-json/JSON/JSON.Value#toString
 )
 (func $~lib/rt/pure/__visit (param $0 i32)
  local.get $0
  i32.const 4212
  i32.lt_u
  if
   return
  end
  local.get $0
  i32.const 16
  i32.sub
  call $~lib/rt/pure/decrement
 )
 (func $~lib/array/Array<~lib/assemblyscript-json/JSON/JSON.Value>#__visit_impl (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.load offset=4
  local.tee $1
  local.get $0
  i32.load offset=12
  i32.const 2
  i32.shl
  i32.add
  local.set $2
  loop $while-continue|0
   local.get $1
   local.get $2
   i32.lt_u
   if
    local.get $1
    i32.load
    local.tee $3
    if
     local.get $3
     call $~lib/rt/pure/__visit
    end
    local.get $1
    i32.const 4
    i32.add
    local.set $1
    br $while-continue|0
   end
  end
  local.get $0
  i32.load
  call $~lib/rt/pure/__visit
 )
 (func $~lib/rt/__visit_members (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  block $block$6$break
   block $switch$1$default
    block $switch$1$case$15
     block $switch$1$case$14
      block $switch$1$case$13
       block $switch$1$case$12
        block $switch$1$case$11
         block $switch$1$case$9
          block $switch$1$case$8
           block $switch$1$case$7
            block $switch$1$case$4
             block $switch$1$case$2
              local.get $0
              i32.const 8
              i32.sub
              i32.load
              br_table $switch$1$case$2 $switch$1$case$2 $switch$1$case$4 $switch$1$case$4 $switch$1$case$2 $switch$1$case$7 $switch$1$case$8 $switch$1$case$9 $switch$1$case$4 $switch$1$case$11 $switch$1$case$12 $switch$1$case$13 $switch$1$case$14 $switch$1$case$15 $switch$1$case$14 $switch$1$case$2 $switch$1$case$2 $switch$1$case$2 $switch$1$default
             end
             return
            end
            local.get $0
            i32.load
            local.tee $0
            if
             local.get $0
             call $~lib/rt/pure/__visit
            end
            return
           end
           local.get $0
           call $~lib/array/Array<~lib/assemblyscript-json/JSON/JSON.Value>#__visit_impl
           return
          end
          local.get $0
          i32.load
          local.tee $1
          if
           local.get $1
           call $~lib/rt/pure/__visit
          end
          local.get $0
          i32.load offset=4
          local.tee $0
          if
           local.get $0
           call $~lib/rt/pure/__visit
          end
          return
         end
         local.get $0
         i32.load
         local.tee $1
         if
          local.get $1
          call $~lib/rt/pure/__visit
         end
         local.get $0
         i32.load offset=8
         local.tee $0
         if
          local.get $0
          call $~lib/rt/pure/__visit
         end
         return
        end
        local.get $0
        i32.load
        local.tee $1
        if
         local.get $1
         call $~lib/rt/pure/__visit
        end
        local.get $0
        i32.load offset=4
        local.tee $0
        if
         local.get $0
         call $~lib/rt/pure/__visit
        end
        br $block$6$break
       end
       local.get $0
       i32.load
       call $~lib/rt/pure/__visit
       local.get $0
       i32.load offset=8
       local.tee $2
       local.tee $1
       local.get $0
       i32.load offset=16
       i32.const 12
       i32.mul
       i32.add
       local.set $0
       loop $while-continue|0
        local.get $1
        local.get $0
        i32.lt_u
        if
         local.get $1
         i32.load offset=8
         i32.const 1
         i32.and
         i32.eqz
         if
          local.get $1
          i32.load
          call $~lib/rt/pure/__visit
          local.get $1
          i32.load offset=4
          call $~lib/rt/pure/__visit
         end
         local.get $1
         i32.const 12
         i32.add
         local.set $1
         br $while-continue|0
        end
       end
       local.get $2
       call $~lib/rt/pure/__visit
       return
      end
      local.get $0
      call $~lib/array/Array<~lib/assemblyscript-json/JSON/JSON.Value>#__visit_impl
      return
     end
     local.get $0
     i32.load
     local.tee $0
     if
      local.get $0
      call $~lib/rt/pure/__visit
     end
     br $block$6$break
    end
    local.get $0
    i32.load
    call $~lib/rt/pure/__visit
    return
   end
   unreachable
  end
 )
)
