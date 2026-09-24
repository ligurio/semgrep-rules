-- Variable 'i' shadows previous declaration in the enclosing loop
local function foo()
    -- # ruleid: lua_local_shadow
    for i=1,10 do
        for i=1,10 do
            print(i)
        end
    end
end
