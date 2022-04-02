@echo off
set command=dir
for /F "delims=" %%A in ('%command%') do (
    set tempvar=%%A
        goto :Print
)

:Print
echo %tempvar%

