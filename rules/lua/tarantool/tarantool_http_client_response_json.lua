local resp
local url = "https://www.tarantool.io/en/"

local http_client = require('http.client')
resp = http_client.get(url)
-- # ruleid: tarantool_http_client_response_json
resp:json()

local http_client = require('http.client').new({max_connections = 5})
resp = http_client.get(url)
-- # ruleid: tarantool_http_client_response_json
resp:json()

-- # ok: tarantool_http_client_response_json
pcall(resp.json, resp)
