from selenium import webdriver
import asyncio

# ruleid: sync_sleep
webdriver.set_page_load_timeout(30)
# ruleid: sync_sleep
webdriver.set_page_load_timeout(0.3)

# ruleid: sync_sleep
webdriver.set_script_timeout(20)
# ruleid: sync_sleep
webdriver.set_script_timeout(0.2)

async def foo():
    # ruleid: sync_sleep
    await asyncio.sleep(1)

import time

# ruleid: sync_sleep
time.sleep(10)
# ruleid: sync_sleep
time.sleep(0.2)
