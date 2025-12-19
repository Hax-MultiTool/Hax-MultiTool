@echo off
cls
if exist settings/wm.txt (
   set /p whitemode=<settings/wm.txt
) else (
   START cmd.exe /k functions/settings createcheck
)
set /p ccolor=<settings/clr.txt
set "ccolor=!ccolor: =!"
IF "%ccolor%" == "DEFAULT" set forecolor=none
IF "%ccolor%" == "RED" set forecolor=4
IF "%ccolor%" == "SALMON" set forecolor=c 
IF "%ccolor%" == "MUSTARD" set forecolor=6
IF "%ccolor%" == "SUN" set forecolor=e
IF "%ccolor%" == "HACKERMAN" set forecolor=a
IF "%ccolor%" == "LEAF" set forecolor=2
IF "%ccolor%" == "DIAMOND" set forecolor=b
IF "%ccolor%" == "SKY" set forecolor=9
IF "%ccolor%" == "OCEAN" set forecolor=1
IF "%ccolor%" == "PEONY" set forecolor=d
IF "%ccolor%" == "RETRO" set forecolor=5
IF "!whitemode!" == "n" (
   IF NOT "%forecolor%"=="none" (
       color !forecolor!
   ) else (
        cls
        echo This should not happen, and its an error!
        echo Please try restarting or contact support.
        echo Error code: [COLORWHAT???]
        pause
        exit
   )
) else (
   IF NOT "%forecolor%"=="none" (
       color 7!forecolor!
   ) else (
        cls
        echo This should not happen, and its an error!
        echo Please try restarting or contact support.
        echo Error code: [WHITECOLORWHAT???]
        pause
        exit
   )
)
if exist settings/sfx.txt (
   set /p sfx=<settings/sfx.txt
) else (
    goto SettingMalfunction
)

if "!sfx!"=="n" (
   set sfxsetting=False
) else (
   set sfxsetting=True
)
echo.
echo.
echo          ___     ___     ___________     ___      ____
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
echo         ^|   ^|   ^|   ^|   /    ___    \   \   \    /   /
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
echo         ^|   ^|___^|   ^|  ^|    /   \    ^|   \   \  /   /
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
echo         ^|           ^|  ^|   ^|_____^|   ^|    \   \/   /
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
echo         ^|    ___    ^|  ^|             ^|    /       \
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
echo         ^|   ^|   ^|   ^|  ^|   _______   ^|   /    /\   \
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
echo         ^|   ^|   ^|   ^|  ^|   ^|     ^|   ^|  /    /  \   \
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
echo         ^|___^|   ^|___^|  ^|___^|     ^|___^| /____/    \___\
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
echo.
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
echo ^= ^= ^= ^= ^= ^= ^= ^= ^= ^= ^= ^= ^= ^= ^= ^= ^= ^= ^= ^= ^= ^= ^= ^= ^= ^= ^= ^= ^= ^= ^= ^= ^=
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
echo.
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
echo        ____    ____   __    __   __    ___________    ___
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
echo       ^|    \  /    ^| ^|  ^|  ^|  ^| ^|  ^|  ^|           ^|  ^|   ^|
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
echo       ^|     \/     ^| ^|  ^|  ^|  ^| ^|  ^|  ^|____   ____^|  ^|   ^|
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
echo       ^|            ^| ^|  ^|  ^|  ^| ^|  ^|      ^|   ^|      ^|   ^|
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
echo       ^|   ^|\  /^|   ^| ^|  ^|__^|  ^| ^|  ^|___   ^|   ^|      ^|   ^|
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
echo       ^|   ^| \/ ^|   ^| ^|        ^| ^|      ^|  ^|   ^|      ^|   ^|
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
echo       ^|___^|    ^|___^| ^|________^| ^|______^|  ^|___^|      ^|___^|
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
echo.
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
echo         ____________   _________    _________   __
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
echo        ^|            ^| ^|         ^|  ^|         ^| ^|  ^|
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
echo        ^|____    ____^| ^|   ___   ^|  ^|   ___   ^| ^|  ^|
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
echo            ^|    ^|     ^|  ^|   ^|  ^|  ^|  ^|   ^|  ^| ^|  ^|
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
echo            ^|    ^|     ^|  ^|___^|  ^|  ^|  ^|___^|  ^| ^|  ^|____
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
echo            ^|    ^|     ^|         ^|  ^|         ^| ^|       ^|
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
echo            ^|____^|     ^|_________^|  ^|_________^| ^|_______^|
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
echo.
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
echo.
echo ^= ^= ^= ^= ^= ^= ^= ^= ^= ^= ^= ^= ^= ^= ^= ^= ^= ^= ^= ^= ^= ^= ^= ^= ^= ^= ^= ^= ^= ^= ^= ^= ^=
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
color 20
if "!sfx!"=="n" (
   set sfxsetting=False
) else (
      START /min cmd.exe /c powershell -NoProfile -WindowStyle hidden -ExecutionPolicy Bypass -Command "-c (New-Object Media.SoundPlayer "content/sound/startup2.wav").PlaySync();"
   set sfxsetting=True
)
ping localhost -n 2 >nul
color 02
ping localhost -n 2 >nul
color 20
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
echo.
echo                        Hax MultiTool v3
echo                            -Chroma
echo [40;30m       [40;35m                    haxs.dev
echo                               ^<3
timeout -t 3 -nobreak >nul
mode con lines=28 cols=65
ping localhost -n 2 >nul
