-- # ruleid: T1031
local co = coroutine.create(function()
  -- # ruleid: T1031
  coroutine.yield()
end)

-- # ruleid: T1031
coroutine.resume(co)

local fiber = require("fiber")

-- # ok: T1031
local f = fiber.create(function()
  fiber.sleep(1)
end)
