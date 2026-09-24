local fiber = require("fiber")

local f

f = fiber.create()
-- # ok: T1004
f:join(10)
-- # ruleid: T1004
f:join()

f = fiber.new()
-- # ok: T1004
f:join(10)
-- # ruleid: T1004
f:join()

local ch = fiber.channel()
-- # ok: T1004
ch:put("put", 3)
-- # ruleid: T1004
ch:put("put")
-- # ok: T1004
ch:get("get", 5)
-- # ruleid: T1004
ch:get("get")

local cond = fiber.cond()
-- # ok: T1004
cond:wait(10)
-- # ruleid: T1004
cond:wait()
local net_box = require("net.box")

-- # ruleid: T1004
local conn = net_box.connect("localhost:3301")

-- # ruleid: T1004
local conn2 = net_box.new("localhost:3301")

-- # ok: T1004
local conn3 = net_box.connect("localhost:3301")
conn3:timeout(5)
local socket = require("socket")

local timeout = 5
-- # ok: T1004
socket.tcp_connect("tarantool.io", 10, timeout)
-- # ruleid: T1004
socket.tcp_connect("tarantool.io", 10)

-- # ok: T1004
socket.getaddrinfo("tarantool.io", 10, timeout, {})
-- # ruleid: T1004
socket.getaddrinfo("tarantool.io", 10, {})

-- # ok: T1004
socket.tcp_server("tarantool.io", 10, {}, timeout)
-- # ruleid: T1004
socket.tcp_server("tarantool.io", 10, {})

local sock = socket.tcp_server("tarantool.io", 10, {}, timeout)
-- # ok: T1004
sock:read(1, timeout)
-- # ruleid: T1004
sock:read(1)

-- # ruleid: T1004
sock:readable()
-- # ok: T1004
sock:readable(timeout)

-- # ruleid: T1004
sock:writable()
-- # ok: T1004
sock:writable(timeout)

-- # ruleid: T1004
sock:wait()
-- # ok: T1004
sock:wait(timeout)

-- # ruleid: T1004
socket.iowait(sock:fd(), {})
-- # ok: T1004
socket.iowait(sock:fd(), {}, timeout)
local vshard = require("vshard")

-- # ok: T1004
vshard.router.bootstrap({timeout = 4, if_not_bootstrapped = true})
-- # ruleid: T1004
vshard.router.bootstrap({if_not_bootstrapped = true})
local args = {{customer_id = 2, bucket_id = 100, name = 'name2', accounts = {}}}
-- # ok: T1004
vshard.router.call(100, {mode='write'}, 'customer_add', args, {timeout = 5})
-- # ruleid: T1004
vshard.router.call(100, {mode='write'}, 'customer_add', args, {})
-- # ok: T1004
vshard.router.callro(100, 'function_name', args, {timeout = 5})
-- # ruleid: T1004
vshard.router.callro(100, 'function_name', args, {})
-- # ok: T1004
vshard.router.callrw(100, 'function_name', args, {timeout = 5})
-- # ruleid: T1004
vshard.router.callrw(100, 'function_name', args, {})
-- # ok: T1004
vshard.router.callre(100, 'function_name', args, {timeout = 5})
-- # ruleid: T1004
vshard.router.callre(100, 'function_name', args, {})
-- # ok: T1004
vshard.router.callbro(100, 'function_name', args, {timeout = 5})
-- # ruleid: T1004
vshard.router.callbro(100, 'function_name', args, {})
-- # ok: T1004
vshard.router.callbre(100, 'function_name', args, {timeout = 5})
-- # ruleid: T1004
vshard.router.callbre(100, 'function_name', args, {})
-- # ok: T1004
vshard.router.map_callrw('function_name', args, {timeout = 5})
-- # ruleid: T1004
vshard.router.map_callrw('function_name', args, {})
