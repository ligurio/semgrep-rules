local fd

fd = io.open("")
fd:read("*a")
fd:close()
-- ruleid: use_fd_after_close
fd:read("*a")

fd = io.open("")
fd:read("*a")
io.close(fd)
-- ruleid: use_fd_after_close
fd:read("*a")

fd = io.lines("")
fd:read("*a")
fd:close()
-- ruleid: use_fd_after_close
fd:read("*a")

fd = io.lines("")
fd:read("*a")
io.close(fd)
-- ruleid: use_fd_after_close
fd:read("*a")

fd = io.popen("")
fd:close()
-- ruleid: use_fd_after_close
fd:read("*a")

fd = io.popen("")
io.close(fd)
-- ruleid: use_fd_after_close
fd:read("*a")
