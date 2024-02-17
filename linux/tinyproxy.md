### Forward Proxy configuration
```
Allow 127.0.0.1
Allow 192.168.0.0/16
ConnectPort 443
DefaultErrorFile "/usr/share/tinyproxy/default.html"
Group tinyproxy
LogFile "/var/log/tinyproxy/tinyproxy.log"
LogLevel Info
MaxClients 10
MaxRequestsPerChild 1
MaxSpareServers 20
MinSpareServers 5
PidFile "/run/tinyproxy/tinyproxy.pid"
Port 8080
StartServers 10
StatFile "/usr/share/tinyproxy/stats.html"
Timeout 600
User tinyproxy
ViaProxyName "tinyproxy"
```

