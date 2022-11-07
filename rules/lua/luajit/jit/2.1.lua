local ffi = require("ffi")

-- rule-id: 2.1
collectgarbage()

-- rule-id: 2.1
gcinfo()

-- rule-id: 2.1
newproxy(true)

-- rule-id: 2.1
require("")

-- rule-id: 2.1
setfenv(1, {_G = _G})

-- rule-id: 2.1
unpack({10, 20, 30})

-- rule-id: 2.1
string.char(11)

-- rule-id: 2.1
string.gmatch("Hello, Lua user", "%a+")

-- rule-id: 2.1
string.gsub("Lua is good", "good", "great")

-- rule-id: 2.1
string.lower("uppercase")

-- rule-id: 2.1
string.match("2 Tarantool's for you.", "%d+ %a+")

-- rule-id: 2.1
string.rep("Lua ", 5)

-- rule-id: 2.1
string.reverse("Lua")

-- rule-id: 2.1
string.upper("lowercase")

-- rule-id: 2.1
table.concat({})

-- rule-id: 2.1
table.foreachi({})

-- rule-id: 2.1
table.maxn({})

-- rule-id: 2.1
table.pack(1, 2, 3)

-- rule-id: 2.1
table.remove({}, 1)

-- rule-id: 2.1
table.sort({})

-- rule-id: 2.1
table.unpack(...)

-- rule-id: 2.1
math.fmod(...)

-- rule-id: 2.1
math.frexp(...)

-- rule-id: 2.1
math.randomseed(1234)

-- rule-id: 2.1
local fd = io.open("")

-- rule-id: 2.1
io.input(fd)

-- rule-id: 2.1
io.output(fd)

-- rule-id: 2.1
io.popen("")

-- rule-id: 2.1
io.read(fd)

-- todo-rule-id: 2.1
fd:read()

-- rule-id: 2.1
io.tmpfile()

-- rule-id: 2.1
io.lines()

-- rule-id: 2.1
io.type(fd)

-- rule-id: 2.1
io.close(fd)

-- rule-id: 2.1
bit.tohex(1)

-- rule-id: 2.1
ffi.gc(ffi.C.malloc(5), ffi.C.free)
