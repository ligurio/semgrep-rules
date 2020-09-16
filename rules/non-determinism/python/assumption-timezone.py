import time
import pytz

# rule-id: assumption-timezone
time.tzset("America/Los_Angeles")
# rule-id: assumption-timezone
timezone = pytz.timezone("America/Los_Angeles")
