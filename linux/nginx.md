### Configuration file
```
vim /etc/nginx/sites-enabled/default
```

### Forward Proxy
```
server {
    listen 8080;

    location / {
        proxy_pass http://$http_host$uri$is_args$args;
    }
}
```

