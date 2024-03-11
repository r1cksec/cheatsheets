### Source
https://github.com/sse-secure-systems/TeamsEnum

### Enumerate email addresses (use tenant.onmicrosoft.com for internal user syntax)
```	
TeamsEnum -a password -u <user> -p "<password>" -f <userFile> -o <outfile>.json
```

### Print existing accounts
```
jq -r 'select(.exists == true) | .email' <file>.json
```

