local function nop() end
local function trace(func_with_uv)
  for _ = 1, 100 do func_with_uv() end
end

local function new_obj()
  local obj = {trace = trace}
  obj.trace(function()
    -- `obj` is an upvalue for this function. If part of `trace`
    -- is compiled with reference of this function, then `obj` is
    -- never collected.
    nop(obj)
  end)
  return obj
end

local weak_tab = setmetatable({}, {__mode = 'v'})
-- Create a trace.
local strong_ref_on_stack = new_obj()
weak_tab.o = strong_ref_on_stack

-- Set GC to the start.
collectgarbage('collect')

-- Remove a single strong reference. Now `obj` must be marked
-- by the GC as dead.
strong_ref_on_stack = nil
collectgarbage('collect')

-- Now `weak.o` should be `nil`, because it was a weak reference,
-- and the object should be collected by the GC.
collectgarbage('collect')
assert(weak_tab.o == nil)
