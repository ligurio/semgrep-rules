m = 5
n = 0.000001

# rule-id: comparing-float-numbers
assert(1.0000 == 1.000000)

# rule-id: comparing-float-numbers
assert(1.0000 == m)

# rule-id: comparing-float-numbers
assert(m == 1.0000)

# rule-id: comparing-float-numbers
assert(m == n)
