-- # ruleid: tarantool_fiber_missed_yield
for _, tuple in box.space.test:pairs() do
  local i = i + 1
  if i % 1000 == 0 then
    fiber.yield()
  end
end
