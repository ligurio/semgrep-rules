local space = box.schema.space.create('tmp', {temporary=true})

-- # ok: T1013
space:select()
-- # ok: T1013
space:select(nil)

-- # ok: T1013
box.space.name:select()
-- # ok: T1013
box.space.name:select(nil)
-- # ok: T1013
box.space[name]:select()
-- # ok: T1013
box.space[name]:select(nil)
