Get-Process | Where { $_.MainWindowTitle } | Select-Object ProcessName, MainWindowTitle

