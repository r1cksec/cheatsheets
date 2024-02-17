### Redirect traffic from port 9051 to 9050
```
socat TCP-LISTEN:9051,fork TCP:localhost:9050
```

