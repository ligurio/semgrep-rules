box.space._schema:select{}
box.space._schema:delete('oncehello')

-- # ruleid: tarantool_box_once
box.once('hello', function() end)
