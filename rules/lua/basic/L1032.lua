-- The and-or expression always evaluates to the second alternative because the
-- first alternative is false; consider using if-then-else expression instead.
-- # ruleid: L1032
local x = flag and false or true
