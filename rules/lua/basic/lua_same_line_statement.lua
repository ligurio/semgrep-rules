-- A new statement is on the same line; add semi-colon to silence
-- # ruleid: lua_same_line_statement
if b < 0 then local a = b + 1 print(a, b) end
