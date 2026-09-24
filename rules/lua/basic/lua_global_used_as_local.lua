local function testFunc(a)
    if a < 5 then
        -- Global 'b' is only used in the enclosing function
        -- # ruleid: lua_global_used_as_local
        b = 1
    else
        -- # ruleid: lua_global_used_as_local
        b = 2
    end
    print(b)
end
