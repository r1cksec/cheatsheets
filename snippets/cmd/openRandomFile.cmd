@echo off

cd %HOMEPATH%

dir /s /b /a-d-h *.jpg > temp.txt

set /p RANPIC=< temp.txt

start %RANPIC%

del temp.txt

