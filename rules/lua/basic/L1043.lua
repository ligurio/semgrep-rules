local fn = function() return end

-- # ruleid: L1043
local ok, err = pcall(fn)
if ok then
    return
end

-- # ruleid: L1043
local ok, err = pcall(fn)
if err then
    return
end

-- # ok: L1043
local ok, err = pcall(fn)
if ok then
    return
end

if err then
    return
end
