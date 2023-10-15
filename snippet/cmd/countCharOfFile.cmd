@echo off

set /p "file=enter filename: "

rem /p means prompt
for %%c in (%file%) do set count=%%~zc

echo this file has %count% chars

pause

