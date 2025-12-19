@echo off
curl -s https://raw.githubusercontent.com/HaxMultiTool/Tools-updates/main/MultiTool > temp.txt
set value=0
set /p value=<temp.txt
set "value=!value: =!"
if not %value%==b30009 (
    echo An update is available! Please update!
    pause
) else (
    echo Up to date.
)
del temp.txt>nul 2>&1