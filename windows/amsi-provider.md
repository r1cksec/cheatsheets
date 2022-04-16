### Get amsi provider
```
$A = Get-ChildItem 'HKLM:\SOFTWARE\Microsoft\AMSI\Providers' -Recurse
$A -match '[0-9A-Fa-f\-]{36}'
$Matches.Values | ForEach-Object {Get-ChildItem "HKLM:\SOFTWARE\Classes\CLSID\{$_}" | Format-Table -AutoSize}
```

