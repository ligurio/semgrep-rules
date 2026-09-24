local fd

fd = io.open("")
fd:read("*a")
fd:close()
-- # ruleid: T1019
fd:read("*a")

fd = io.open("")
fd:read("*a")
io.close(fd)
-- # ruleid: T1019
fd:read("*a")

fd = io.lines("")
fd:read("*a")
fd:close()
-- # ruleid: T1019
fd:read("*a")

fd = io.lines("")
fd:read("*a")
io.close(fd)
-- # ruleid: T1019
fd:read("*a")
local fd

fd = io.open("")
fd:read("*a")
fd:close()
-- # ruleid: T1019
fd:read("*a")

fd = io.open("")
fd:read("*a")
io.close(fd)
-- # ruleid: T1019
fd:read("*a")

fd = io.lines("")
fd:read("*a")
fd:close()
-- # ruleid: T1019
fd:read("*a")

fd = io.lines("")
fd:read("*a")
io.close(fd)
-- # ruleid: T1019
fd:read("*a")
local fd

fd = io.open("")
fd:read("*a")
fd:close()
-- # ruleid: T1019
fd:read("*a")

fd = io.open("")
fd:read("*a")
io.close(fd)
-- # ruleid: T1019
fd:read("*a")

fd = io.lines("")
fd:read("*a")
fd:close()
-- # ruleid: T1019
fd:read("*a")

fd = io.lines("")
fd:read("*a")
io.close(fd)
-- # ruleid: T1019
fd:read("*a")
