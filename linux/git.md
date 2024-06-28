### Configure email and username
```
git config user.name "r1cksec"
git config user.email "77610058+r1cksec@users.noreply.github.com"
```

### List config of current repository
```
git config --list --local
```

### Sign files with given key
```
git config --global commit.gpgsign true
```

### Show available tags
```
git fetch --tags
```

### Show information about specific tag
```
git log <tagName>
```

### Get project url
```
git remote get-url origin
```

### Set project url
```
git remote set-url origin <user>@<rhost>:<path>.git
```

### Remove branch from repository
```
git push origin -d <branch>
```

### Set custom timestamp
```
git commit --date="Wed Feb 13 15:00 2019 +0100" -m "<message>"
```

### Ignore certificate errors
```
git -c http.sslVerify=false
```

### Show available difftools
```
git difftool --tool-help
```

### Use specific difftool and do not prompt user
```
git difftool -y --tool=meld <commit>
```

### Use git via ssh
```
# server
git --bare init

# client
git init
touch README
git add README
git commit -m "initial commit"
git remote add origin ssh://<user>@<rhost>/<path>.git
git push origin master

git clone ssh://<user>@<rhost>/<path>.git
```

### List available runner
```
curl -s --header "PRIVATE-TOKEN: <token>" "https://<gitlabRhost>/api/v4/runners"
curl -s --header "PRIVATE-TOKEN: <token>" "https://<gitlabRhost>/api/v4/runners/<id>/jobs"
curl -s --header "PRIVATE-TOKEN: <token>" "https://<gitlabRhost>/api/v4/runners/<id>/jobs/<jobNumber>/trace"
```

### Proxy settings
```
git config --global http.proxy http://<rhost>:<port>
git config --global --unset http.proxy
```

### Download using oauth token
```
https://oauth2:<token>@<gitlabHost>/<userOrOrg>/<repository>
```

### Generate access token
* https://docs.github.com/en/github/authenticating-to-github/creating-a-personal-access-token


