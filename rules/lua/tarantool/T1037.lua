local space = box.space.users

-- # ruleid: T1037
box.space.users:insert{1, "Ann"}

-- # ruleid: T1037
box.space.users:delete{1}

-- # ok: T1037
local tuple, err = box.space.users:insert{1, "Ann"}

-- # ruleid: T1037
box.space.users:replace{1, "Bob"}

local ok, err2 = pcall(box.space.users.insert, box.space.users, {1, "Bob"})
