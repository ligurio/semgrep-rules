local triggerfunc = function() end
local oldtrigger = function() end

-- ruleid: box_set_trigger_once
box.space:before_replace(triggerfunc)

-- ok: box_set_trigger_once
box.space:before_replace(triggerfunc, oldtrigger)
