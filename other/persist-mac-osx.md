### File paths
```
Userland:
~/Library/LaunchAgents

Elevated:
/Library/LaunchAgents
/Library/LaunchDaemons
```

### Start at logon
```
vim ~/Library/LaunchAgents/com.some.name.plist

# insert:
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple Computer//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
<key>Label</key>
<string>some.label</string>
<key>Program</key>
<string>/home/user/some-name.sh</string>
<key>RunAtLoad</key>
<true/>
</dict>
```

