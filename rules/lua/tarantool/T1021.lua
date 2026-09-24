-- # ruleid: T1021
box.cfg{listen = 'unix://xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'}

local socket = require('socket')
-- # ruleid: T1021
local socket_object = socket.bind(unix_socket_path, port)
-- # ruleid: T1021
socket.bind(unix_socket_path, port)
socket_object:sysconnect('unix/', unix_socket_path)

-- Server:new ([object[, extra]])
-- https://www.tarantool.io/en/doc/latest/reference/reference_rock/luatest/classes/luatest.server/#server-make-socketdir

local console = require('console')
-- # ruleid: T1021
console.listen(unix_socket_path)
