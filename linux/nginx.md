### Install lua components
```
apt-get install nginx-extras
```

### Configuration file
```
vim /etc/nginx/sites-enabled/default
```

### Forward Proxy and execute local script for each request
```
server {
    listen 8080;

    location / {

        rewrite_by_lua_block {
            os.execute("/<path>/<to/<script>")
        }

        proxy_pass http://$http_host$uri$is_args$args;
    }
}
```

### Load Balancer
```
upstream backend {
    server <rhost>:<port>;
    server <rhost>:<port>;
}

server {
    listen 8080;

    location / {
        resolver 8.8.8.8;

        proxy_pass http://backend;
        proxy_set_header Host $host;
    }
}
```

