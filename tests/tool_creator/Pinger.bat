
@echo off
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo                Chroma
echo                Internet Tools
echo                .__              
echo                [__^)*._  _  _ ._.
echo                ^|   ^|[ ^)^(_]^(^/,[  
echo                        ._^|      

call button 1 0 "Hax v3" 20 13 "Start" 34 13 "Info " 48 13 "Back " # Press
Getinput /m %Press% /h 70
if %errorlevel%==1 ( call :gotoSafe startmenu )
if %errorlevel%==2 ( echo. && echo. && call :gotoSafe rundswap )
if %errorlevel%==3 ( echo. && echo. && echo                Pings && timeout -t 4 -nobreak > nul)
if %errorlevel%==4 ( call :gotoSafe TrollsTools )
goto x
