import random
import time
from datetime import datetime

t = datetime.now()
# rule-id: comparing-with-current-time
assert(t > 0)
# rule-id: comparing-with-current-time
assert(t < 0)
# rule-id: comparing-with-current-time
assert(t == 0)
# rule-id: comparing-with-current-time
assert(t >= 0)
# rule-id: comparing-with-current-time
assert(t <= 0)
# rule-id: comparing-with-current-time
assert(t <> 0)
# rule-id: comparing-with-current-time
assert(t != 0)

t = time.now()
# rule-id: comparing-with-current-time
assert(t > 0)
# rule-id: comparing-with-current-time
assert(t < 0)
# rule-id: comparing-with-current-time
assert(t == 0)
# rule-id: comparing-with-current-time
assert(t >= 0)
# rule-id: comparing-with-current-time
assert(t <= 0)
# rule-id: comparing-with-current-time
assert(t <> 0)
# rule-id: comparing-with-current-time
assert(t != 0)
