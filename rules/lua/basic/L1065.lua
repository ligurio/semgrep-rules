local ffi = require("ffi")
ffi.cdef[[ void *malloc(size_t size); void free(void *ptr); ]]

-- # ruleid: L1065
ffi.cast("int *", 0)[0] = 1

local p = ffi.C.malloc(4)
ffi.C.free(p)
-- # ruleid: L1065
p[0] = 1

local buf = ffi.C.malloc(4)
-- # ok: L1065
buf[0] = 1
ffi.C.free(buf)
