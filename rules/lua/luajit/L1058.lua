-- # ruleid: L1058
local ffi = require("ffi")

-- # ruleid: L1058
collectgarbage()

-- # ruleid: L1058
gcinfo()

-- # ruleid: L1058
newproxy(true)

-- # ruleid: L1058
require("")

-- # ruleid: L1058
setfenv(1, {})

-- # ruleid: L1058
unpack({10, 20, 30})

-- # ruleid: L1058
string.char(11)

-- # ruleid: L1058
string.gmatch("Hello, Lua user", "%a+")

-- # ruleid: L1058
string.gsub("Lua is good", "good", "great")

-- # ruleid: L1058
string.lower("uppercase")

-- # ruleid: L1058
string.match("2 Tarantool's for you.", "%d+ %a+")

-- # ruleid: L1058
string.rep("Lua ", 5)

-- # ruleid: L1058
string.reverse("Lua")

-- # ruleid: L1058
string.upper("lowercase")

-- # ruleid: L1058
table.concat({})

-- # ruleid: L1058
table.foreachi({})

-- # ruleid: L1058
table.maxn({})

-- # ruleid: L1058
table.pack(1, 2, 3)

-- # ruleid: L1058
table.remove({}, 1)

-- # ruleid: L1058
table.sort({})

-- # ruleid: L1058
table.unpack(...)

-- # ruleid: L1058
math.fmod(...)

-- # ruleid: L1058
math.frexp(...)

-- # ruleid: L1058
math.randomseed(1234)

-- # ruleid: L1058
local fd = io.open("")

-- # ruleid: L1058
io.input(fd)

-- # ruleid: L1058
io.output(fd)

-- # ruleid: L1058
io.popen("")

-- # ruleid: L1058
io.read(fd)

-- # ok: L1058
fd:read()

-- # ruleid: L1058
io.tmpfile()

-- # ruleid: L1058
io.lines()

-- # ruleid: L1058
io.type(fd)

-- # ruleid: L1058
io.close(fd)

-- # ruleid: L1058
bit.tohex(1)

-- # ruleid: L1058
ffi.gc(ffi.C.malloc(5), ffi.C.free)
-- # ruleid: L1058
jit.off()
-- # ruleid: L1058
dofile("path")

-- # ruleid: L1058
error("msg")

-- # ruleid: L1058
load("")

-- # ruleid: L1058
loadfile(...)

-- # ruleid: L1058
loadstring(...)

-- # ruleid: L1058
string.dump(...)

-- # ruleid: L1058
local ffi = require("ffi")

-- # ruleid: L1058
ffi.cdef(...)
-- # ruleid: L1058
ffi.load(...)
-- # ruleid: L1058
ffi.metatype(...)

-- # ruleid: L1058
debug.debug()
-- # ruleid: L1058
debug.getfenv(o)
-- # ruleid: L1058
debug.gethook()
-- # ruleid: L1058
debug.getinfo()
-- # ruleid: L1058
debug.getlocal()
-- # ruleid: L1058
debug.getmetatable(object)
-- # ruleid: L1058
debug.getregistry()
-- # ruleid: L1058
debug.getupvalue(func, up)
-- # ruleid: L1058
debug.setfenv(object, table)
-- # ruleid: L1058
debug.sethook()
-- # ruleid: L1058
debug.setlocal()
-- # ruleid: L1058
debug.setmetatable(object, table)
-- # ruleid: L1058
debug.setupvalue(func, up, value)
-- # ruleid: L1058
debug.traceback()

-- # ruleid: L1058
jit.on()
-- # ruleid: L1058
jit.off()
-- # ruleid: L1058
jit.flush()
-- # ruleid: L1058
jit.opt.start(2)

-- # ruleid: L1058
os.clock()
-- # ruleid: L1058
os.date()
-- # ruleid: L1058
os.difftime(t2, t1)
-- # ruleid: L1058
os.execute("command")
-- # ruleid: L1058
os.exit()
-- # ruleid: L1058
os.getenv("varname")
-- # ruleid: L1058
os.remove("filename")
-- # ruleid: L1058
os.rename("oldname", "newname")
-- # ruleid: L1058
os.setlocale("en_US.UTF-8")
-- # ruleid: L1058
os.time({})
-- # ruleid: L1058
os.tmpname()

-- # ruleid: L1058
package.loadlib("lib", "func")
-- # ruleid: L1058
package.seeall("")

local fn = function() end

-- # ruleid: L1058
local co = coroutine.create(fn)
-- # ruleid: L1058
coroutine.resume(co)
-- # ruleid: L1058
coroutine.running()
-- # ruleid: L1058
coroutine.status(co)
-- # ruleid: L1058
coroutine.wrap(fn)
-- # ruleid: L1058
coroutine.yield()
-- # ruleid: L1058
getfenv()

-- # ruleid: L1058
next(...)

-- # ruleid: L1058
print(...)

-- # ruleid: L1058
select(...)

-- # ruleid: L1058
tonumber(...)

-- # ruleid: L1058
tostring(...)

-- # ruleid: L1058
xpcall(...)

-- # ruleid: L1058
string.find(...)

-- # ruleid: L1058
string.format(...)

-- # ruleid: L1058
table.insert(...)

-- # ruleid: L1058
local ffi = require("ffi")

-- # ruleid: L1058
ffi.cast(...)

-- # ruleid: L1058
ffi.errno(...)

-- # ruleid: L1058
ffi.new(...)

-- # ruleid: L1058
ffi.sizeof(...)

-- # ruleid: L1058
ffi.typeof(...)
