-- # ruleid: L1053
local foo

if foo then -- Variable 'foo' defined at line 1 is never initialized or assigned; initialize with 'nil' to silence
	print(foo)
end

-- # ok: L1053
local initialized = 1

-- # ok: L1053
local first, second = 1, 2

-- # ok: L1053
local a, b
