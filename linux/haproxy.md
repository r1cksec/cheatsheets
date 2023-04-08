### Loadbalancer configuration
```
frontend incomingRequests
   bind *:8080
   default_backend backendServers

backend backendServers
   balance roundrobin
   server web1 <rhost>:<port> check
   server web2 <rhost>:<port> check
```

