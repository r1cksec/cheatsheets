import requests

url = "https://url"
cookies = {"arg1": "val1", "arg2":"val2"}
headers = {"Accept": "text/javascript", "Header2": "value2"}
payload = {"arg1": "val1", "arg2": "val2"}

# send HTTP POST request (, verify=False to ignore certificate errors)
r = requests.post(url, headers=headers, cookies=cookies, data=payload)

print(r.text)
print(r.status_code)
print(len(r.content))

