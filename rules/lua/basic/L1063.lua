local proxy = setmetatable({10, 20, 30}, {
  -- # ruleid: L1063
  __pairs = function()
    return function() end
  end,
  -- # ruleid: L1063
  __ipairs = function()
    return function() end
  end,
})

for k, v in pairs(proxy) do
  print(k, v)
end
