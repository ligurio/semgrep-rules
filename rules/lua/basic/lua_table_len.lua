local a = {1, 2, nil, 3}

-- # ruleid: lua_table_len
print(#{1, 2, 4, nil, 8})

-- # ruleid: lua_table_len
local c = #a

-- # ruleid: lua_table_len
local b = # {1, nil, 3}

print(b, c)
