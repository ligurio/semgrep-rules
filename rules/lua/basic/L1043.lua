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

-- # ok: L1043
local ok2, err2 = pcall(fn)
if ok2 then
    return
else
    return
end

-- # ok: L1043
local ok3, err3 = pcall(fn)
assert(ok3, err3)

local function returns_results()
    -- # ok: L1043
    local ok4, err4 = pcall(fn)
    return ok4, err4
end

-- # ok: L1043
local ok5, err5 = pcall(fn)
if not ok5 then
    error(err5)
end

local function returns_ok()
    -- # ok: L1043
    local ok6, err6 = pcall(fn)
    return ok6
end
