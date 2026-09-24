local fiber = require("fiber")

local fn = function() return end

-- # todook: T1023
local f1 = fiber.create(fn)
-- # todoruleid: T1023
local f2 = fiber.create(fn)

-- # todook: T1023
local f3 = fiber.new(fn)
-- # todoruleid: T1023
local f4 = fiber.new(fn)

f1:name("fiber_name")
f3:name("fiber_name")
local fiber = require("fiber")

local fn1 = function()
    fiber.testcancel()
end

local fn1_wo_testcancel = function()
end

-- # ruleid: T1023
fiber.new(fn1_wo_testcancel)
-- # ok: T1023
fiber.new(fn1)

local function fn2()
    fiber.testcancel()
end

local function fn2_wo_testcancel()
end

-- # ok: T1023
fiber.create(fn2)
-- # ruleid: T1023
fiber.create(fn2_wo_testcancel)
