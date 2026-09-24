local socket = require("socket")

local sock = socket.socket("AF_INET", "SOCK_STREAM", "tcp")

-- # ruleid: T1005
sock.bind("0.0.0.0", 80)

-- # ruleid: T1005
sock.bind("0.0.0.0")

-- # ok: T1005
sock.bind("127.0.0.1", 80)

-- # ruleid: T1005
sock.bind("::", 80)

-- # ruleid: T1005
sock.bind("", 80)

-- # ruleid: T1005
sock:bind("0.0.0.0", ...)

-- # ruleid: T1005
sock:bind("::", 80)

-- # ruleid: T1005
sock:bind("", 80)
