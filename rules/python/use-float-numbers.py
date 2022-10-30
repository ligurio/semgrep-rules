m = 5
n = 0.000001

# rule-id: use-float-numbers
assert(1.0000 == 1.000000)

# rule-id: use-float-numbers
assert(1.0000 == m)

# rule-id: use-float-numbers
assert(m == 1.0000)

# rule-id: use-float-numbers
assert(m == n)
