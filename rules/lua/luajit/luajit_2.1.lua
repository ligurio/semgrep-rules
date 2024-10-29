local ffi = require("ffi")

-- rule-id: luajit_2.1
collectgarbage()

-- rule-id: luajit_2.1
gcinfo()

-- rule-id: luajit_2.1
newproxy(true)

-- rule-id: luajit_2.1
require("")

-- rule-id: luajit_2.1
setfenv(1, {_G = _G})

-- rule-id: luajit_2.1
unpack({10, 20, 30})

-- rule-id: luajit_2.1
string.char(11)

-- rule-id: luajit_2.1
string.gmatch("Hello, Lua user", "%a+")

-- rule-id: luajit_2.1
string.gsub("Lua is good", "good", "great")

-- rule-id: luajit_2.1
string.lower("uppercase")

-- rule-id: luajit_2.1
string.match("2 Tarantool's for you.", "%d+ %a+")

-- rule-id: luajit_2.1
string.rep("Lua ", 5)

-- rule-id: luajit_2.1
string.reverse("Lua")

-- rule-id: luajit_2.1
string.upper("lowercase")

-- rule-id: luajit_2.1
table.concat({})

-- rule-id: luajit_2.1
table.foreachi({})

-- rule-id: luajit_2.1
table.maxn({})

-- rule-id: luajit_2.1
table.pack(1, 2, 3)

-- rule-id: luajit_2.1
table.remove({}, 1)

-- rule-id: luajit_2.1
table.sort({})

-- rule-id: luajit_2.1
table.unpack(...)

-- rule-id: luajit_2.1
math.fmod(...)

-- rule-id: luajit_2.1
math.frexp(...)

-- rule-id: luajit_2.1
math.randomseed(1234)

-- rule-id: luajit_2.1
local fd = io.open("")

-- rule-id: luajit_2.1
io.input(fd)

-- rule-id: luajit_2.1
io.output(fd)

-- rule-id: luajit_2.1
io.popen("")

-- rule-id: luajit_2.1
io.read(fd)

-- todo-rule-id: luajit_2.1
fd:read()

-- rule-id: luajit_2.1
io.tmpfile()

-- rule-id: luajit_2.1
io.lines()

-- rule-id: luajit_2.1
io.type(fd)

-- rule-id: luajit_2.1
io.close(fd)

-- rule-id: luajit_2.1
bit.tohex(1)

-- rule-id: luajit_2.1
ffi.gc(ffi.C.malloc(5), ffi.C.free)
