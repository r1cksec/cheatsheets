### source
https://live.sysinternals.com/accesschk.exe  
https://live.sysinternals.com/accesschk64.exe  
https://github.com/ankh2054/windows-pentest/blob/master/Privelege/accesschk-2008-vista.exe  
https://github.com/ankh2054/windows-pentest/blob/master/Privelege/accesschk-2003-xp.exe  

### get all services with vulnerable permission
```
accesschk.exe -uwcqv "Everyone" * /accepteula
accesschk.exe -uwcqv "Authenticated Users" * /accepteula
accesschk.exe -uwcqv "Users" * /accepteula
```

