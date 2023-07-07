### Extension Pack
https://www.virtualbox.org/wiki/Downloads
```
sudo VBoxManage extpack install Oracle_VM_VirtualBox_Extension_Pack-<XXX>.vbox-extpack
```

### Disk usage of AD joined/configured windows hosts
```
Windows 7: 50 – 60GB
Windows 10: 15 – 25GB
Windows Server 2008 R2: 7 – 10GB
Windows Server 2012 R2: 7 – 10GB
Windows Server 2016: 12 – 15GB
```

### If screen keeps being black
```
Set
Graphic Memory > 64M
```

### Install guest additions
```
- Debian
su root
/sbin/usermod -a -G sudo ${USER}
apt install build-essential dkms linux-headers-$(uname -r)
mkdir -p /mnt/cdrom
mount /dev/cdrom /mnt/cdrom
cd /mnt/cdrom
sudo sh ./VBoxLinuxAdditions.run --nox11

- Ubuntu
sudo apt-get install virtualbox-guest-additions-iso
sudo mount /usr/share/virtualbox/VBoxGuestAdditions.iso /mnt
sudo VBoxLinuxAdditions.run/VBoxLinuxAdditions.run
```

###  Fix error "Can not register the hard disk"
```
vboxmanage closemedium disk <id>"
```

### Install developer build
```
sudo bash VirtualBox-<XXX>-Linux_amd64.run
sudo /sbin/vboxconfig

# Uninstall:
sudo bash VirtualBox-<XXX>-Linux_amd64.run uninstall
```

