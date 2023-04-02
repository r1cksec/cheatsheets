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

### Redirect to port 443
```
<VirtualHost *:80>
    ServerName <domain>

    <IfModule mod_rewrite.c>
        RewriteEngine On
        RewriteCond %{REQUEST_METHOD} ^TRACE
        RewriteRule .* - [F]
        RewriteCond %{REQUEST_METHOD} ^TRACK
        RewriteRule .* - [F]

        #redirect all port 80 traffic to 443
        RewriteCond %{SERVER_PORT} !^443$
        RewriteRule ^/?(.*) https:/<domain>/$1 [L,R]
    </IfModule>
</VirtualHost>
```

### Disable packages
```
a2disconf <package>
```

### Prevent clickjacking
```
a2enmod headers
sed -i '$ a\Header always append X-Frame-Options DENY' /etc/apache2/apache2.conf
```

### Remove apache version inside: /etc/apache2/apache2.conf
```
Header unset Server
ServerSignature Off
ServerTokens Prod
```

### Install PHP
```
apt-get install apache2 php libapache2-mod-php
```

