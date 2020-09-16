from requests.adapters import HTTPAdapter
s = requests.Session()
# rule-id: missed-retries-on-access
s.mount('https://bronevichok.ru/', requests.adapters.HTTPAdapter(x))

from urllib3 import PoolManager, Retry
# rule-id: missed-retries-on-access
http = PoolManager()
response = http.request('GET', 'https://bronevichok.ru/')
