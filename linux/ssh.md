### generate new ssh key pair
```
ssh-keygen -t rsa -b 4096
```

### upload key to server
```
ssh-copy-id -i ~/.ssh/<privateKey> <user>@<rhost>
```

### if error occurs try:
```
chmod 700 ~/.ssh
chmod 600 ~/.ssh/authorized_keys
```

### download public ssh key
```
ssh-keyscan -t rsa <rhost> -p <rport>
```

### change password of private ssh key
```
ssh-keygen -p -f <privateKey>
```

### only allow key-based authentication in /etc/ssh/sshd_config
```
PubkeyAuthentication yes
PasswordAuthentication no
PermitRootLogin no
Banner none
DebianBanner no
```

### connect using specific key exchange algorithm and cipher
```
ssh -oKexAlgorithms=+diffie-hellman-group1-sha1 -c 3des-cbc <user>@<rhost>
```

### local port forwarding (forward into ssh server network)
```
ssh -L <sshClientPort>:<targetHost>:<targetPort> <user>@<sshServer>
# from client connect using 
<command> 127.0.0.1:<sshClientPort>
```

### remote port forwarding (forwarding into ssh client network)
```
ssh -R <sshServerPort>:<targetHost>:<targetPort> <user>@<sshServer>
```

### from server connect using
```
<command> 127.0.0.1:<sshServerPort>
```

### create user with no login shell for proxychains forwarding
```
useradd <user> -m -s /bin/false
cd /home/<user>
mkdir .ssh
chown <user>:<user> .ssh
chmod 700 .ssh
cd .ssh
touch authorized_keys
chown <user>:<user> authorized_keys
chmod 600 authorized_keys
ssh-keygen -t rsa -b 4096
cat <publicKey> >> authorized_keys
```

### dynamic port forwarding (forward proxychains traffic into server network)
```
ssh -D 9050 <user>@<sshServer> -N -v
```

### remote port forwarding (forward proxychains traffic into client network)
```
ssh -o 'StrictHostKeyChecking=no' -i .\<publicKey> -N -R 9050 <user>@<sshServer>
```

### proxychains uses port 9050 as default -> /etc/proxychains4.conf)
```
proxychains <command>
```

