-- For loop should iterate backwards; did you forget to specify -1 as step?
-- # ruleid: L1045
for i=#t,1 do
end

-- # ok: L1045
for i = 1, 3 do
end

-- # ok: L1045
for i = #t, 1, -1 do
end
