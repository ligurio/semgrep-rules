local c = "os.exec('cat /etc/passwd')"

-- ruleid: loadstring
loadstring(c)

-- ok: loadstring
loadstring("os.exec('cat /etc/passwd')")
