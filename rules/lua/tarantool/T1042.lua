local t = require("luatest")
local g = t.group()

g.test_example = function()
  -- # ruleid: T1042
  assert(1 == 1)
end
