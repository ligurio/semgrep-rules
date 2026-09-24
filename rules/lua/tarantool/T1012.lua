-- # ruleid: T1012
box.schema.space.create("space", {
    format = {},
})

-- # ok: T1012
box.schema.space.create("space", {
    field_count = 1,
})
