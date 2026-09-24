-- Function 'bar' is never used; prefix with '_' to silence
-- # ruleid: lua_function_unused
local function bar()
end

local function foo()
end

return foo()
