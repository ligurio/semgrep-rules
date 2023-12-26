from requests.adapters import HTTPAdapter
import requests

url = "https://bronevichok.ru/"

s = requests.Session()
# rule-id: missed_retries
s.mount(url, HTTPAdapter())

# ok: missed_retries
s.mount(url, HTTPAdapter(max_retries=3))

from urllib3 import PoolManager, Retry
http = PoolManager()
# rule-id: missed_retries
response = http.request('GET', url)

retries = Retry(connect=5, read=2, redirect=5)
http = PoolManager(retries=retries)
# ok: missed_retries
response = http.request('GET', url)

http = PoolManager()
# ok: missed_retries
response = http.request('GET', url, retries=Retry(10))
