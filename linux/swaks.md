### Source
https://github.com/jetmore/swaks

### Install
```
apt install swaks
```

### Send HTML E-Mail (openrelay, use xn-- for punycode domain)
```
swaks --server <mailServerIp> --to <receiver>@<domain> --from <sender>@<domain> --body <file>.html --header "Subject: <subject>" --add-header "MIME-Version: 1.0" --add-header "Content-Type: text/html" --header "X-Mailer: <mailHeader>"
```

### Send authenticated HTML E-Mail using gmail
```
swaks -s smtp.gmail.com:587 -tls -a LOGIN --to <receiver>@<domain> --body <file>.html -header "Subject: <subject>" --auth-password <user> --auth-password <password>
```

