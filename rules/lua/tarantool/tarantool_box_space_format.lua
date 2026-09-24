-- # ruleid: tarantool_box_space_format
box.schema.space.create("space", {
    format = {},
})

-- # ok: tarantool_box_space_format
box.schema.space.create("space", {
    field_count = 1,
})
