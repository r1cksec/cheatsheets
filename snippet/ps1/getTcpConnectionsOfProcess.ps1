$TrackProcessName = "*processName*"
$EstablishedConnections = Get-NetTCPConnection -State Established |Select-Object -Property LocalAddress, LocalPort,@{name='RemoteHostName';expression={(Resolve-DnsName $_.RemoteAddress).NameHost}},RemoteAddress, RemotePort, State,@{name='ProcessName';expression={(Get-Process -Id $_.OwningProcess). Path}}, OffloadState,CreationTime
Foreach ($Connection in $EstablishedConnections)
{
If ($Connection.ProcessName -like $TrackProcessName)
{
$Connection|ft
}
}

