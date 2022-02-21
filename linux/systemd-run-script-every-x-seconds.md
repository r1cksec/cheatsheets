# insert into: /etc/systemd/system/<jobName>.service  
```
[Unit]
Description=<description>

[Service]  
Type=forking  
ExecStart=/bin/bash <path/to/script>.sh  
```

# insert into: /etc/systemd/system/<jobName>.timer  
```
[Unit]
Description=<description>

[Timer]  
OnUnitActiveSec=10s  
OnBootSec=10s  

[Install]  
WantedBy=timers.target  
```

### start job
```
systemctl daemon-reload
systemctl start <jobName>.timer
systemctl enable <jobName>.timer
```

### check status
```
systemctl list-timers --all
```

