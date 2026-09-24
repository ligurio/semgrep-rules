local tap = require('tap')
local test = tap.test('foo')

-- # ruleid: tarantool_tap_missed_test_comment
test:ok(1 > 0)
-- # ruleid: tarantool_tap_missed_test_comment
test:is(1, 2)
-- # ruleid: tarantool_tap_missed_test_comment
test:isnt(1, true)
-- # ruleid: tarantool_tap_missed_test_comment
test:is_deeply(1, 2)
-- # ruleid: tarantool_tap_missed_test_comment
test:like(1, 2)
-- # ruleid: tarantool_tap_missed_test_comment
test:unlike(1, 2)
-- # ruleid: tarantool_tap_missed_test_comment
test:isnil(true)
-- # ruleid: tarantool_tap_missed_test_comment
test:isstring('string')
-- # ruleid: tarantool_tap_missed_test_comment
test:isnumber(2)
-- # ruleid: tarantool_tap_missed_test_comment
test:istable({})
-- # ruleid: tarantool_tap_missed_test_comment
test:isboolean(true)
-- # ruleid: tarantool_tap_missed_test_comment
test:isudata(newproxy(), 'type')

-- # ok: tarantool_tap_missed_test_comment
test:ok(1 > 0, 'comment')
-- # ok: tarantool_tap_missed_test_comment
test:is(1, 2, 'comment')
-- # ok: tarantool_tap_missed_test_comment
test:isnt(1, true, 'comment')
-- # ok: tarantool_tap_missed_test_comment
test:is_deeply(1, 2, 'comment')
-- # ok: tarantool_tap_missed_test_comment
test:like(1, 2, 'comment')
-- # ok: tarantool_tap_missed_test_comment
test:unlike(1, 2, 'comment')
-- # ok: tarantool_tap_missed_test_comment
test:isnil(true, 'comment')
-- # ok: tarantool_tap_missed_test_comment
test:isstring('string', 'comment')
-- # ok: tarantool_tap_missed_test_comment
test:isnumber(2, 'comment')
-- # ok: tarantool_tap_missed_test_comment
test:istable({}, 'comment')
-- # ok: tarantool_tap_missed_test_comment
test:isboolean(true, 'comment')
-- # ok: tarantool_tap_missed_test_comment
test:isudata(newproxy(), 'type', 'comment')
