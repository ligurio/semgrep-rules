import random
import time
from datetime import datetime

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
