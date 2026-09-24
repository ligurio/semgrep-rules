-- # ok: tarantool_box_insert_nil
box.space.name:insert({"City", "Saint-Petersburg", box.NULL})
-- # ruleid: tarantool_box_insert_nil
box.space.name:insert({"City", "Saint-Petersburg", nil})

-- # ok: tarantool_box_insert_nil
box.space[name]:insert({"City", "Saint-Petersburg", box.NULL})
-- # ruleid: tarantool_box_insert_nil
box.space[name]:insert({"City", "Saint-Petersburg", nil})
