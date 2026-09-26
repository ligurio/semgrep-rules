local function do_work()
  error("plain failure")
end

local ok, err = pcall(do_work)

-- # ruleid: T1029
local msg = err:match("(.+)")

-- # ok: T1029
local text = tostring(err)

local value = "123"
-- # ok: T1029
local number = value:match("^%d+$")
