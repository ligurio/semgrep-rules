function sum1(n)
    if n > 0 then
        -- # ruleid: L1021
        return n + sum1(n-1)
    end
end
sum1(1000000)

function sum2(accu, n)
  if n > 0 then
    accu.value = accu.value + n
    -- # ok: L1021
    return sum2(accu, n - 1)
  end
end
local accu = {value = 0}
sum2(accu, 1000000)
