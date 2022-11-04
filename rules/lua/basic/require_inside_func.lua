local fn1, fn2, fn3

function fn1()
    -- ruleid: require_inside_func
    require("module")
    print()
end

fn2 = function()
    print()
    -- ruleid: require_inside_func
    require("module")
end

f3 = function()
    print()
    -- ruleid: require_inside_func
    local m = require("module")
end
