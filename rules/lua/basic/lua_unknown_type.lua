-- Unknown type 'String' (expected primitive type)
-- # ruleid: lua_unknown_type
if type(v) == "String" then
    print("v is a string")
end
