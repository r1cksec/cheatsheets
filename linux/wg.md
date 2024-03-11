### Install
```
# Ubuntu Debian
apt install wireguard

# Fedora
dnf install wireguard-tools

# Arch
pacman -S wireguard-tools
```

### Generate configuration
```
wg genkey | sudo tee /etc/wireguard/private.key 
cat /etc/wireguard/private.key | wg pubkey | sudo tee /etc/wireguard/public.key
```

### Restart server
```
wg-quick down wg0
systemctl restart wg-quick@wg0.service
```

