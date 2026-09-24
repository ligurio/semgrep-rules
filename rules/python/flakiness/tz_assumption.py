import time
import pytz

# ruleid: tz_assumption
time.tzset("America/Los_Angeles")

# ruleid: tz_assumption
timezone = pytz.timezone("America/Los_Angeles")
