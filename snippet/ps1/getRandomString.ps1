# get random letter from A-Z and a-z with length 5
-join ((65..90) + (97..122) | Get-Random -Count 5 | % {[char]$_})

