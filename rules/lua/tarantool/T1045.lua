local pickle = require("pickle")

-- # ruleid: T1045
pickle.unpack("Aii", "data")

-- # ok: T1045
pickle.unpack("iiA", "data")
