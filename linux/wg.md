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

