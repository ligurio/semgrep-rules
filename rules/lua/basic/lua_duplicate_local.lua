-- # ruleid: lua_duplicate_local
function foo(a, b, a) -- Function parameter 'a' already defined on column 14
end

-- # ruleid: lua_duplicate_local
function obj:method(self) -- Function parameter 'self' already defined implicitly
end

-- # ruleid: lua_duplicate_local
local x, y, x = v:GetComponents() -- Variable 'x' already defined on column 7
