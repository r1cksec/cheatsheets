### Source
https://github.com/docker/compose

### Install
```
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose --version
```

### Start docker container using yml file
```
docker-compose -f <file>.yml up
```

