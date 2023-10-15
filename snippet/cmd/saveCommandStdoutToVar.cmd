for /F "tokens=* USEBACKQ" %%F IN (`dir`) do (
set var=%%F
)

echo %var%

