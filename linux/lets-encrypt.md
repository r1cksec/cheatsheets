### get lets encrypt certificate on debian - insert into /etc/apt/sources.list
```
deb http://deb.debian.org/debian stretch-backports main
```

### install
```
apt-get install certbot python-certbot-apache -t stretch-backports
```

### get fully qualified domain name
```
hostname -f
```

### create certificate
```
certbot --apache
```

### renew certificate 
```
certbot --apache certonly
```

### create backup of keys
```
/etc/letsencrypt/live/<hostname>/privkey.pem
```

