-- # ruleid: tarantool_unix_socket_path_length_is_exceeded
box.cfg{listen = 'unix://xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'}

local socket = require('socket')
-- # ruleid: tarantool_unix_socket_path_length_is_exceeded
local socket_object = socket.bind(unix_socket_path, port)
-- # ruleid: tarantool_unix_socket_path_length_is_exceeded
socket.bind(unix_socket_path, port)
socket_object:sysconnect('unix/', unix_socket_path)

-- Server:new ([object[, extra]])
-- https://www.tarantool.io/en/doc/latest/reference/reference_rock/luatest/classes/luatest.server/#server-make-socketdir

local console = require('console')
-- # ruleid: tarantool_unix_socket_path_length_is_exceeded
console.listen(unix_socket_path)
