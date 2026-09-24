local t = require('luatest')
local g = t.group()

-- # ok: tarantool_luatest_missed_test_prefix
g.test_example_1 = function() end
-- # ruleid: tarantool_luatest_missed_test_prefix
g.example_2_test = function() end

-- Define suite hooks.
-- # ok: tarantool_luatest_missed_test_prefix
g.after_suite()
-- # ok: tarantool_luatest_missed_test_prefix
g.before_suite()

-- Hooks to run once for tests group.
-- # ok: tarantool_luatest_missed_test_prefix
g.before_all()
-- # ok: tarantool_luatest_missed_test_prefix
g.after_all()

-- Hooks to run for each test in group.
-- # ok: tarantool_luatest_missed_test_prefix
g.before_each()
-- # ok: tarantool_luatest_missed_test_prefix
g.after_each()

-- -- Hooks to run for a specified test in group.
-- # ok: tarantool_luatest_missed_test_prefix
g.before_test('test_example_1', function() end)
-- # ok: tarantool_luatest_missed_test_prefix
g.after_test('test_example_2', function() end)
