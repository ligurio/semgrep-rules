from requests.adapters import HTTPAdapter
import requests

url = "https://bronevichok.ru/"

s = requests.Session()
# ruleid: missed_retries
s.mount(url, HTTPAdapter())

# ruleid: missed_retries
s.mount(url, HTTPAdapter(max_retries=3))

from urllib3 import PoolManager, Retry
# ruleid: missed_retries
http = PoolManager()
response = http.request('GET', url)

retries = Retry(connect=5, read=2, redirect=5)
# ruleid: missed_retries
http = PoolManager(retries=retries)
# ok: missed_retries
response = http.request('GET', url)

# ruleid: missed_retries
http = PoolManager()
# ok: missed_retries
response = http.request('GET', url, retries=Retry(10))
