local fh

-- ruleid: fd_leak
fh = io.open("file")

-- ruleid: fd_leak
fh = io.popen("command")

-- ruleid: fd_leak
fd = io.tmpfile()

-- todoruleid: fd_leak
assert(io.open("file"))

-- todoruleid: fd_leak
assert(io.popen("command"))

-- todoruleid: fd_leak
assert(io.tmpfile())
