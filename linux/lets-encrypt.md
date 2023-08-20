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

