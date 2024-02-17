### Install
```
apt install golang

# or

wget https://golang.org/dl/go1.19.1.linux-amd64.tar.gz
tar -xzf go1.19.1.linux-amd64.tar.gz -C /usr/local/
echo 'export PATH=$PATH:/usr/local/go/bin' >> ~/.zshrc
```

### If error occurs while using "go get"
```
GO111MODULE=off go get github.com/<path>

```

