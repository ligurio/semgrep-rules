local t1 = {1, 2, 3}
local t2 = {1, 2, 3}

-- todoruleid: cmp_reference
print(t1 == t2)

-- todoruleid: cmp_reference
print(t1 ~= t2)

-- todoruleid: cmp_reference
local f1 = function() return end

-- ruleid: cmp_reference
local function f2() return end
print(f1 == f2)

local co1 = coroutine.create(f1)
local co2 = coroutine.create(f2)

-- ruleid: cmp_reference
print(co1 == co2)

-- ruleid: cmp_reference
print(co1 ~= co2)
