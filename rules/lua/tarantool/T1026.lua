-- # ruleid: T1026
box.session.push({}, 5)

-- # ruleid: T1026
box.session.push()

local space = box.schema.space_create("space")
-- # ruleid: T1026
space:select(..., {iterator = 'GT'})

-- # ruleid: T1026
box.cfg({bootstrap_strategy = "legacy"})

-- # ruleid: T1026
box.cfg({election_fencing_mode = true})

-- # ruleid: T1026
box.cfg({logger = ""})

-- # ruleid: T1026
box.cfg({logger_nonblock = ""})

-- # ruleid: T1026
box.cfg({panic_on_snap_error = ""})

-- # ruleid: T1026
box.cfg({panic_on_wal_error = ""})

-- # ruleid: T1026
box.cfg({replication_source = ""})

-- # ruleid: T1026
box.cfg({rows_per_wal = ""})

-- # ruleid: T1026
box.cfg({slab_alloc_arena = ""})

-- # ruleid: T1026
box.cfg({slab_alloc_maximal = ""})

-- # ruleid: T1026
box.cfg({slab_alloc_minimal = ""})

-- # ruleid: T1026
box.cfg({snap_dir = ""})

-- # ruleid: T1026
box.cfg({snapshot_count = ""})

-- # ruleid: T1026
box.cfg({snapshot_period = ""})

-- # ruleid: T1026
box.cfg({wal_cleanup_delay = 0.1})
