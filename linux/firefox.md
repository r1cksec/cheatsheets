### Silence Firefox traffic
```
about:preferences
Home > Homepage and new windows > Blank Page
Home > New tabs > Blank Page
Search > Disable "Provide search suggestions"
Privacy & Security > Enhanced Tracking Protection > Custom (Disable all trackers)

about:config
network.captive-portal-service.enabled - false

extensions.blocklist.enabled - false
network.prefetch-next - false
extensions.getAddons.cache.enabled - false
dom.push.enabled - false
network.dns.disablePrefetch - true
Network.http.speculative-parallel-limit - 0
```

