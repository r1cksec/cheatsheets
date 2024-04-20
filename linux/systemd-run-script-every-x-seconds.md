### vim /etc/systemd/system/jobName.service  
```
[Unit]
Description=<description>

[Service]
Type=forking
ExecStart=/bin/bash <path/to/script>.sh
```

### vim /etc/systemd/system/jobName.timer  
```
[Unit]
Description=<description>

[Timer]
OnUnitActiveSec=10s
OnBootSec=10s

[Install]
WantedBy=timers.target
```

### Start job
```
systemctl daemon-reload
systemctl start <jobName>.timer
systemctl enable <jobName>.timer
```

### Check status
```
systemctl list-timers --all
```

### Send output to journal
```
echo "text" | systemd-cat -p info
```

### List unit files
```
systemctl list-unit-files
```

### Reset failed jobs
```
systemctl reset-failed
```

