### Compile csharp to exe (dont print warnings or logo)
```
C:\Windows\Microsoft.NET\Framework64\v4.0.30319\csc.exe /warn:0 /nologo .\<file>.cs
```

### Compile to dll
```
C:\Windows\Microsoft.NET\Framework64\v4.0.30319\csc.exe /target:library /out:<file>.dll <file>.cs
```

### Compile with hidden window
```
C:\Windows\Microsoft.NET\Framework64\v4.0.30319\csc.exe  /target:winexe .\<file>.cs
```

### Import library and compile 
```
C:\Windows\Microsoft.NET\Framework64\v4.0.30319\csc.exe <file>.cs -r:"C:\Windows\Microsoft.NET\assembly\GAC_MSIL\System.Management.Automation\v4.0_3.0.0.0__31bf3856ad364e35\System.Management.Automation.dll"
```

