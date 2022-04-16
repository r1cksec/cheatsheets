### Convert secure string to encrypted string
```
$secure = Read-Host -AsSecureString
$encryptedString = ConvertFrom-SecureString -SecureString $secure
```

### Convert encrypted string to secure string
```
ConvertTo-SecureString -String $encryptedString
```

### Convert plain text string to a secure string
```
$secString = ConvertTo-SecureString "<password>" -AsPlainText -Force
```

### Run command with credential 
```
$scp = ConvertTo-SecureString '<password>' -AsPlainText -Force
$cred = New-Object System.Management.Automation.PSCredential('<domain>\\<user>', $scp)
<command> -Credential $cred
```

