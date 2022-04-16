### Source
https://github.com/trufflesecurity/truffleHog  

### Searches through git repositories for secrets
```
trufflehog --regex --entropy=False <remoteGitRepo>
```

### Search for entropy
```
trufflehog --regex --entropy=True <remoteGitRepo> 
```

