import random
import time
from datetime import datetime

# rule-id: random_seed_depends_on_current_time
random.seed(datetime.now())

# rule-id: random_seed_depends_on_current_time
random.seed(time.now())
