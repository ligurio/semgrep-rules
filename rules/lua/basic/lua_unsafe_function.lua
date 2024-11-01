-- ruleid: lua_unsafe_function
os.execute("")

-- ruleid: lua_unsafe_function
io.popen("")

-- ruleid: lua_unsafe_function
load("")

-- ruleid: lua_unsafe_function
loadstring("")

-- ruleid: lua_unsafe_function
loadfile("")

-- ruleid: lua_unsafe_function
dofile("")

-- ruleid: lua_unsafe_function
os.remove("")

local c = "os.exec('cat /etc/passwd')"

-- ruleid: lua_unsafe_function
loadstring(c)

-- ok: lua_unsafe_function
loadstring("os.exec('cat /etc/passwd')")
