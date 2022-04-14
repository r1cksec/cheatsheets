# read file content into variable
$FileContent = Get-Content <file>

# prevent System.Object[], otherwise web request will not work
$PostParams = @{POSTvariable=($FileContent | Out-String)}

# start web request
$PostParams = @{variable1='string1'; variable2='string2'}
Invoke-WebRequest -Uri http://<url>/file.php -Method POST -Body $PostParams

