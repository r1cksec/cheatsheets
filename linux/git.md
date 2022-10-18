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

### Show version history
```
git log
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

### Get path to project
```
git remote get-url origin
```

### Set custom timestamp
```
git commit --date="Wed Feb 13 15:00 2019 +0100" -m "<message>"
```

### Generate access token
https://docs.github.com/en/github/authenticating-to-github/creating-a-personal-access-token

### Ignore certificate errors
```
git -c http.sslVerify=false
```

### Get all repositories of specific user
```
curl -s "https://api.github.com/users/<user>/repos?per_page=100" | grep -o 'git@[^"]*' | grep "git"
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

