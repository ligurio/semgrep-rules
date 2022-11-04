import random
import time
from datetime import datetime
from timeit import timeit

t = datetime.now()
# rule-id: cmp_current_time
assert(t > 0)
# rule-id: cmp_current_time
assert(t < 0)
# rule-id: cmp_current_time
assert(t == 0)
# rule-id: cmp_current_time
assert(t >= 0)
# rule-id: cmp_current_time
assert(t <= 0)
# rule-id: cmp_current_time
assert(t <> 0)
# rule-id: cmp_current_time
assert(t != 0)

t = time.now()
# rule-id: cmp_current_time
assert(t > 0)
# rule-id: cmp_current_time
assert(t < 0)
# rule-id: cmp_current_time
assert(t == 0)
# rule-id: cmp_current_time
assert(t >= 0)
# rule-id: cmp_current_time
assert(t <= 0)
# rule-id: cmp_current_time
assert(t <> 0)
# rule-id: cmp_current_time
assert(t != 0)
# rule-id: cmp_current_time
time.clock()

# rule-id: cmp_current_time
a = timeit.timeit()
