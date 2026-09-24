-- # ruleid: L1050
os.execute("")

-- # ruleid: L1050
io.popen("")

-- # ruleid: L1050
load("")

-- # ruleid: L1050
loadstring("")

-- # ruleid: L1050
loadfile("")

-- # ruleid: L1050
dofile("")

-- # ruleid: L1050
os.remove("")

local c = "os.exec('cat /etc/passwd')"

-- # ruleid: L1050
loadstring(c)

-- # ruleid: L1050
loadstring("os.exec('cat /etc/passwd')")
