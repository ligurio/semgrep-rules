local a = {1, 2, 3}

-- # ruleid: L1003
print(a[0])

-- # ok: L1003
local c = a[1]

local ffi = require('ffi')

-- FFI/cdata arrays are zero-based, index 0 is valid for them.
local buf = ffi.new('uint8_t[?]', 4)
-- # ok: L1003
buf[0] = 1
