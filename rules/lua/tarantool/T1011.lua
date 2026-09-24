box.space._schema:select{}
box.space._schema:delete('oncehello')

-- # ruleid: T1011
box.once('hello', function() end)
local triggerfunc = function() end
local oldtrigger = function() end

-- # ruleid: T1011
box.space:before_replace(triggerfunc)

-- # ok: T1011
box.space:before_replace(triggerfunc, oldtrigger)
