local ffi = require("ffi")

local p = ffi.cast("void *", 0)   -- a null pointer

-- # ruleid: L1059
if p then
  print("branch taken")
end

-- # ok: L1059
if p == nil then
  print("null pointer")
end

-- # ok: L1059
if p ~= nil then
  print("not reached")
end
