### Print pretty json
```
python3 -m json.tool < <file>.json
```

### Webserver
```
python3 -m http.server <lport>
```

### Python3 virtual environment
```
python3 -m venv <name>
```

### Python virtual environment
```
virtualenv -p /usr/bin/python2.7 <name>
```

### Smtp server
```
python -m smtpd -n -c debuggingServer :<lport>
```

### Use proxy
```
export http_proxy=127.0.0.1:8080
export https_proxy=127.0.0.1:8080
```

