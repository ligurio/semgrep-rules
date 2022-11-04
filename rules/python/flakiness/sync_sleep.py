from selenium import webdriver
# rule-id: sync_sleep
webdriver.set_page_load_timeout(30)
webdriver.set_page_load_timeout(0.3)

# rule-id: sync_sleep
webdriver.set_script_timeout(20)
webdriver.set_script_timeout(0.2)

# rule-id: sync_sleep
await asyncio.sleep(1)

import time
# rule-id: sync_sleep
time.sleep(10)
# rule-id: sync_sleep
time.sleep(0.2)

def a():
    return 10

# ok: sync_sleep
t.sleep(a())

# ok: sync_sleep
t.sleep(some_var)
