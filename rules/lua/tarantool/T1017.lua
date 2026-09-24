local fio = require("fio")

-- # ok: T1017
fio.chmod("path", tonumber("600", 8))

-- # ruleid: T1017
fio.chmod("path", tonumber("606", 8))

-- # ruleid: T1017
fio.chmod("path", tonumber("700", 8))

-- # ruleid: T1017
fio.chmod("path", tonumber("777", 8))
