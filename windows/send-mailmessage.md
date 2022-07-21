### Source
https://www.blackhillsinfosec.com/spoofing-microsoft-365-like-its-1995

### Send e-mail
```
Send-MailMessage -SmtpServer <rhost> -To <recipient@domain> -From <sender@domain> -Subject <subject> -Attachments <file> -BodyAsHTML
```

### Spoofing using Micrsoft Direct Send
```
Prerequisites:
- Microsoft 365 subscription and an Exchange Online Plan
- MX endpoint called Smarthost: <targetDomain-domainComponent>.mail.protection.outlook.com
```

### Settings for direct send
```
MX endpoint, <target-com>.mail.protection.outlook.com
Port 25
TLS/StartTLS (optional)
Email address (does not need to have a mailbox)

SPF settings once a new Exchange Online plan is created:
v=spf1 include:spf.protection.outlook.com -all
or
v=spf1 ip4:<ipv4Address> include:spf.protection.outlook.com ~all
```

### Note
```
SPAMHAUS will block most residential IP addresses from sending spoofed emails.
Do not send phishing emails from your house IP adress.
```

