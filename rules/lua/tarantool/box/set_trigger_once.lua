local triggerfunc = function() end
local oldtrigger = function() end

-- ruleid: set_trigger_once
box.space:before_replace(triggerfunc)

-- ok: set_trigger_once
box.space:before_replace(triggerfunc, oldtrigger)
