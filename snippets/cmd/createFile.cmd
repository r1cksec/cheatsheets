@echo off

SET fileName=file.txt

if exist %fileName (
    echo file already exist
) else (
    echo ^" Use this to escape ^{ > %fileName%
)

pause

