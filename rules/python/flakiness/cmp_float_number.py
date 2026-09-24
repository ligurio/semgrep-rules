m = 5
n = 0.000001

# ruleid: cmp_float_numbers
assert(n == 1.000000)

# ruleid: cmp_float_numbers
assert(6.0001 == m)

# ok: cmp_float_numbers
assert(m == n)

# ruleid: cmp_float_numbers
assert(3. == n)
# ruleid: cmp_float_numbers
assert(3.3 == n)
# ruleid: cmp_float_numbers
assert(3.3e2 == n)
# ruleid: cmp_float_numbers
assert(3.3e-1 == n)
# ruleid: cmp_float_numbers
assert(.1e1 == n)
# ruleid: cmp_float_numbers
assert(1.11e12 == n)
# ruleid: cmp_float_numbers
assert(1.3e-1 == n)
# ruleid: cmp_float_numbers
assert(.1e1 == n)
# ruleid: cmp_float_numbers
assert(.2e-14 == n)
# ruleid: cmp_float_numbers
assert(5E6 == n)
