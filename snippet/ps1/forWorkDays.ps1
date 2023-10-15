$allComm = @(
"echo 1"
"echo 2"
"echo end"
)

while (1) 
{
    Start-Sleep 1
    if (((Get-Date).DayOfWeek.value__ -ne 6) -and ((Get-Date).DayOfWeek.value__ -ne 7))
    {
        if (([int](Get-Date -Format "HH") -gt 7) -and ([int](Get-Date -Format "HH") -lt 21))
        {
            iex($allComm[0])
            
            if ($allComm.Length -eq 2)
            {
                return 0
            }
            $allComm = $allComm | Select-Object -Skip 1
        }
    }
}

