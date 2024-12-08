### Using old protocols
```
smbclient --option='client min protocol=nt1' -L "\\<rhost>\\<share>" -U <user> --option='client lanman auth = yes' --option='client ntlmv2 auth = no' --option='ntlm auth = no'
```

### Using null session 
```
smbclient -N -L \\<rhost>
```

### Opsec considerations - Windows Security Log Event IDs
```
-Logon (4624) -> multiple
-Special Logon (4672) -> multiple
```

