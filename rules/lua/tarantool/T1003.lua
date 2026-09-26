-- See commit 'lua: prohibit fiber yield when GC hook is active'
-- https://github.com/tarantool/tarantool/commit/d3f1dd7208f8aee787e18a61d33c132706e1e32a#diff-4f8fa5a555e8a24bc7a96cc0adeb826148645e1b617986adfaee66b86ba0d22fR32

local ffi = require('ffi')
local fiber = require('fiber')
local http = require('http.client')
ffi.cdef('struct test { int foo; };')

local test = ffi.metatype('struct test', {
  __gc = function()
    -- # ruleid: T1003
    http.get('https://www.ispras.ru/') -- Implicit yield.
    -- # ruleid: T1003
    fiber.yield() -- Explicit yield.
  end,
})
local t = test(9)
t = nil

-- This call leads to the platform panic.
collectgarbage('collect')
