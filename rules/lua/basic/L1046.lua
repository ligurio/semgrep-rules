local fh
fh = io.open("example.txt", "w")
-- # ok: L1046
fh:write("I'm writable!")
fh.close()

fh = io.open("example.txt", "r")
-- # ruleid: L1046
fh:write("whoops, I'm not writable!")
fh:close()

fh = io.open("example.txt", "rb")
-- # ruleid: L1046
fh:write("whoops, I'm not writable!")
fh:close()
