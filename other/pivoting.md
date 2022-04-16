### Pivot using ssh and proxychains
```
The use of a VPN ensures that no third party can use the proxychains port.
It may be necessary to set port forwarding on the SSH server from port 9051 to port 9050.
However, a direct connection to port 9050 on the ssh server from the attacker machine should also be possible.
```

### Start ssh session on pivot client
```
ssh -o 'StrictHostKeyChecking=no' -p <port> -i .\<sshPrivateKey> -N -R 9050 <user>@<rhost>
```

### Start vpn on attacker machine to server on the internet
```
openvpn --config <configFile>
```

### Adjust firewall on ssh server to allow connections from attacker machine
```
ufw allow from <rhost>
```

### If necessary adjust file /etc/proxychains4.conf on attacker machine
```
socks4 <sshServer> 9051
```

### If necessary start socat on ssh server
```
socat TCP-LISTEN:9051,fork TCP:localhost:9050
```

### Execute attack from attacker machine using proxychains
```
proxychains <command>
```

