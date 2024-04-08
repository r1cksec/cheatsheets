### Show message from boot
```
journalctl -b -1
```

### Check disk usage of journalctl
```
journalctl --disk-usage
```

### Delete log entries that are older then 2 days
```
journalctl --vacuum-time=2d
```

### Show ssh events of last 3 hours
```
journalctl -u ssh --since -3h
```

