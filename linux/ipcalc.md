### Convert ripe range to cidr
```
grep -i "inetnum" ripe-ranges.txt | awk -F " " '{print $2" - "$4}' | xargs -I % sh -c "ipcalc -nr % | grep -v deaggregate"
```

