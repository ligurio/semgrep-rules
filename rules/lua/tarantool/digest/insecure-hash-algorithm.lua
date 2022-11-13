local digest = require("digest")

local str = ""
-- ruleid: insecure-hash-algorithm-md4
digest.md4(str)

-- ruleid: insecure-hash-algorithm-md5
digest.md5(str)

-- ruleid: insecure-hash-algorithm-sha1
digest.sha1(str)
