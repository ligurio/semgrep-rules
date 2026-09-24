local function f(v)
  if v < 0 then
    -- # ruleid: L1054
    error("f expects a non-negative argument")
    print("unreachable")
  end
end

local function g(v)
  if v < 0 then
    -- # ok: L1054
    error("g expects a non-negative argument")
  end
  return v
end
