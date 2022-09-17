### Source
https://raw.githubusercontent.com/BloodHoundAD/BloodHound/master/Collectors/AzureHound.ps1

### Install modules
```
Install-Module -Name Az -Scope CurrentUser -Repository PSGallery -Force
Install-Module -Name AzureAD -Scope CurrentUser -Repository PSGallery -Force
```

### Start ingestor
```
Import-Module Az
Import-Module Azuread

Connect-AzAccount
Connect-AzureAD

Invoke-Azurehound
```

