### Set email and username for all repositories (remove --global for current repository)
```
git config --global user.email "<mail>"
git config --global user.name "<user>"
```

### Sign files with given key
```
git config --global commit.gpgsign true
```

### List config of current repository
```
git config --list --local
```

### Show available tags
```
git fetch --tags
```

### Show information about specific tag
```
git log <tagName>
```

### Switch to specific version
```
git checkout <tagName>
```

### Switch to newest commit (new repos use main)
```
git checkout master
```

### Get project url
```
git remote get-url origin
```

### Set project url
```
git remote set-url origin <user>@<rhost>:<path>.git
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
git difftool -y --tool=vimdiff
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

### Proxy settings
```
git config --global http.proxy http://<rhost>:<port>
git config --global --unset http.proxy
```

### Generate access token
* https://docs.github.com/en/github/authenticating-to-github/creating-a-personal-access-token

