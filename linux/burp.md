### Download for Jython Bibliothek Standalone
https://www.jython.org/download
```
Extender > Options > Python Environment > Location of standalone file
```

### Custom Collaborator Server
```
Project Options > Misc > Burp Collaborator Server > Use a privat Collaborator Server > Server location: <serverLocation>
User Options > Misc > Perfomance Feedback > Uncheck Submit Box
```

### Silence traffic 
```
Proxy > Options > Intercept Client Requests > Add:
And, Domain name, Does not match
-> mozilla, ocsp, digicert, firefox, googleapis, openh264

Target > Scope > Use advanced scope control > Exclude from scope > Add:
Any Protocol
-> mozilla, ocsp, digicert, firefox, googleapis, openh264

Target > Site map > Show only in-scope items

Dashboard > Live passive crawl from Proxy > Settings > Suite scope
Dashboard > Live audit from Proxy > Settings > Suite scope
```

### Export custom configuration 
```
Burp > Project Options > Save Project Options
```

### Start burp from command line without extensions
```
java -jar <path/to/burp.jar> --disable-extensions
```

### Intruder Payload types
```
Sniper - One of the marked parameters tested at a time, with one of the payload items.
Battering Ram - All marked parameters tested at the same time, using one of the payload items.
Pitchfork - Hits each parameter at the same time with one item from its associated payload.
Cluster Bomb - Combination of all payloads vs. parameters 
```

### Use burp with proxychains
```
User options > SOCKS Proxy > SOCKS proxy host: 127.0.0.1 > SOCKS proxy port 9050
```

