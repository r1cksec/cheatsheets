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

### Install python2.7 (debian bookworm)
```
vim /etc/apt/sources.list
# insert
echo "deb http://archive.debian.org/debian/ stretch contrib main non-free"

sudo apt-get update
sudo apt-get install python2.7
```

