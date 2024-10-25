local a = { 1, 2, 3 }

-- ruleid: lua_print_unprintable
print(a, 2)

-- ruleid: lua_print_unprintable
print(a)

-- ruleid: lua_print_unprintable
print(4, a)

-- ruleid: lua_print_unprintable
print(a)

local f = function() return end
-- ruleid: lua_print_unprintable
print(f)

local function f() return end
-- ruleid: lua_print_unprintable
print(f)

local co = coroutine.create(f)
-- ruleid: lua_print_unprintable
print(co)
