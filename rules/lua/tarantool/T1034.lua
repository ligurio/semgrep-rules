local s = ""
local parts = {}

for i = 1, 100 do
  -- # ruleid: T1034
  s = s .. i
  parts[i] = i
end

print(table.concat(parts))
