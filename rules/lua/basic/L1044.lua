local a = { "one", "two", "three" }
for i, v in ipairs(a) do
    -- # ruleid: L1044
    v = 1
    -- # ruleid: L1044
    i = 2
end

for i in ipairs(a) do
    -- # ruleid: L1044
    i = 1
end

local b = { a = 1, b = 2, c = 3 }
for k in pairs(b) do
    -- # ruleid: L1044
    k = 3
end

for k, v in pairs(b) do
    -- # ruleid: L1044
    k = 3
    -- # ruleid: L1044
    v = 3
end
