### Gatekeeper
```
Evaluates certain file types (apps, installers, machos, etc.)
Check for signing and notarization
```

### XProtect
```
Part of Gatekeepr
Malware definitions (yara) & blocklist
```

## MacOS TCC (Privacy Protection)
```
Protected:
~/Desktop
~/Documents
~/Downloads
iCloud Drive
etc.

Not Protected:
~ dir itself
~/.ssh
~/aws
/tmp
etc.
```

### Quarantine Attribute
```
Appended by the OS to files downloaded via Browsers, Bluetooth, Airdrop
Using curl does not append the attribute
```

