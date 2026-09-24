local fh

-- # ruleid: L1048
fh = io.open("file")

-- # ruleid: L1048
fh = io.popen("command")

-- # ruleid: L1048
fd = io.tmpfile()

-- # todoruleid: L1048
assert(io.open("file"))

-- # todoruleid: L1048
assert(io.popen("command"))

-- # todoruleid: L1048
assert(io.tmpfile())
