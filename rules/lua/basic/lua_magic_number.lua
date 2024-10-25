local a = 1
local b = 1

-- ruleid: lua_magic_number
assert(4 == a)

-- ruleid: lua_magic_number
assert(a > 4)

-- ruleid: lua_magic_number
assert(a <= 8)

-- ok: lua_magic_number
assert(a <= b)

-- ruleid: lua_magic_number
assert(a and 3)

-- ok: lua_magic_number
assert(a and b)

-- ruleid: lua_magic_number
assert(a or 3)

-- ok: lua_magic_number
assert(a or b)

-- ruleid: lua_magic_number
assert(a and 3 or 7)

-- ruleid: lua_magic_number
if (a == 6) then
    return
end

-- ruleid: lua_magic_number
math.sin(4)
