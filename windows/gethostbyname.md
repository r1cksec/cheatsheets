### Resolve hostname
```
$hostEntry = [System.Net.Dns]::GetHostByName("<hostname>")
$hostEntry.AddressList[0].IPAddressToString
```

