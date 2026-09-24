local fio = require("fio")

-- # ruleid: T1032
local fh = io.open("/var/log/app.log", "r")

-- # ok: T1032
local fh2 = fio.open("/var/log/app.log", {"O_RDONLY"})
