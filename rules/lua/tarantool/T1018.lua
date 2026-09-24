local fio = require("fio")

-- # ruleid: T1018
local fd = fio.open("")

-- # todoruleid: T1018
assert(fio.open(""))
local net_box = require("net.box")
local fd

-- # ruleid: T1018
fd = net_box.new("")

-- # ruleid: T1018
fd = net_box.connect("")

-- # todoruleid: T1018
assert(net_box.new(""))

-- # todoruleid: T1018
assert(net_box.connect(""))
local popen = require("popen")

-- # ruleid: T1018
local _ = popen.new("")

-- # todoruleid: T1018
assert(popen.new(""))
local fio = require("fio")

local fh
-- # ruleid: T1018
fh = fio.open("")

-- # ruleid: T1018
fh = io.open("")

local socket = require("socket")
-- # ruleid: T1018
local sock = socket()
-- # ruleid: T1018
local sock = socket("AF_INET", "SOCK_STREAM", "tcp")
-- # todoruleid: T1018
assert(socket("AF_INET", "SOCK_STREAM", "tcp"))

local popen = require("popen")
-- # ruleid: T1018
fh = popen.new("")

local net_box = require("net.box")
-- # ruleid: T1018
fh = net_box.new("")
-- # ruleid: T1018
fh = net_box.connect("")
