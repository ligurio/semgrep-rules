local t = {}

-- # ruleid: lua_table_operations
table.insert(t, 0, 42)

-- # ruleid: lua_table_operations
table.insert(t, #t+1, 42)
