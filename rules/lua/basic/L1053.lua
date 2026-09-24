-- # ruleid: L1053
local foo

if foo then -- Variable 'foo' defined at line 1 is never initialized or assigned; initialize with 'nil' to silence
	print(foo)
end
