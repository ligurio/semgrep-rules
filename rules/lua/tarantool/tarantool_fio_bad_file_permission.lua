local fio = require("fio")

-- # ok: tarantool_fio_bad_file_permission
fio.chmod("path", tonumber("600", 8))

-- # ruleid: tarantool_fio_bad_file_permission
fio.chmod("path", tonumber("606", 8))

-- # ruleid: tarantool_fio_bad_file_permission
fio.chmod("path", tonumber("700", 8))

-- # ruleid: tarantool_fio_bad_file_permission
fio.chmod("path", tonumber("777", 8))
