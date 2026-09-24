-- # ruleid: tarantool_deprecated_lua_api
box.session.push({}, 5)

-- # ruleid: tarantool_deprecated_lua_api
box.session.push()

local space = box.schema.space_create("space")
-- # ruleid: tarantool_deprecated_lua_api
space:select(..., {iterator = 'GT'})

-- # ruleid: tarantool_deprecated_lua_api
box.cfg({bootstrap_strategy = "legacy"})

-- # ruleid: tarantool_deprecated_lua_api
box.cfg({election_fencing_mode = true})

-- # ruleid: tarantool_deprecated_lua_api
box.cfg({logger = ""})

-- # ruleid: tarantool_deprecated_lua_api
box.cfg({logger_nonblock = ""})

-- # ruleid: tarantool_deprecated_lua_api
box.cfg({panic_on_snap_error = ""})

-- # ruleid: tarantool_deprecated_lua_api
box.cfg({panic_on_wal_error = ""})

-- # ruleid: tarantool_deprecated_lua_api
box.cfg({replication_source = ""})

-- # ruleid: tarantool_deprecated_lua_api
box.cfg({rows_per_wal = ""})

-- # ruleid: tarantool_deprecated_lua_api
box.cfg({slab_alloc_arena = ""})

-- # ruleid: tarantool_deprecated_lua_api
box.cfg({slab_alloc_maximal = ""})

-- # ruleid: tarantool_deprecated_lua_api
box.cfg({slab_alloc_minimal = ""})

-- # ruleid: tarantool_deprecated_lua_api
box.cfg({snap_dir = ""})

-- # ruleid: tarantool_deprecated_lua_api
box.cfg({snapshot_count = ""})

-- # ruleid: tarantool_deprecated_lua_api
box.cfg({snapshot_period = ""})

-- # ruleid: tarantool_deprecated_lua_api
box.cfg({wal_cleanup_delay = 0.1})
