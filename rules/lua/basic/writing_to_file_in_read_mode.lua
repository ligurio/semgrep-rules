local fh
fh = io.open("example.txt", "w")
-- ok: writing_to_file_in_read_mode
fh:write("I'm writable!")
fh.close()

fh = io.open("example.txt", "r")
-- ruleid: writing_to_file_in_read_mode
fh:write("whoops, I'm not writable!")
fh:close()

fh = io.open("example.txt", "rb")
-- ruleid: writing_to_file_in_read_mode
fh:write("whoops, I'm not writable!")
fh:close()
