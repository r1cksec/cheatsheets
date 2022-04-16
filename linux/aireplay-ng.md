### Source
https://github.com/aircrack-ng/aircrack-ng  

### Check packet loss - simulate clients that want to connect
```
aireplay-ng --test -a <ssid> <interface>
```

### Deauthenticate clients (useful to get hidden ESSIDs)
```
aireplay-ng --deauth 1 -a <ssid> <interface>
```

### Replay arp packages
```
aireplay-ng <interface> --arpreplay -b <bssid>
```

