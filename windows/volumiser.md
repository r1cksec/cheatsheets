### Source
https://github.com/CCob/Volumiser

### Install
```
winget install Microsoft.DotNet.SDK.6
dotnet nuget add source https://api.nuget.org/v3/index.json -n nuget.org
dotnet restore
```

### Browse and extract files from virtual machine hard disk 
```
Volumiser.exe --image "c:\<path>.vhdx"
```

### Supported file formats
```
Amazon EBS Snapshots
VHDX
VMDK
VHD
VHDX
```

