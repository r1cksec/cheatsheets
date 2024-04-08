### Install
```
apt install certbot python3-certbot-apache
```

### Get fully qualified domain name
```
hostname -f
```

### Create certificate
```
certbot certonly --register-unsafely-without-email -v --standalone
```

### Renew certificate 
```
certbot --apache certonly
```

### Create backup of keys
```
/etc/letsencrypt/live/<hostname>/privkey.pem
```

