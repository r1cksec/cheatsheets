### convert secure string to encrypted string
```
$secure = Read-Host -AsSecureString
$encryptedString = ConvertFrom-SecureString -SecureString $secure
```

### convert encrypted string to secure string
```
ConvertTo-SecureString -String $encryptedString
```

### convert plain text string to a secure string
```
$secString = ConvertTo-SecureString "<password>" -AsPlainText -Force
```

### run command with credential 
```
$scp = ConvertTo-SecureString '<password>' -AsPlainText -Force
$cred = New-Object System.Management.Automation.PSCredential('<domain>\\<user>', $scp)
<command> -Credential $cred
```

