local a = { "one", "two", "three" }
for i, v in ipairs(a) do
    -- ruleid: setting_looping_variables
    v = 1
    -- ruleid: setting_looping_variables
    i = 2
end

for i in ipairs(a) do
    -- ruleid: setting_looping_variables
    i = 1
end

local b = { a = 1, b = 2, c = 3 }
for k in pairs(b) do
    -- ruleid: setting_looping_variables
    k = 3
end

for k, v in pairs(b) do
    -- ruleid: setting_looping_variables
    k = 3
    -- ruleid: setting_looping_variables
    v = 3
end
