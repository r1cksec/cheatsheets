### Install
```
Download Nessus https://www.tenable.com/downloads/nessus
dpkg -i Nessus-*.deb"
systemctl start nessusd"
```

### Update plugins
```
systemctl stop nessusd
/opt/nessus/sbin/nessuscli fetch --register <key>
systemctl start nessusd
```

### Listen only  on localhost
```
/opt/nessus/sbin/nessuscli fix --set listen_address=127.0.0.1
```

### Web interface
https://localhost:8834  

