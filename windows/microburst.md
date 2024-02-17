### Source 
https://github.com/NetSPI/MicroBurst

### Import
```
Import-Module MicroBurst.psm1
```

### Enumerate subdomains for given tenant
```
Invoke-EnumerateAzureSubDomains -Base <tenant> -Verbose
```

### Enumerate Azure Blobs
```
Invoke-EnumerateAzureBlobs -Base <tenant> defcorp 
```

