### update plugins
```
sudo systemctl stop nessusd
sudo /opt/nessus/sbin/nessuscli fetch --register <key>
sudo systemctl start nessusd
```

### listen only  on localhost
```
/opt/nessus/sbin/nessuscli fix --set listen_address=127.0.0.1
```

### web interface
https://localhost:8834  

