local fio = require("fio")

-- # ruleid: tarantool_fio_fd_leak
local fd = fio.open("")

-- # todoruleid: tarantool_fio_fd_leak
assert(fio.open(""))
