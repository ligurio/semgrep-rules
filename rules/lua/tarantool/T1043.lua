local cases = {"a", "b", "c"}

for _, case in ipairs(cases) do
  -- # ruleid: T1043
  it("works with " .. case, function() end)
end
