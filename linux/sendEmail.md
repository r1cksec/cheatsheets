### source
https://github.com/mogaal/sendemail  

### send HTML E-Mail, use xn-- for homoglyph domain - specify specific from name using: -f "name <sender@domain.com>"
```
cat <content>.html | sendEmail -f "<sender>@<domain> -u "<subject>" -s "<mailServerIp>" -xu "<mailUser>" -xp "<mailPassword>" -t "<receiver@domain>"
```

