local fiber = require("fiber")

local fn1 = function()
    fiber.testcancel()
end

local fn1_wo_testcancel = function()
end

-- # ruleid: tarantool_fiber_missed_testcancel
fiber.new(fn1_wo_testcancel)
-- # ok: tarantool_fiber_missed_testcancel
fiber.new(fn1)

local function fn2()
    fiber.testcancel()
end

local function fn2_wo_testcancel()
end

-- # ok: tarantool_fiber_missed_testcancel
fiber.create(fn2)
-- # ruleid: tarantool_fiber_missed_testcancel
fiber.create(fn2_wo_testcancel)
