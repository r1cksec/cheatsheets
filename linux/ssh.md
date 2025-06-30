### Generate new ssh key pair
```
ssh-keygen -t rsa -b 4096
```

### Upload key to server
```
ssh-copy-id -i ~/.ssh/<privateKey> <user>@<rhost>
```

### Correct permissione for ssh files
```
chmod 700 ~/.ssh
chmod 600 ~/.ssh/authorized_keys
```

### Change password of private ssh key
```
ssh-keygen -p -f <privateKey>
```

### Harden ssh config (/etc/ssh/sshd_config)
```
PubkeyAuthentication yes
PasswordAuthentication no
PermitRootLogin no
Banner none
DebianBanner no
```

### Connect using specific key exchange algorithm and cipher
```
ssh -oKexAlgorithms=+diffie-hellman-group1-sha1 -c 3des-cbc <user>@<rhost>
```

### Create user with no login shell for pivoting
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
chown <user>:<user> <key>* 
```

### Dynamic port forwarding (forward proxychains traffic into server network)
```
ssh -D 9050 <user>@<rhost> -N -v
```

### Remote port forwarding (forward proxychains traffic into client network)
```
ssh -o 'StrictHostKeyChecking=no' -i .\<privateKey> -N -R 9050 <user>@<rhost>
```

### Port forward over multiple hosts
```
ssh -D 9050 -J <user>@<jumphost1>:<port>,<user>@<jumphost2>:<port> <user>@<rhost> -p <port>
```

### Port forward over multiple hosts
```
ssh -D 9050 -o ProxyCommand="ssh -W %h:%p <user>@<jumphost>" <user>@localhost -p <port>
```

### Port forward to local port on remote server
```
ssh -N -L 127.0.0.1:9050:127.0.0.1:9051 <user>@<rhost>
```

### Proxychains uses port 9050 as default -> /etc/proxychains4.conf)
```
proxychains <command>
```

### Stealth ssh
```
# will not be added to /var/log/utmp, sessions will not appear using w, no usage of .bash_profile .profile
ssh -o UserKnownHostsFile=/dev/null -T <user>@<rhost> 'bash -i'
```

### Print ssh ipv4 from logs
```
journalctl | grep " sshd" | grep "Failed password\|Accepted password\|Invalid user" | grep -Eo '([0-9]*\.){3}[0-9]*' | sort | uniq -c | sort -n
```

