local url = "https://bronevichok.ru/"
local body

local http_client = require("http.client")
-- # ruleid: T1007
http_client.request("PUT", url, body, { verify_host = false })
-- # ruleid: T1007
http_client.request("PUT", url, body, { verify_peer = false })
-- # ruleid: T1007
http_client.get(url, body, { verify_peer = false })
-- # ruleid: T1007
http_client.post(url, body, { verify_peer = false })
-- # ruleid: T1007
http_client.put(url, body, { verify_peer = false })
-- # ruleid: T1007
http_client.patch(url, body, { verify_peer = false })
-- # ruleid: T1007
http_client.options(url, body, { verify_peer = false })
-- # ruleid: T1007
http_client.head(url, body, { verify_peer = false })
-- # ruleid: T1007
http_client.delete(url, body, { verify_peer = false })
-- # ruleid: T1007
http_client.trace(url, body, { verify_peer = false })
-- # ruleid: T1007
http_client.connect(url, body, { verify_peer = false })

http_client = require("http.client").new()
-- # ruleid: T1007
http_client:request("PUT", url, body, { verify_host = false })
-- # ruleid: T1007
http_client:request("PUT", url, body, { verify_peer = false })
-- # ruleid: T1007
http_client:get(url, body, { verify_peer = false })
-- # ruleid: T1007
http_client:post(url, body, { aaa = false, verify_peer = false })
-- # ruleid: T1007
http_client:put(url, body, { verify_peer = false })
-- # ruleid: T1007
http_client:patch(url, body, { verify_peer = false })
-- # ruleid: T1007
http_client:options(url, body, { verify_peer = false })
-- # ruleid: T1007
http_client:head(url, body, { verify_peer = false })
-- # ruleid: T1007
http_client:delete(url, body, { verify_peer = false })
-- # ruleid: T1007
http_client:trace(url, body, { verify_peer = false })
-- # ruleid: T1007
http_client:connect(url, body, { verify_peer = false })
