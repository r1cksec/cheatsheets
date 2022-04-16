### Get lets encrypt certificate on debian - insert into /etc/apt/sources.list
```
deb http://deb.debian.org/debian stretch-backports main
```

### Install
```
apt-get install certbot python-certbot-apache -t stretch-backports
```

### Get fully qualified domain name
```
hostname -f
```

### Create certificate
```
certbot --apache
```

### Renew certificate 
```
certbot --apache certonly
```

### Create backup of keys
```
/etc/letsencrypt/live/<hostname>/privkey.pem
```

