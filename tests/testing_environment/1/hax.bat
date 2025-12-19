@echo off
setlocal enabledelayedexpansion
cd /d "%~dp0"
echo correct location
call settings.bat createcheck
echo settings loaded
call weadmin.bat
echo admin check
pause