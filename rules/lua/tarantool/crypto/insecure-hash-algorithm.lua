local crypto = require("crypto")

local key = ""
local iv = ""

-- ruleid: insecure-hash-algorithm
crypto.cipher.des.cbc.encrypt(str, key, iv)

-- ruleid: insecure-hash-algorithm
crypto.cipher.des.cfb.encrypt(str, key, iv)

-- ruleid: insecure-hash-algorithm
crypto.cipher.des.ecb.encrypt(str, key, iv)

-- ruleid: insecure-hash-algorithm
crypto.cipher.des.ofb.encrypt(str, key, iv)
