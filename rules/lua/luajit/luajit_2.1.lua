-- # ruleid: luajit_2.1
local ffi = require("ffi")

-- # ruleid: luajit_2.1
collectgarbage()

-- # ruleid: luajit_2.1
gcinfo()

-- # ruleid: luajit_2.1
newproxy(true)

-- # ruleid: luajit_2.1
require("")

-- # ruleid: luajit_2.1
setfenv(1, {})

-- # ruleid: luajit_2.1
unpack({10, 20, 30})

-- # ruleid: luajit_2.1
string.char(11)

-- # ruleid: luajit_2.1
string.gmatch("Hello, Lua user", "%a+")

-- # ruleid: luajit_2.1
string.gsub("Lua is good", "good", "great")

-- # ruleid: luajit_2.1
string.lower("uppercase")

-- # ruleid: luajit_2.1
string.match("2 Tarantool's for you.", "%d+ %a+")

-- # ruleid: luajit_2.1
string.rep("Lua ", 5)

-- # ruleid: luajit_2.1
string.reverse("Lua")

-- # ruleid: luajit_2.1
string.upper("lowercase")

-- # ruleid: luajit_2.1
table.concat({})

-- # ruleid: luajit_2.1
table.foreachi({})

-- # ruleid: luajit_2.1
table.maxn({})

-- # ruleid: luajit_2.1
table.pack(1, 2, 3)

-- # ruleid: luajit_2.1
table.remove({}, 1)

-- # ruleid: luajit_2.1
table.sort({})

-- # ruleid: luajit_2.1
table.unpack(...)

-- # ruleid: luajit_2.1
math.fmod(...)

-- # ruleid: luajit_2.1
math.frexp(...)

-- # ruleid: luajit_2.1
math.randomseed(1234)

-- # ruleid: luajit_2.1
local fd = io.open("")

-- # ruleid: luajit_2.1
io.input(fd)

-- # ruleid: luajit_2.1
io.output(fd)

-- # ruleid: luajit_2.1
io.popen("")

-- # ruleid: luajit_2.1
io.read(fd)

-- # ok: luajit_2.1
fd:read()

-- # ruleid: luajit_2.1
io.tmpfile()

-- # ruleid: luajit_2.1
io.lines()

-- # ruleid: luajit_2.1
io.type(fd)

-- # ruleid: luajit_2.1
io.close(fd)

-- # ruleid: luajit_2.1
bit.tohex(1)

-- # ruleid: luajit_2.1
ffi.gc(ffi.C.malloc(5), ffi.C.free)
