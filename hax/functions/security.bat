@echo off
setlocal enabledelayedexpansion
mode con lines=13 cols=70
echo looking for the password>>junk/logs.txt 
IF EXIST %appdata%\Microsoft\Credentials\p (
    goto pasrq
) ELSE (
    echo no password required>>junk/logs.txt 
    goto eof
)
:errpswror
color 4
echo Wrong password>>junk/logs.txt 
echo ^| Nope.
echo ^| WRONG PASSWORD.
timeout -t 1 -nobreak >nul
cls
:pasrq
color A
echo.
echo Multitool is protected>>junk/logs.txt 
echo ^| MultiTool is protected. Please enter the password.
set /p pws=^| PASSWORD:
set "pws=!pws: =!"
set /p psw=<%appdata%\Microsoft\Credentials\p
set "psw=!psw: =!"
echo ^| Now checking..
IF not "!pws!" EQU "!psw!" (goto errpswror)
echo Password got it>>junk/logs.txt 
:eof
:: end of function
