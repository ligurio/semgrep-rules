local fd1
fd1 = io.open("")
fd1:read("*a")
fd1:close()
-- # ruleid: lua_use_fd_after_close
fd1:read("*a")

local fd2
fd2 = io.open("")
fd2:read("*a")
io.close(fd2)
-- # ruleid: lua_use_fd_after_close
fd2:read("*a")

local fd3
fd3 = io.lines("")
fd3:read("*a")
fd3:close()
-- # ruleid: lua_use_fd_after_close
fd3:read("*a")

local fd4
fd4 = io.lines("")
fd4:read("*a")
io.close(fd4)
-- # ruleid: lua_use_fd_after_close
fd4:read("*a")

local fd5
fd5 = io.popen("")
fd5:close()
-- # ruleid: lua_use_fd_after_close
fd5:read("*a")

local fd6
fd6 = io.popen("")
io.close(fd6)
-- # ruleid: lua_use_fd_after_close
fd6:read("*a")
