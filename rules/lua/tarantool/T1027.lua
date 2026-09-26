-- # ruleid: T1027
if box.NULL then
  print("taken")
end

-- # ok: T1027
if box.NULL == nil then
  print("null")
end
