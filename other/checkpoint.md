### Get internal domain and hostname
```
printf '\x51\x00\x00\x00\x00\x00\x00\x21\x00\x00\x00\x0bsecuremote\x00' | nc -q 1 <ip> 264 | grep -a CN | cut -c 2-
```

