from selenium import webdriver
# rule-id: synchronization-with-sleep
webdriver.set_page_load_timeout(30)
webdriver.set_page_load_timeout(0.3)
# rule-id: synchronization-with-sleep
webdriver.set_script_timeout(20)
webdriver.set_script_timeout(0.2)

# rule-id: synchronization-with-sleep
await asyncio.sleep(1)

import time
# rule-id: synchronization-with-sleep
time.sleep(10)
# rule-id: synchronization-with-sleep
time.sleep(0.2)

def a():
    return 10

# OK
t.sleep(a())

# OK
t.sleep(some_var)
