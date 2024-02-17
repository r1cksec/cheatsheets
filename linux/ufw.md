### Blacklist by default
```
ufw default deny
```

### Unblock port
```
ufw allow <port>/tcp
```

### Block ip address or range
```
ufw deny from <rhost>
```

### Whitelist ip address or range
```
ufw allow from <rhost>
```

### Limit connections (default 6 connection per 30 seconds)
```
ufw limit <port>/tcp
```

### Start firewall
```
ufw enable
```

### List all rules
```
ufw status numbered
```

### Delete rule
```
ufw delete <id>
```

