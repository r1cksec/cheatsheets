# get current seconds
$CurrentTime = (Get-Date).ToString('%s')

if ($CurrentTime -eq 58)
{
    $ModifiedTime = [int]0
}
elseif ($CurrentTime -eq 59)
{
    $ModifiedTime = [int]1
}
else
{
    $ModifiedTime = [int]$CurrentTime + 2
}

Start-Sleep -s 2
$CurrentTime = (Get-Date).ToString('%s')

$ModifiedTime
$CurrentTime
if ($CurrentTime -eq $ModifiedTime)
{
    Write-Host "No Sandbox"
}
else
{
    Write-Host "Sandbox"
}

