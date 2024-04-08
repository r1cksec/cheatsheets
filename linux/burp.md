### Download for Jython Bibliothek Standalone
https://www.jython.org/download
```
Extensions > Extensions settings > Python Environment > Location of standalone file
```

### Start burp from command line without extensions
```
java -jar <path/to/burp.jar> --disable-extensions
```

### Custom Collaborator Server
```
Settings > Project > Collaborator > Use a privat Collaborator Server > Server location: <serverLocation>
```

### Send traffic over proxy
```
Settings > Network > Connections > SOCKS proxy
Enable "Use SOCKS proxy"
SOCKS proxy host: 127.0.0.1
SOCKS proxy port: 9050
```

### Restrict traffic to scope
```
Settings > Project > Scope
Enable "Use advanced scope control"

Add > .*\.domain\.com

Out-of-scope request handling:
Enable: "Drop all out-of-scope requests"
```

### Silence Burp
```
Settings > Project > Collaborator
Enable "Dont't use Burp Collaborator"

Settings > Suite > Updates
Disable "Enable auto-updates (require restart)"
```

### Intruder Payload types
```
Sniper - One of the marked parameters tested at a time, with one of the payload items.
Battering Ram - All marked parameters tested at the same time, using one of the payload items.
Pitchfork - Hits each parameter at the same time with one item from its associated payload.
Cluster Bomb - Combination of all payloads vs. parameters 
```

