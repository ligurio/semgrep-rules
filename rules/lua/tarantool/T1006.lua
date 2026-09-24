local resp
local url = "https://www.tarantool.io/en/"

local http_client = require('http.client')
resp = http_client.get(url)
-- # ruleid: T1006
resp:json()

local http_client = require('http.client').new({max_connections = 5})
resp = http_client.get(url)
-- # ruleid: T1006
resp:json()

-- # ok: T1006
pcall(resp.json, resp)
