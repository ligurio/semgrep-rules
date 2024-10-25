local fh

-- ruleid: lua_fd_leak
fh = io.open("file")

-- ruleid: lua_fd_leak
fh = io.popen("command")

-- ruleid: lua_fd_leak
fd = io.tmpfile()

-- todoruleid: lua_fd_leak
assert(io.open("file"))

-- todoruleid: lua_fd_leak
assert(io.popen("command"))

-- todoruleid: lua_fd_leak
assert(io.tmpfile())
