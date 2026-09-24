local a = {1, 2, nil, 3}

-- # ruleid: L1004
print(#{1, 2, 4, nil, 8})

-- # ruleid: L1004
local c = #a

-- # ruleid: L1004
local b = # {1, nil, 3}

print(b, c)
