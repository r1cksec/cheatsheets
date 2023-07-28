### Download for Jython Bibliothek Standalone
https://www.jython.org/download
```
Extensions > Extensions settings > Python Environment > Location of standalone file
```

### Custom Collaborator Server
```
Project Options > Misc > Burp Collaborator Server > Use a privat Collaborator Server > Server location: <serverLocation>
User Options > Misc > Perfomance Feedback > Uncheck Submit Box
```

### Silence traffic (firefox)
```
Proxy > Proxy settings > Tools > Proxy > Request interception rules
And, Domain name, Does not match
-> mozilla.com

Proxy > Proxy settings > Project > Scope > Target Scope
Exclude from scope > Add
-> mozilla.com
```

### Export custom configuration 
```
Burp > User settings > Save user settings 
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

