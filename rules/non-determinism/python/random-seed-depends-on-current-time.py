import random
import time
from datetime import datetime

# rule-id: random-seed-depends-on-current-time
random.seed(datetime.now())

# rule-id: random-seed-depends-on-current-time
random.seed(time.now())
