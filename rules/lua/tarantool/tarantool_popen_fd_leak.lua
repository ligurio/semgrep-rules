local popen = require("popen")

-- # ruleid: tarantool_popen_fd_leak
local _ = popen.new("")

-- # todoruleid: tarantool_popen_fd_leak
assert(popen.new(""))
