local f1 = function() return end
local f2 = function() return end

-- # ruleid: lua_cmp_by_reference
print(f1 == f2)

-- # ruleid: lua_cmp_by_reference
print(f1 ~= f2)

local co1 = coroutine.create(f1)
local co2 = coroutine.create(f2)

-- # ruleid: lua_cmp_by_reference
print(co1 == co2)

-- # ruleid: lua_cmp_by_reference
print(co1 ~= co2)
