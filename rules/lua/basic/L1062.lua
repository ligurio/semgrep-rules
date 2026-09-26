local ffi = require("ffi")

local x = ffi.new("uint64_t", 2)

-- # ruleid: L1062
math.floor(x)

-- # ok: L1062
local y = x * 3 + 1
print(tostring(y))

-- # ok: L1062
local n = tonumber(x)
math.floor(n / 2)
