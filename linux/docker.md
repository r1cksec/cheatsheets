### Install
```
apt-get install docker.io
systemctl start docker
```

### Build an docker image
```
docker build -t <targetName> -f ./<dockerfile> .
```

### Start docker container (interactive terminal, detached, rm = clean up after docker stop)
```
docker run -itd --rm --name <containerName> ubuntu
```

### Start container, execute a command and stop container
```
docker run -itd --rm --name <containerNameOrId> ubuntu bash -c "<command>"
```

### Interact with container
```
docker exec -it <containerNameOrId> bash
```

### List containers
```
docker ps -a
```

### Stop container
```
docker stop <containerNameOrId>
```

### Delete container
```
docker rm <containerNameOrId>
```

### Create docker network
```
docker network create --subnet=192.168.0.0/16 <networkName>
```

### List networks
```
docker network ls
```

### Delete network
```
docker network rm <networkName>
```

### List docker images
```
docker images
```

### Delete image
```
docker rmi <imageNameOrId>
```

### Dockerfile; Debian container with VPN
```
FROM debian:latest
MAINTAINER r1cksec

RUN apt-get -y update && apt-get -y upgrade && apt-get -y install openvpn && echo "nameserver 8.8.8.8" > /etc/resolv.conf
ADD vpn-config.openvpn /root/vpn-config.openvpn
ADD startvpn.sh /startvpn.sh
RUN chmod +x /startvpn.sh

Start using:
docker run -itd --rm --cap-add=NET_ADMIN --device /dev/net/tun --net <nameserver> --ip <ipv4Address> --name <containerName> <imageName>
```

### Dockerfile: Ubuntu container with GUI
```
FROM ubuntu:latest

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && RUN apt-get -y install firefox libcanberra-gtk-module libcanberra-gtk3-module && apt-get clean

CMD ["firefox"]

Start using:
xhost +
docker run -it --rm -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix <imageName>
xhost -
```

### Start service when container boots
```
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
CMD ["/usr/bin/tinyproxy", "-d"]
```

