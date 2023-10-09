### Source
https://github.com/jetmore/swaks

### Install
```
apt install swaks
```

### Send HTML E-Mail, use xn-- for punycode domain,
```
swaks --to <receiver>@<domain> --from <sender>@<domain> --body <file>.html --header "Subject: <subject>" --add-header "MIME-Version: 1.0" --add-header "Content-Type: text/html" --header "X-Mailer: <mailHeader>"
```

