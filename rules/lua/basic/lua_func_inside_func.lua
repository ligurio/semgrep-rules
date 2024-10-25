local fn

function fn()
    -- ruleid: lua_func_inside_func
    local f1 = function()
    end
end

function fn()
    -- ruleid: lua_func_inside_func
    local function f1()
    end
end

fn = function()
    -- ruleid: lua_func_inside_func
    local function f1()
    end
end

fn = function()
    -- ruleid: lua_func_inside_func
    local f1 = function()
    end
end
