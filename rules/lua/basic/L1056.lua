local fn1, fn2, fn3

function fn1()
    -- # ruleid: L1056
    require("module")
    print()
end

fn2 = function()
    print()
    -- # ruleid: L1056
    require("module")
end

f3 = function()
    print()
    -- # ruleid: L1056
    local m = require("module")
end
