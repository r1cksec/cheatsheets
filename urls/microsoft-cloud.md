### Unauthenticated recon
```
https://login.microsoftonline.com/getuserrealm.srf?login=<targetMail>
https://login.microsoftonline.com/<tenant>/.well-known/openid-configuration
```

### Services
* https://admin.microsoft.com
* https://endpoint.microsoft.com
* https://myapps.microsoft.com
* https://mysignins.microsoft.com/security-info
* https://outlook.office.com/mail
* https://portal.azure.com
* https://rdweb.wvd.microsoft.com/arm/webclient/index.html
* https://teams.microsoft.com

### Token resources
* https://management.azure.com
* https://graph.microsoft.com
* https://storage.azure.com
* https://vault.azure.net

### Azure Blob Storage

#### Blob storage 
`https://<storageAccount>.blob.core.windows.net`

#### Azure Data Lake Storage Gen2 
`https://<storageAccount>.dfs.core.windows.net`

#### Azure Files
`https://<storageAccount>.file.core.windows.net`

#### Queue storage
`https://<storageAccount>.queue.core.windows.net`

#### Table storage
`https://<storageAccount>.table.core.windows.net`
