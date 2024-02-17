### Tools for user enumeration and bruteforce
```
lyncsmash (linux)
lyncsniper (windows)
```

### Paths for ntlm authentication
```
/abs
/WebTicket/WebTicketService.svc
/WebTicket/
/abs/
/GroupExpansion
/CertProv
/RgsClients
/RequestHandlerExt
/mcx
```

### Scan for internal domain
```
nmap -v -Pn -sS -p 443 --script http-ntlm-info --script-args http-ntlm-info.root="/abs/" <rhost>
```

