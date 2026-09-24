-- The and-or expression always evaluates to the second alternative because the
-- first alternative is false; consider using if-then-else expression instead.
-- # ruleid: lua_misleading_and_or
local x = flag and false or true
