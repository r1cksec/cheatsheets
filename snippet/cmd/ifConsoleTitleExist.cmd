@echo off

for /F "tokens=* USEBACKQ" %%F IN (`tasklist /fi "windowtitle eq <title>"`) do (
set var=%%F
)

if not "%var%"=="%var:cmd.exe=%" (
    echo Yes
) else (
    echo No
)

