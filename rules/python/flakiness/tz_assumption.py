import time
import pytz

# rule-id: tz_assumption
time.tzset("America/Los_Angeles")

# rule-id: tz_assumption
timezone = pytz.timezone("America/Los_Angeles")
