
# get windows defender settings
Get-MpPreference
```

### Exclude directory from real-time and scheduled scanning
```
Set-MpPreference -ExclusionPath <path>
```

### Disable real-time protection
```
Set-MpPreference -DisableRealtimeMonitoring $true
```

### Disable defender
```
Set-MpPreference -DisableIntrusionPreventionSystem $true -DisableIOAVProtection $true -DisableRealtimeMonitoring $true -DisableScriptScanning $true -EnableControlledFolderAccess Disabled -EnableNetworkProtection AuditMode -Force -MAPSReporting Disabled -SubmitSamplesConsent NeverSend
```

