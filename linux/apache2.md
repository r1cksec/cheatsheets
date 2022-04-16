### Create new user and password
```
htpasswd -c /etc/apache2/.htpasswd <user>
```

### Add dir for basic auth
```
vim /etc/apache2/apache2.conf
```

### Basic authentication inside: /etc/apache2/apache2.conf
```
<Directory /var/www/html>
    AuthType Basic
    AuthName "Restricted Content"
    AuthUserFile /etc/apache2/.htpasswd
    Require valid-user
</Directory>
```

### Disable packages
```
a2disconf <package>
systemctl reload apache2
```

### Alternative remove symlink
```
rm /etc/apache2/mods-enabled/<package>
```

### Manipulate header
```
a2enmod headers
```

### Prevent clickjacking
```
sed -i '$ a\Header always append X-Frame-Options DENY' /etc/apache2/apache2.conf
```

### Remove apache version inside: /etc/apache2/apache2.conf
```
Header unset Server
ServerSignature Off
ServerTokens Prod
```

