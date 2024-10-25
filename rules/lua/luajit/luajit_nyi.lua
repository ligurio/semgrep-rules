-- ruleid: luajit_nyi
dofile("path")

-- ruleid: luajit_nyi
error("msg")

-- ruleid: luajit_nyi
load("")

-- ruleid: luajit_nyi
loadfile(...)

-- ruleid: luajit_nyi
loadstring(...)

-- ruleid: luajit_nyi
string.dump(...)

local ffi = require("ffi")

-- ruleid: luajit_nyi
ffi.cdef(...)
-- ruleid: luajit_nyi
ffi.load(...)
-- ruleid: luajit_nyi
ffi.metatype(...)

-- ruleid: luajit_nyi
debug.debug()
-- ruleid: luajit_nyi
debug.getfenv(o)
-- ruleid: luajit_nyi
debug.gethook()
-- ruleid: luajit_nyi
debug.getinfo()
-- ruleid: luajit_nyi
debug.getlocal()
-- ruleid: luajit_nyi
debug.getmetatable(object)
-- ruleid: luajit_nyi
debug.getregistry()
-- ruleid: luajit_nyi
debug.getupvalue(func, up)
-- ruleid: luajit_nyi
debug.setfenv(object, table)
-- ruleid: luajit_nyi
debug.sethook()
-- ruleid: luajit_nyi
debug.setlocal()
-- ruleid: luajit_nyi
debug.setmetatable(object, table)
-- ruleid: luajit_nyi
debug.setupvalue(func, up, value)
-- ruleid: luajit_nyi
debug.traceback()

-- ruleid: luajit_nyi
jit.on()
-- ruleid: luajit_nyi
jit.off()
-- ruleid: luajit_nyi
jit.flush()
-- ruleid: luajit_nyi
jit.opt.start(2)

-- ruleid: luajit_nyi
os.clock()
-- ruleid: luajit_nyi
os.date()
-- ruleid: luajit_nyi
os.difftime(t2, t1)
-- ruleid: luajit_nyi
os.execute("command")
-- ruleid: luajit_nyi
os.exit()
-- ruleid: luajit_nyi
os.getenv("varname")
-- ruleid: luajit_nyi
os.remove("filename")
-- ruleid: luajit_nyi
os.rename("oldname", "newname")
-- ruleid: luajit_nyi
os.setlocale("en_US.UTF-8")
-- ruleid: luajit_nyi
os.time({})
-- ruleid: luajit_nyi
os.tmpname()

-- ruleid: luajit_nyi
package.loadlib("lib", "func")
-- ruleid: luajit_nyi
package.seeall("")

local fn = function() end

-- ruleid: luajit_nyi
local co = coroutine.create(fn)
-- ruleid: luajit_nyi
coroutine.resume(co)
-- ruleid: luajit_nyi
coroutine.running()
-- ruleid: luajit_nyi
coroutine.status(co)
-- ruleid: luajit_nyi
coroutine.wrap(fn)
-- ruleid: luajit_nyi
coroutine.yield()
