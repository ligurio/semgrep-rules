local fiber = require("fiber")

local f

f = fiber.create()
-- # ok: tarantool_fiber_missed_timeout
f:join(10)
-- # ruleid: tarantool_fiber_missed_timeout
f:join()

f = fiber.new()
-- # ok: tarantool_fiber_missed_timeout
f:join(10)
-- # ruleid: tarantool_fiber_missed_timeout
f:join()

local ch = fiber.channel()
-- # ok: tarantool_fiber_missed_timeout
ch:put("put", 3)
-- # ruleid: tarantool_fiber_missed_timeout
ch:put("put")
-- # ok: tarantool_fiber_missed_timeout
ch:get("get", 5)
-- # ruleid: tarantool_fiber_missed_timeout
ch:get("get")

local cond = fiber.cond()
-- # ok: tarantool_fiber_missed_timeout
cond:wait(10)
-- # ruleid: tarantool_fiber_missed_timeout
cond:wait()
