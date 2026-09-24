local socket = require("socket")

local sock = socket.socket("AF_INET", "SOCK_STREAM", "tcp")

-- # ruleid: tarantool_socket_bind_to_all_interfaces
sock.bind("0.0.0.0", 80)

-- # ruleid: tarantool_socket_bind_to_all_interfaces
sock.bind("0.0.0.0")

-- # ok: tarantool_socket_bind_to_all_interfaces
sock.bind("127.0.0.1", 80)

-- # ruleid: tarantool_socket_bind_to_all_interfaces
sock.bind("::", 80)

-- # ruleid: tarantool_socket_bind_to_all_interfaces
sock.bind("", 80)

-- # ruleid: tarantool_socket_bind_to_all_interfaces
sock:bind("0.0.0.0", ...)

-- # ruleid: tarantool_socket_bind_to_all_interfaces
sock:bind("::", 80)

-- # ruleid: tarantool_socket_bind_to_all_interfaces
sock:bind("", 80)
