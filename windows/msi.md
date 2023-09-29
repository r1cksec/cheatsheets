### Source
https://github.com/wixtoolset/wix3

### Generate msi file 
```
.\candle.exe <file>.wxs
.\light.exe -ext WixUIExtension -cultures:en-us -dcl:high -out <file>.msi <file>.wixobj
```

### Compile DLL for custom DLL entry msi (newCustomAction.dll will be created at runtime)
```
public static ActionResult <name> in <file>.cs must correspond to DllEntry="name" in <file>.wsx

C:\Windows\Microsoft.NET\Framework64\v2.0.50727\csc.exe /r:C:\<pathToWix>\Microsoft.Deployment.WindowsInstaller.dll /target:library /out:<file>.CA.dll .\<file>.cs
C:\<pathToWix>\sdk\MakeSfxCA.exe C:\<pathTo>\<newCustomAction>.dll C:\<pathToWix>\sdk\x64\sfxca.dll C:\<pathToWix>\<file>.dll C:\<pathToWix>\Microsoft.Deployment.WindowsInstaller.dll
```

### Uninstall msi
```
msiexec /q /x <file>.msi
```

### Custom action type numbers
| Number | Action |
| - | - |
| 1250, 3298, 226 | EXE or system command 
| 1126, 102       | VBScript 
| 1125, 101       | JScript 
| 1218, 194       | Binary table: EXE 
| 65              | Binary table: DLL 
| 1746            | EXE in from installation directory 

