local fio = require("fio")

-- # ruleid: T1032
local fh = io.open("/var/log/app.log", "r")

-- # ok: T1032
local fh2 = fio.open("/var/log/app.log", {"O_RDONLY"})

-- Writing to stdout is not replaced by fio.
-- # ok: T1032
io.write("hello\n")
