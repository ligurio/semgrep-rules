local t1 = {1, 2, 3}
local t2 = {1, 2, 3}

-- todoruleid: lua_cmp_by_reference
print(t1 == t2)

-- todoruleid: lua_cmp_by_reference
print(t1 ~= t2)

-- todoruleid: lua_cmp_by_reference
local f1 = function() return end

-- ruleid: lua_cmp_by_reference
local function f2() return end
print(f1 == f2)

local co1 = coroutine.create(f1)
local co2 = coroutine.create(f2)

-- ruleid: lua_cmp_by_reference
print(co1 == co2)

-- ruleid: lua_cmp_by_reference
print(co1 ~= co2)
