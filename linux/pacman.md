### Remove a package and its dependencies which are not required by any other installed package
```
pacman -Rs <package>
```

### Check if package is already installed
```
pacman -Qi <package>
```

### Get a list of all installed packages
```
pacman -Qqe
```

### Clean package cache 
```
paccache -r
```

### Path to pacman cache
```
/var/cache/pacman/pkg
```

### Downgrade a package
```
pacman -U /var/cache/pacman/pkg/<package-old_version>.pkg.tar.xz
```

### After this you sould blacklist the package temporarily inside: /etc/pacman.conf
```
IgnorePkg=<package>
```

