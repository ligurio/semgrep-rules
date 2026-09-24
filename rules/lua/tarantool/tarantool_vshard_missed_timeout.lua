local vshard = require("vshard")

-- # ok: tarantool_vshard_no_timeouts
vshard.router.bootstrap({timeout = 4, if_not_bootstrapped = true})
-- # ruleid: tarantool_vshard_no_timeouts
vshard.router.bootstrap({if_not_bootstrapped = true})
local args = {{customer_id = 2, bucket_id = 100, name = 'name2', accounts = {}}}
-- # ok: tarantool_vshard_no_timeouts
vshard.router.call(100, {mode='write'}, 'customer_add', args, {timeout = 5})
-- # ruleid: tarantool_vshard_no_timeouts
vshard.router.call(100, {mode='write'}, 'customer_add', args, {})
-- # ok: tarantool_vshard_no_timeouts
vshard.router.callro(100, 'function_name', args, {timeout = 5})
-- # ruleid: tarantool_vshard_no_timeouts
vshard.router.callro(100, 'function_name', args, {})
-- # ok: tarantool_vshard_no_timeouts
vshard.router.callrw(100, 'function_name', args, {timeout = 5})
-- # ruleid: tarantool_vshard_no_timeouts
vshard.router.callrw(100, 'function_name', args, {})
-- # ok: tarantool_vshard_no_timeouts
vshard.router.callre(100, 'function_name', args, {timeout = 5})
-- # ruleid: tarantool_vshard_no_timeouts
vshard.router.callre(100, 'function_name', args, {})
-- # ok: tarantool_vshard_no_timeouts
vshard.router.callbro(100, 'function_name', args, {timeout = 5})
-- # ruleid: tarantool_vshard_no_timeouts
vshard.router.callbro(100, 'function_name', args, {})
-- # ok: tarantool_vshard_no_timeouts
vshard.router.callbre(100, 'function_name', args, {timeout = 5})
-- # ruleid: tarantool_vshard_no_timeouts
vshard.router.callbre(100, 'function_name', args, {})
-- # ok: tarantool_vshard_no_timeouts
vshard.router.map_callrw('function_name', args, {timeout = 5})
-- # ruleid: tarantool_vshard_no_timeouts
vshard.router.map_callrw('function_name', args, {})
