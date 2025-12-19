@echo off
mode con lines=13 cols=70
title .
IF EXIST %appdata%\Microsoft\Credentials\p (
    goto pasrq
) ELSE (
    goto nopsw
)
:errpswror
color 4
echo ^| Nope.
echo ^| WRONG PASSWORD.
timeout -t 1 -nobreak >nul
cls
:pasrq
color A
echo.
echo ^| MultiTool is protected. Please enter the password.
set /p pws=^| PASSWORD:
set /p psw=<%appdata%\Microsoft\Credentials\p
echo ^| Now checking..
IF /i not "%pws%" EQU "%psw%" (goto errpswror)
:nopsw
timeout -t 1 -nobreak >nul
cls
color F
title Hax MultiTool
echo ok
pause