### Show message from boot
```
sudo journalctl -b -1
```

### Check disk usage of journalctl
```
journalctl --disk-usage
```

### Delete log entries that are older then 2 days
```
sudo journalctl --vacuum-time=2d
```

