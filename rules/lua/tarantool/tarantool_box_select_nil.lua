local space = box.schema.space.create('tmp', {temporary=true})

-- # ok: tarantool_box_select_nil
space:select()
-- # ok: tarantool_box_select_nil
space:select(nil)

-- # ok: tarantool_box_select_nil
box.space.name:select()
-- # ok: tarantool_box_select_nil
box.space.name:select(nil)
-- # ok: tarantool_box_select_nil
box.space[name]:select()
-- # ok: tarantool_box_select_nil
box.space[name]:select(nil)
