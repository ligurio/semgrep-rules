local fio = require("fio")

local fh
fh = fio.open("example.txt", 'w')
-- # ok: tarantool_fio_writing_to_file_in_read_mode
fh:write("I'm writable!")
fh.close()

fh = fio.open("example.txt", 'r')
-- # ruleid: tarantool_fio_writing_to_file_in_read_mode
fh:write("whoops, I'm not writable!")
fh:close()
