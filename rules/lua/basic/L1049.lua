local a = { 1, 2, 3 }

-- # ruleid: L1049
print(a, 2)

-- # ruleid: L1049
print(a)

-- # ruleid: L1049
print(4, a)

-- # ruleid: L1049
print(a)

local f = function() return end
-- # ruleid: L1049
print(f)

local function f() return end
-- # ruleid: L1049
print(f)

local co = coroutine.create(f)
-- # ruleid: L1049
print(co)
