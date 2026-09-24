-- # ruleid: L1074
function foo(a, b, a) -- Function parameter 'a' already defined on column 14
end

-- # ruleid: L1074
function obj:method(self) -- Function parameter 'self' already defined implicitly
end

-- # ruleid: L1074
local x, y, x = v:GetComponents() -- Variable 'x' already defined on column 7
-- Variable 'i' shadows previous declaration in the enclosing loop
local function foo()
    -- # ruleid: L1074
    for i=1,10 do
        for i=1,10 do
            print(i)
        end
    end
end
