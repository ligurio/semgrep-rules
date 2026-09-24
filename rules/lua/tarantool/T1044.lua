local fiber = require("fiber")

-- # ruleid: T1044
fiber.yield()

-- # ok: T1044
pcall(fiber.yield)
