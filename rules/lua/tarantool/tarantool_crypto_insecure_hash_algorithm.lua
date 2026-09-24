local crypto = require("crypto")

local key = ""
local iv = ""

-- # ruleid: tarantool_crypto_insecure_hash_algorithm
crypto.cipher.des.cbc.encrypt(str, key, iv)

-- # ruleid: tarantool_crypto_insecure_hash_algorithm
crypto.cipher.des.cfb.encrypt(str, key, iv)

-- # ruleid: tarantool_crypto_insecure_hash_algorithm
crypto.cipher.des.ecb.encrypt(str, key, iv)

-- # ruleid: tarantool_crypto_insecure_hash_algorithm
crypto.cipher.des.ofb.encrypt(str, key, iv)
