@echo off


for /f "tokens=*" %%f in ('wmic process where "commandline like '%%hello.py%%'" get CommandLine /format:csv ^| findstr /v "wmic"') do set "var=%%f"
::echo "%var%"
if "%var%"=="Node,CommandLine" (
    echo The process %processName% is NOT running.
) else (
    echo The process %processName% is running.
)

pause
