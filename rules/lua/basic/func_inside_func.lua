local fn

function fn()
    -- ruleid: func_inside_func
    local f1 = function()
    end
end

function fn()
    -- ruleid: func_inside_func
    local function f1()
    end
end

fn = function()
    -- ruleid: func_inside_func
    local function f1()
    end
end

fn = function()
    -- ruleid: func_inside_func
    local f1 = function()
    end
end
