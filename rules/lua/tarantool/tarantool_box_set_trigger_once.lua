local triggerfunc = function() end
local oldtrigger = function() end

-- ruleid: tarantool_box_set_trigger_once
box.space:before_replace(triggerfunc)

-- ok: tarantool_box_set_trigger_once
box.space:before_replace(triggerfunc, oldtrigger)
