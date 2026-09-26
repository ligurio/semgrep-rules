-- # ruleid: T1033
for _, tuple in box.space.test:pairs() do
  local i = i + 1
  if i % 1000 == 0 then
    fiber.yield()
  end
end

-- System spaces are small, a scan over them does not need a yield.
-- # ok: T1033
for _, tuple in box.space._space:pairs() do
  print(tuple)
end
