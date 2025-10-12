### Source
https://github.com/mogaal/sendemail

### Install
```
apt install sendemail
```

### Send HTML E-Mail, use xn-- for punycode domain (uses X-Mailer sendEmail-1.56)
```
cat <file>.html | sendEmail -f "<sender>@<domain>" -u "<subject>" -s "<mailServerIp>" -xu "<mailUser>" -xp "<mailPassword>" -t "<receiver>@<domain>" -o message-content-type=html
```

