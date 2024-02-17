### Extension Pack
https://www.virtualbox.org/wiki/Downloads
```
VBoxManage extpack install Oracle_VM_VirtualBox_Extension_Pack-<XXX>.vbox-extpack
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
sh ./VBoxLinuxAdditions.run --nox11

- Ubuntu
apt-get install virtualbox-guest-additions-iso
mount /usr/share/virtualbox/VBoxGuestAdditions.iso /mnt
VBoxLinuxAdditions.run/VBoxLinuxAdditions.run
```

###  Fix error "Can not register the hard disk"
```
vboxmanage closemedium disk <id>"
```

### Install developer build
```
bash VirtualBox-<XXX>-Linux_amd64.run
/sbin/vboxconfig

# Uninstall:
bash VirtualBox-<XXX>-Linux_amd64.run uninstall
```

