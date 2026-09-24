-- Hexadecimal number literal exceeded available precision and was truncated
-- # ruleid: lua_integer_parsing
local x = 0x1111111111111111111111111111111111111

-- Number literal exceeded available precision and was truncated to closest
-- representable number
local x = 9007199254740993
