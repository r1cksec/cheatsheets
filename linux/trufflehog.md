### Source
https://github.com/trufflesecurity/truffleHog  

### Scan git repository for secrets
```
trufflehog git <remoteGitRepo> --no-update
```

### Scan local repository 
```
trufflehog git file://<localGitRepo> --no-update
```


### Scan local repository (when the repository is broken)
```
trufflehog filesystem <localGitRepo> --no-update
```

