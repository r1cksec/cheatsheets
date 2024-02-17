import netifaces as ni

ni.ifaddresses("eth0")

myIp = ni.ifaddresses("eth0")[ni.AF_INET][0]["addr"]

