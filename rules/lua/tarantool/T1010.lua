-- # ok: T1010
box.space.name:insert({"City", "Saint-Petersburg", box.NULL})
-- # ruleid: T1010
box.space.name:insert({"City", "Saint-Petersburg", nil})

-- # ok: T1010
box.space[name]:insert({"City", "Saint-Petersburg", box.NULL})
-- # ruleid: T1010
box.space[name]:insert({"City", "Saint-Petersburg", nil})
