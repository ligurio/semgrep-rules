local fn = function() return end

-- ruleid: pcall_err_handling
local ok, err = pcall(fn)
if ok then
    return
end

-- ruleid: pcall_err_handling
local ok, err = pcall(fn)
if err then
    return
end

-- ok: pcall_err_handling
local ok, err = pcall(fn)
if ok then
    return
end

if err then
    return
end
