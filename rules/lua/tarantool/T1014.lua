-- # ok: T1014
box.schema.space.create('tmp', { if_not_exists = true })
-- # ruleid: T1014
box.schema.space.create('tmp', { })
-- # ruleid: T1014
box.schema.space.create('tmp')

-- # ok: T1014
box.schema.func.create('my_func', {
    takes_raw_args = true,
	if_not_exists = true,
})
-- # ruleid: T1014
box.schema.func.create('my_func', { takes_raw_args = true })

local space
space = box.schema.space.create('tmp', { if_not_exists = true })
-- # ok: T1014
space:create_index('idx', { if_not_exists = true })

space = box.schema.space.create('tmp', { if_not_exists = true })
-- # ruleid: T1014
space:create_index('idx', { unique = true })
