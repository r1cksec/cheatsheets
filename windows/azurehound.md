### Source
https://github.com/BloodHoundAD/AzureHound/releases

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

