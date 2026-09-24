local vshard = require("vshard")

local key = 100
-- # ruleid: T1022
vshard.router.bucket_id_strcrc32(key)

-- # ok: T1022
vshard.router.bucket_id_mpcrc32(key)
