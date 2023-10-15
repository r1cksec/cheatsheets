@echo off

for /f "delims=" %%a in ('Type %HOMEPATH%\file.txt') do ( 
    echo %%a
)

pause%

