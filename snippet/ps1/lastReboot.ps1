Get-WinEvent -FilterHashtable @{logname='System'; id=6005,1074} | ForEach-Object {
    $_.TimeCreated

    if ($_.Id -match "6005")
    {
        "boot"
    }
    if ($_.Id -match "1074")
    {
        "shutdown"
    }
}

