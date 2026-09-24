local fiber = require("fiber")

local fn = function() return end

-- # todook: tarantool_fiber_missed_name
local f1 = fiber.create(fn)
-- # todoruleid: tarantool_fiber_missed_name
local f2 = fiber.create(fn)

-- # todook: tarantool_fiber_missed_name
local f3 = fiber.new(fn)
-- # todoruleid: tarantool_fiber_missed_name
local f4 = fiber.new(fn)

f1:name("fiber_name")
f3:name("fiber_name")
