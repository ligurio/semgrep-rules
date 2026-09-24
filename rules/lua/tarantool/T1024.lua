local t = require('luatest')
local g = t.group()

-- # ok: T1024
g.test_example_1 = function() end
-- # ruleid: T1024
g.example_2_test = function() end

-- Define suite hooks.
-- # ok: T1024
g.after_suite()
-- # ok: T1024
g.before_suite()

-- Hooks to run once for tests group.
-- # ok: T1024
g.before_all()
-- # ok: T1024
g.after_all()

-- Hooks to run for each test in group.
-- # ok: T1024
g.before_each()
-- # ok: T1024
g.after_each()

-- -- Hooks to run for a specified test in group.
-- # ok: T1024
g.before_test('test_example_1', function() end)
-- # ok: T1024
g.after_test('test_example_2', function() end)
