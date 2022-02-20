$Size = (Get-Item "Path\To\File").length
$SizeKB = [System.Math]::Round((($Size)/1KB),2)
$SizeMB = [System.Math]::Round((($Size)/1MB),2)
$SizeGB = [System.Math]::Round((($Size)/1GB),2)
Write-Host "Size(KB): "$SizeKB -ForegroundColor Green
Write-Host "Size(MB): "$SizeMB -ForegroundColor Green
Write-Host "Size(GB): "$SizeGB -ForegroundColor Green

