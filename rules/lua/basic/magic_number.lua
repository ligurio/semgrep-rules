local a = 1
local b = 1

-- ruleid: magic_number
assert(4 == a)

-- ruleid: magic_number
assert(a > 4)

-- ruleid: magic_number
assert(a <= 8)

-- ok: magic_number
assert(a <= b)

-- ruleid: magic_number
assert(a and 3)

-- ok: magic_number
assert(a and b)

-- ruleid: magic_number
assert(a or 3)

-- ok: magic_number
assert(a or b)

-- ruleid: magic_number
assert(a and 3 or 7)

-- ruleid: magic_number
if (a == 6) then
    return
end

-- ruleid: magic_number
math.sin(4)
