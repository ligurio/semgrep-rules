local crypto = require("crypto")

local key = ""
local iv = ""

-- # ruleid: T1008
crypto.cipher.des.cbc.encrypt(str, key, iv)

-- # ruleid: T1008
crypto.cipher.des.cfb.encrypt(str, key, iv)

-- # ruleid: T1008
crypto.cipher.des.ecb.encrypt(str, key, iv)

-- # ruleid: T1008
crypto.cipher.des.ofb.encrypt(str, key, iv)
local digest = require("digest")

local str = ""
-- # ruleid: T1008
digest.md4(str)

-- # ruleid: T1008
digest.md5(str)

-- # ruleid: T1008
digest.sha1(str)
