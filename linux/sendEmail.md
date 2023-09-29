### Source
https://github.com/mogaal/sendemail  

### Install
```
apt install sendemail
```

### Send HTML E-Mail, use xn-- for homoglyph domain - specify specific from name using: -f "name <sender@domain.com>"
```
cat <content>.html | sendEmail -f "<sender>@<domain> -u "<subject>" -s "<mailServerIp>" -xu "<mailUser>" -xp "<mailPassword>" -t "<receiver@domain>" -o message-content-type=html
```

