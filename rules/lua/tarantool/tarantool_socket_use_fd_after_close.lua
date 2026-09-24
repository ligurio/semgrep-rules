local fd

fd = io.open("")
fd:read("*a")
fd:close()
-- # ruleid: tarantool_socket_use_fd_after_close
fd:read("*a")

fd = io.open("")
fd:read("*a")
io.close(fd)
-- # ruleid: tarantool_socket_use_fd_after_close
fd:read("*a")

fd = io.lines("")
fd:read("*a")
fd:close()
-- # ruleid: tarantool_socket_use_fd_after_close
fd:read("*a")

fd = io.lines("")
fd:read("*a")
io.close(fd)
-- # ruleid: tarantool_socket_use_fd_after_close
fd:read("*a")
