local vshard = require("vshard")

local key = 100
-- ruleid: bad_hash_func
vshard.router.bucket_id_strcrc32(key)

-- ok: bad_hash_func
vshard.router.bucket_id_mpcrc32(key)
