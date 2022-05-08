### Source
https://github.com/lgandx/Responder

### Start responder for specific ip addresses - leave empty for all (/etc/responder/Responder.conf)
```
RespondTo = <ip>
```

### If used in combination with ntlmrelay - disable SMB and HTTP servers inside responder config (/etc/responder/Responder.conf)
```
SMB = Off
HTTP = Off
```

### Analyzse mode (just print do not respond) 
```
python Responder.py -I <interface> -A
```

### Options: w = start WPAD rogue proxy server, d = enable answers for DHCP broadcast requests
```
python Responder.py -wd -I <interface>
```

