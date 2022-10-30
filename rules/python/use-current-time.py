import random
import time
from datetime import datetime
from timeit import timeit

t = datetime.now()
# rule-id: use-current-time
assert(t > 0)
# rule-id: use-current-time
assert(t < 0)
# rule-id: use-current-time
assert(t == 0)
# rule-id: use-current-time
assert(t >= 0)
# rule-id: use-current-time
assert(t <= 0)
# rule-id: use-current-time
assert(t <> 0)
# rule-id: use-current-time
assert(t != 0)

t = time.now()
# rule-id: use-current-time
assert(t > 0)
# rule-id: use-current-time
assert(t < 0)
# rule-id: use-current-time
assert(t == 0)
# rule-id: use-current-time
assert(t >= 0)
# rule-id: use-current-time
assert(t <= 0)
# rule-id: use-current-time
assert(t <> 0)
# rule-id: use-current-time
assert(t != 0)
# rule-id: use-current-time
time.clock()

# rule-id: use-current-time
a = timeit.timeit()
