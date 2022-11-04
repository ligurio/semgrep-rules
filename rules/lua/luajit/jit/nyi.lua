-- ruleid: nyi
dofile("path")

-- ruleid: nyi
error("msg")

-- ruleid: nyi
load("")

-- ruleid: nyi
loadfile(...)

-- ruleid: nyi
loadstring(...)

-- ruleid: nyi
string.dump(...)

local ffi = require("ffi")

-- ruleid: nyi
ffi.cdef(...)
-- ruleid: nyi
ffi.load(...)
-- ruleid: nyi
ffi.metatype(...)

-- ruleid: nyi
debug.debug()
-- ruleid: nyi
debug.getfenv(o)
-- ruleid: nyi
debug.gethook()
-- ruleid: nyi
debug.getinfo()
-- ruleid: nyi
debug.getlocal()
-- ruleid: nyi
debug.getmetatable(object)
-- ruleid: nyi
debug.getregistry()
-- ruleid: nyi
debug.getupvalue(func, up)
-- ruleid: nyi
debug.setfenv(object, table)
-- ruleid: nyi
debug.sethook()
-- ruleid: nyi
debug.setlocal()
-- ruleid: nyi
debug.setmetatable(object, table)
-- ruleid: nyi
debug.setupvalue(func, up, value)
-- ruleid: nyi
debug.traceback()

-- ruleid: nyi
jit.on()
-- ruleid: nyi
jit.off()
-- ruleid: nyi
jit.flush()
-- ruleid: nyi
jit.opt.start(2)

-- ruleid: nyi
os.clock()
-- ruleid: nyi
os.date()
-- ruleid: nyi
os.difftime(t2, t1)
-- ruleid: nyi
os.execute("command")
-- ruleid: nyi
os.exit()
-- ruleid: nyi
os.getenv("varname")
-- ruleid: nyi
os.remove("filename")
-- ruleid: nyi
os.rename("oldname", "newname")
-- ruleid: nyi
os.setlocale("en_US.UTF-8")
-- ruleid: nyi
os.time({})
-- ruleid: nyi
os.tmpname()

-- ruleid: nyi
package.loadlib("lib", "func")
-- ruleid: nyi
package.seeall("")

local fn = function() end

-- ruleid: nyi
local co = coroutine.create(fn)
-- ruleid: nyi
coroutine.resume(co)
-- ruleid: nyi
coroutine.running()
-- ruleid: nyi
coroutine.status(co)
-- ruleid: nyi
coroutine.wrap(fn)
-- ruleid: nyi
coroutine.yield()
