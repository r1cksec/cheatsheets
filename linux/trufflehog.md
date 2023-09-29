### Source
https://github.com/trufflesecurity/truffleHog  

### Scan git repository for secrets (secrets found are used to authenticate for verification)
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

### Scan CircleCI logs
```
trufflehog circleci –token=<circleCiApiToken>
```

