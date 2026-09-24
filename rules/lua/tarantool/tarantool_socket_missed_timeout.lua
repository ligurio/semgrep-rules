local socket = require("socket")

local timeout = 5
-- # ok: tarantool_socket_missed_timeout
socket.tcp_connect("tarantool.io", 10, timeout)
-- # ruleid: tarantool_socket_missed_timeout
socket.tcp_connect("tarantool.io", 10)

-- # ok: tarantool_socket_missed_timeout
socket.getaddrinfo("tarantool.io", 10, timeout, {})
-- # ruleid: tarantool_socket_missed_timeout
socket.getaddrinfo("tarantool.io", 10, {})

-- # ok: tarantool_socket_missed_timeout
socket.tcp_server("tarantool.io", 10, {}, timeout)
-- # ruleid: tarantool_socket_missed_timeout
socket.tcp_server("tarantool.io", 10, {})

local sock = socket.tcp_server("tarantool.io", 10, {}, timeout)
-- # ok: tarantool_socket_missed_timeout
sock:read(1, timeout)
-- # ruleid: tarantool_socket_missed_timeout
sock:read(1)

-- # ruleid: tarantool_socket_missed_timeout
sock:readable()
-- # ok: tarantool_socket_missed_timeout
sock:readable(timeout)

-- # ruleid: tarantool_socket_missed_timeout
sock:writable()
-- # ok: tarantool_socket_missed_timeout
sock:writable(timeout)

-- # ruleid: tarantool_socket_missed_timeout
sock:wait()
-- # ok: tarantool_socket_missed_timeout
sock:wait(timeout)

-- # ruleid: tarantool_socket_missed_timeout
socket.iowait(sock:fd(), {})
-- # ok: tarantool_socket_missed_timeout
socket.iowait(sock:fd(), {}, timeout)
