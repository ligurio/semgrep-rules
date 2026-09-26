local function pair()
  return 1, 2
end

-- # ruleid: L1052
local x, y, z = 1, 2

-- # ruleid: L1052
local w = 1, 2

-- # ruleid: L1052
local a, b = 1, 2, 3

-- # ok: L1052
local p, q, r = pair()

-- # ok: L1052
local s, t = pair()
