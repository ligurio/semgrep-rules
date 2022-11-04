from requests.adapters import HTTPAdapter
s = requests.Session()
# rule-id: missed_retries
s.mount('https://bronevichok.ru/', requests.adapters.HTTPAdapter(x))

from urllib3 import PoolManager, Retry
# rule-id: missed_retries
http = PoolManager()
response = http.request('GET', 'https://bronevichok.ru/')
