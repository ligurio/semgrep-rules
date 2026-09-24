local fio = require("fio")

local fh
fh = fio.open("example.txt", 'w')
-- # ok: T1020
fh:write("I'm writable!")
fh.close()

fh = fio.open("example.txt", 'r')
-- # ruleid: T1020
fh:write("whoops, I'm not writable!")
fh:close()
