-- # ruleid: lua_uninitialized_local
local foo

if foo then -- Variable 'foo' defined at line 1 is never initialized or assigned; initialize with 'nil' to silence
	print(foo)
end
