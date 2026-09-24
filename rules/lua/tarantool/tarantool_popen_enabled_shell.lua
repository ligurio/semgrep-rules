local popen = require("popen")

-- # ruleid: tarantool_popen_enabled_shell
local p = popen.new("echo", {
    close_fds = true,
    shell = true,
    close_fds = true,
})

-- # ok: tarantool_popen_enabled_shell
local p = popen.new("echo", {
    close_fds = false,
})
