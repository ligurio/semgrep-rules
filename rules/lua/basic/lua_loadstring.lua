local c = "os.exec('cat /etc/passwd')"

-- ruleid: lua_loadstring
loadstring(c)

-- ok: lua_loadstring
loadstring("os.exec('cat /etc/passwd')")
