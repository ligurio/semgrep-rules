local digest = require("digest")

local str = ""
-- # ruleid: tarantool_digest_insecure_hash_algorithm_md4
digest.md4(str)

-- # ruleid: tarantool_digest_insecure_hash_algorithm_md5
digest.md5(str)

-- # ruleid: tarantool_digest_insecure_hash_algorithm_sha1
digest.sha1(str)
