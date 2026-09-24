local net_box = require("net.box")
local fd

-- # ruleid: tarantool_net_box_fd_leak
fd = net_box.new("")

-- # ruleid: tarantool_net_box_fd_leak
fd = net_box.connect("")

-- # todoruleid: tarantool_net_box_fd_leak
assert(net_box.new(""))

-- # todoruleid: tarantool_net_box_fd_leak
assert(net_box.connect(""))
