local fio = require("fio")

local fh
-- # ruleid: tarantool_socket_fd_leak
fh = fio.open("")

-- # ruleid: tarantool_socket_fd_leak
fh = io.open("")

local socket = require("socket")
-- # ruleid: tarantool_socket_fd_leak
local sock = socket()
-- # ruleid: tarantool_socket_fd_leak
local sock = socket("AF_INET", "SOCK_STREAM", "tcp")
-- # todoruleid: tarantool_socket_fd_leak
assert(socket("AF_INET", "SOCK_STREAM", "tcp"))

local popen = require("popen")
-- # ruleid: tarantool_socket_fd_leak
fh = popen.new("")

local net_box = require("net.box")
-- # ruleid: tarantool_socket_fd_leak
fh = net_box.new("")
-- # ruleid: tarantool_socket_fd_leak
fh = net_box.connect("")
