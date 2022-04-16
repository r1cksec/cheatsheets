### Source
https://raw.githubusercontent.com/cobbr/PSAmsi/master/PSAmsiClient.ps1  

### Create scanner
```
$scan = [PSAmsiScanner]::new()
```

### Scan specific string
```
$scan.GetPSAmsiScanResult('<string>')
```

### Scan specific url
```
$scan.GetPSAmsiScanResult([Uri]::new("<url>"))
```

### Scan specific file
```
$scan.GetPSAmsiScanResult([String]::new("<file>"))
```

### Discover which piece of a script is flagged as malicious
```
$signatures = Find-AmsiSignatures -ScriptUri '<url>'
$signatures
```

### Obfuscate only parts of script that are flagged as malicious
```
$miniObfs = Get-MinimallyObfuscated -ScriptUri '<url>'
```

