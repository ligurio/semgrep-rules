-- not X == Y is equivalent to (not X) == Y; consider using X ~= Y, or wrap one
-- of the expressions in parentheses to silence.
-- # ruleid: lua_comparison_precedence
if not x == 5 then
end

-- X <= Y <= Z is equivalent to (X <= Y) <= Z; wrap one of the expressions in
-- parentheses to silence.
-- # ruleid: lua_comparison_precedence
if 1 <= x <= 3 then
end
