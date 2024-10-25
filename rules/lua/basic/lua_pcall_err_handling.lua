local fn = function() return end

-- ruleid: lua_pcall_err_handling
local ok, err = pcall(fn)
if ok then
    return
end

-- ruleid: lua_pcall_err_handling
local ok, err = pcall(fn)
if err then
    return
end

-- ok: lua_pcall_err_handling
local ok, err = pcall(fn)
if ok then
    return
end

if err then
    return
end
