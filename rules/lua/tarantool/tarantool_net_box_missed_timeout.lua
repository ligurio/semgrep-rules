local net_box = require("net.box")

-- # ruleid: tarantool_net_box_missed_timeout
local conn = net_box.connect("localhost:3301")

-- # ruleid: tarantool_net_box_missed_timeout
local conn2 = net_box.new("localhost:3301")

-- # ok: tarantool_net_box_missed_timeout
local conn3 = net_box.connect("localhost:3301")
conn3:timeout(5)
