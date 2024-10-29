-- ok: tarantool_box_missed_if_not_exist
box.schema.space.create('tmp', { if_not_exists = true })
-- ruleid: tarantool_box_missed_if_not_exist
box.schema.space.create('tmp', { })
-- ruleid: tarantool_box_missed_if_not_exist
box.schema.space.create('tmp')

-- ok: tarantool_box_missed_if_not_exist
box.schema.func.create('my_func', {
    takes_raw_args = true,
	if_not_exists = true,
})
-- ruleid: tarantool_box_missed_if_not_exist
box.schema.func.create('my_func', { takes_raw_args = true })

local space
space = box.schema.space.create('tmp', { if_not_exists = true })
-- ok: tarantool_box_missed_if_not_exist
space:create_index('idx', { if_not_exists = true })

space = box.schema.space.create('tmp', { if_not_exists = true })
-- ruleid: tarantool_box_missed_if_not_exist
space:create_index('idx', { unique = true })
