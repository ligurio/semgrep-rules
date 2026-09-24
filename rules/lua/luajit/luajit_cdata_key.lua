-- The rule matches cdata objects used as table keys.
-- LuaJIT 64-bit integer literals (with `LL`/`ULL` suffixes) are not
-- understood by Semgrep's Lua parser, so the rule is a regex fallback
-- and the test exercises it with `ffi.new` cdata values.

local ffi = require('ffi')
local t1 = {}

-- # ruleid: luajit_cdata_key
t1[ffi.new('int64_t', 1)] = 2

-- # ruleid: luajit_cdata_key
local t2 = { [ffi.new('int64_t', 2)] = 3 }

local cdata1 = ffi.new('int', 2)

-- # ok: luajit_cdata_key
t1[cdata1] = 2
