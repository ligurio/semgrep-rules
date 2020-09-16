i = 2
f = 0.2
s = "hello"

# ruleid: assert-with-magic-constant
assert(4 == i)
# ruleid: assert-with-magic-constant
assert(4 == f)
# ruleid: assert-with-magic-constant
assert(4 == s)

# ruleid: assert-with-magic-constant
assert(i == 4)
# ruleid: assert-with-magic-constant
assert(f == 4)
# ruleid: assert-with-magic-constant
assert(s == 4)
