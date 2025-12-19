@echo off
setlocal enabledelayedexpansion
@Title Hax MultiTool
cd /d "%~dp0"
:-------------------------------------------------
taskkill /f /fi "windowtitle eq haxstarter" >nul 2>&1
taskkill /f /im "WindowsTerminal.exe" /T >nul 2>&1
timeout -t 1 -nobreak >nul
:_preboot_
call functions/settings createcheck
checkfordoubledebug.exe>>junk/logs.txt
start conhost debug.bat
timeout -t 1 -nobreak >nul
echo settings checked>>junk/logs.txt
call functions/security
echo checking updates>>junk/logs.txt 
:: call functions/checkupdate
echo updates checked>>junk/logs.txt 
echo killing conhost starter>>junk/logs.txt 
echo finding other sessions>>junk/logs.txt 
checkforduplicate.exe
echo admin engine running..>>junk/logs.txt 
call functions/admin
echo cleaning up files>>junk/logs.txt 
call functions/cleanup

:-------------------------------------------------
:_renderer_
echo starting renderer>>junk/logs.txt
call functions/renderer
pause
