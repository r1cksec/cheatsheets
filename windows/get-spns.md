### get spns
```
Function Get-Spns
{
    $Search = New-Object DirectoryServices.DirectorySearcher([ADSI]"")
    $Search.filter = "(&(objectCategory=person)(objectClass=user)(servicePrincipalName=*))"
    $Results = $Search.Findall()
    
    foreach($Result in $Results)
    {
        $UserEntry = $Result.GetDirectoryEntry()
        Write-host "User : " $UserEntry.name "(" $UserEntry.distinguishedName ")"
        Write-host "SPNs"
    
        foreach($Spn in $UserEntry.servicePrincipalName)
        {
            $Spn
        }
        Write-Host ""
    }
}
```

