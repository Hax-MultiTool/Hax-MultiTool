@echo off

set "whitemode=%~1"
set "forecolor=%~2"
set "music=%~3"

echo      h
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
echo x
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
echo        a
ping localhost -n 1 -w 50 >nul
cls
echo      h
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
echo  x
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
echo        a
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
cls
echo.
ping localhost -n 1 -w 50 >nul
echo      h
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
echo   x
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
echo        a
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
cls
echo.
ping localhost -n 1 -w 50 >nul
echo      h
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul 
echo    x
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
echo        a
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
cls
echo.
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
echo      h
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
echo     x
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
echo        a
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
cls
echo.
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
echo      h
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
echo      x
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
echo        a
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
cls
echo.
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
echo      h
ping localhost -n 1 -w 50 >nul
echo       x
ping localhost -n 1 -w 50 >nul
echo        a
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
cls
echo.
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
echo      h x
ping localhost -n 1 -w 50 >nul
echo        a
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
cls
echo.
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
echo      h a x
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
timeout -t 2 -nobreak >nul
cls

IF "!whitemode!" == "n" (
   IF NOT "%forecolor%"=="none" (
       color !forecolor!
   ) else (
       color B
   )
) else (
   IF NOT "%forecolor%"=="none" (
       color 7!forecolor!
   ) else (
       color 79
   )
)
if "!music!"=="n" (
   set musicsetting=False
) else (
   set musicsetting=True
   START /min cmd.exe /c powershell -NoProfile -WindowStyle hidden -ExecutionPolicy Bypass -Command "-c (New-Object Media.SoundPlayer "content/sound/startup2.wav").PlaySync();"
)
echo.
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
echo     ____________________________
echo    ^/                            \
echo    ^|  h a x  m u l t i t o o l  ^|
echo    ^\____________________________^/
echo               -Chroma
echo               haxs.dev 
echo                  ^<3
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
echo.
ping localhost -n 1 -w 50 >nul
echo                 ...
ping localhost -n 1 -w 50 >nul
timeout -t 3 -nobreak >nul
