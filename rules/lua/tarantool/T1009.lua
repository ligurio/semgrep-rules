local popen = require("popen")

-- # ruleid: T1009
local p = popen.new("echo", {
    close_fds = true,
    shell = true,
    close_fds = true,
})

-- # ok: T1009
local p = popen.new("echo", {
    close_fds = false,
})
