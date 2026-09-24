local f1 = function() return end
local f2 = function() return end

-- # ruleid: L1010
print(f1 == f2)

-- # ruleid: L1010
print(f1 ~= f2)

local co1 = coroutine.create(f1)
local co2 = coroutine.create(f2)

-- # ruleid: L1010
print(co1 == co2)

-- # ruleid: L1010
print(co1 ~= co2)
