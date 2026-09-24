-- Invalid match pattern: invalid capture reference, must refer to a closed capture
-- # ruleid: lua_format_string
local cap = string.match(s, "(%d)%2")

-- Invalid format string: unfinished format specifier
local str = ("%d %"):format(1, 2)
