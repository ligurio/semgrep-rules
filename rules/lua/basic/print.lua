local a = { 1, 2, 3 }

-- ruleid: print
print(a, 2)

-- ruleid: print
print(a)

-- ruleid: print
print(4, a)

-- ruleid: print
print(a)

local f = function() return end
-- ruleid: print
print(f)

local function f() return end
-- ruleid: print
print(f)

local co = coroutine.create(f)
-- ruleid: print
print(co)
