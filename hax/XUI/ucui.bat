@echo off
setlocal enabledelayedexpansion

:_loadsettings_
:----------------------
echo [MAIN] loading settings..>>junk/logs.txt
echo [MAIN] loading white mode..>>junk/logs.txt
:: white mode
if exist settings/wm.txt (
   set /p whitemode=<settings/wm.txt
) else (
   START cmd.exe /k functions/settings createcheck
)

echo [MAIN] loading color palette..>>junk/logs.txt
:: colors
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

echo [MAIN] loading animations..>>junk/logs.txt
:: animations
if exist settings/anims.txt (
   set /p animations=<settings/anims.txt
) else (
    goto SettingMalfunction
)

if "!animations!"=="n" (
   set animsetting=False
) else (
   set animsetting=True
)

echo [MAIN] loading startup music..>>junk/logs.txt
:: startup music
if exist settings/music.txt (
   set /p music=<settings/music.txt
) else (
    goto SettingMalfunction
)

if "!music!"=="n" (
   set musicsetting=False
) else (
   set musicsetting=True
   START /min cmd.exe /c powershell -NoProfile -WindowStyle hidden -ExecutionPolicy Bypass -Command "-c (New-Object Media.SoundPlayer "content/sound/startup.wav").PlaySync();"
)

echo [MAIN] loading sound effcts..>>junk/logs.txt
:: sound effects
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
:----------------------
echo [MAIN] loading colors.. >>junk/logs.txt
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
echo [MAIN] loading intro for click ui..>>junk/logs.txt
:_intro_
if "!animations!"=="n" (
   set animsetting=False
   @mode 36, 24
) else (
   set animsetting=True
   @mode 70, 13
   @mode 68, 14
   @mode 64, 15
   @mode 60, 16
   @mode 58, 17
   @mode 54, 18
   @mode 50, 19
   @mode 48, 20
   @mode 44, 21
   @mode 40, 22
   @mode 38, 23
   @mode 36, 24
)
echo [MAIN] --------------------------------- >>junk/logs.txt
echo [MAIN] Variables Settings: >>junk/logs.txt
echo [MAIN] --------------------------------- >>junk/logs.txt
echo [MAIN] White mode: "!whitemode!" >>junk/logs.txt
echo [MAIN] Forecolor: "!forecolor!" >>junk/logs.txt
echo [MAIN] Animations: "!animations!" >>junk/logs.txt
echo [MAIN] Music: "!music!" >>junk/logs.txt
echo [MAIN] Sound effects: "!sfx!" >>junk/logs.txt
echo [MAIN] --------------------------------- >>junk/logs.txt

rem ==================================
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
if "!animations!"=="n" (
   set anims=False
   @mode 118, 31
) else (
   set anims=True
   mode con cols=46 lines=25
   @mode 50, 26
   @mode 55, 27
   @mode 60, 28
   @mode 65, 29
   @mode 70, 30
   @mode 80, 31
   @mode 90, 31
   @mode 100, 31
   @mode 118, 31
)
goto startmenu
rem ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:startmenu
echo [MAIN] loading startmenu>>junk/logs.txt
taskkill /f /im GetInput.exe >nul 2>&1
@Title Hax MultiTool v3
@mode 118, 31
Batbox /h 0
if "!sfx!"=="n" (
   set sfxsetting=False
) else (
   set sfxsetting=True
   START /min cmd.exe /c powershell -NoProfile -WindowStyle hidden -ExecutionPolicy Bypass -Command "-c (New-Object Media.SoundPlayer "content/sound/click.wav").PlaySync();"
)
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
echo.
echo.
echo                                                   _    _            
echo                                                  ^| ^|  ^| ^|           
echo                                                  ^| ^|__^| ^| __ ___  __
echo                                                  ^|  __  ^|^/ _` \ \^/ ^/
echo                                                  ^| ^|  ^| ^| ^(_^| ^|^>  ^< 
echo                                                  ^|_^|  ^|_^|\__,_^/_^/\_\
echo                                        __  __       _ _   _ _______          _                     
echo                                       ^|  \^/  ^|     ^| ^| ^| ^(_^)__   __^|        ^| ^|                    
echo                                       ^| \  ^/ ^|_   _^| ^| ^|_ _   ^| ^| ___   ___ ^| ^|
echo                                       ^| ^|\^/^| ^| ^| ^| ^| ^| __^| ^|  ^| ^|^/ _ \ ^/ _ \^| ^|
echo                                       ^| ^|  ^| ^| ^|_^| ^| ^| ^|_^| ^|  ^| ^| ^(_^) ^| ^(_^) ^| ^|
echo                                       ^|_^|  ^|_^|\__^,_^|_^|\__^|_^|  ^|_^|\___^/ \___^/^|_^|
echo.
echo.
Call Button  25 17 "Internet Tools" 44 17 "Windows Tools" 62 17 "AI Tools" 75 17 "Trolls Tools" 25 20 "Info Tools" 41 20 "Aesthetic Tools" 62 20 "Games" 73 20 "Saved Websites" 105 0 "Settings" 1 0 "Hax v3" 1 27 "Help" 112 27 "+" # Press
powershell -command "Start-Sleep -Milliseconds 500"
Getinput /m %Press% /h 70

if %errorlevel%==1 (goto InternetTools)
if %errorlevel%==2 (goto WindowsTools)
if %errorlevel%==3 (goto Aitools)
if %errorlevel%==4 (goto TrollsTools)
if %errorlevel%==5 (goto InfoTools)
if %errorlevel%==6 (goto AestheticTools)
if %errorlevel%==7 (goto GAMES)
if %errorlevel%==8 (goto Websites)
if %errorlevel%==9 (goto SETTS)
if %errorlevel%==10 (goto startmenu)
if %errorlevel%==11 (goto help)
if %errorlevel%==12 (goto fullscreen)
goto startmenu
rem ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:InternetTools
echo [MAIN] loading internet tools>>junk/logs.txt
if "!sfx!"=="n" (
   set sfxsetting=False
) else (
   set sfxsetting=True
   START /min cmd.exe /c powershell -NoProfile -WindowStyle hidden -ExecutionPolicy Bypass -Command "-c (New-Object Media.SoundPlayer "content/sound/click.wav").PlaySync();"
)
taskkill /f /im GetInput.exe >nul 2>&1
@mode 118, 31
cls 
IF "!whitemode!" == "n" (
   IF NOT "%forecolor%"=="none" (
       color !forecolor!
   ) else (
       color A
   )
) else (
   IF NOT "%forecolor%"=="none" (
       color 7!forecolor!
   ) else (
       color 72
   )
)
IF EXIST hplayit.exe ( del /F hplayit.exe)
echo.
echo                                  _  _            __  __      _ _   _ _____         _ 
echo                                 ^| ^|^| ^|__ ___ __ ^|  \^/  ^|_  _^| ^| ^|_^(_^)_   _^|__  ___^| ^|
echo                                 ^| __ ^/ _^` \ \ ^/ ^| ^|\^/^| ^| ^|^| ^| ^|  _^| ^| ^| ^|^/ _ \^/ _ \ ^|
echo                                 ^|_^|^|_\__^,_^/_\_\ ^|_^|  ^|_^|\_^,_^|_^|\__^|_^| ^|_^|\___^/\___^/_^|
echo.
Call Button  25 5 "Internet Tools" 44 17 "Windows Tools" 62 17 "AI Tools" 75 17 "Trolls Tools" 25 20 "Info Tools" 41 20 "Aesthetic Tools" 62 20 "Games" 73 20 "Saved Websites" 105 0 "Settings" 1 0 "Hax v3" 1 27 "Help" 112 27 "+" # Press
Call Button2 23 7 "Webdirectory finder" 23 8 "Connection Checker" 23 9 "Telnet Telehack" 23 10 "Google Terminal" 23 11 "Website Tracker" 23 12 "The Unblocker" 23 13 "Playit Agent" 23 14 "Meme Browser" 23 15 "DNS Refresh" 23 16 "Ip Checker" 23 17 "Music Bot" 23 18 "Pinger" 25 5 "Internet Tools" 44 17 "Windows Tools" 62 17 "AI Tools" 75 17 "Trolls Tools" 25 20 "Info Tools" 41 20 "Aesthetic Tools" 62 20 "Games" 73 20 "Saved Websites" 105 0 "Settings" 1 0 "Hax v3" 1 27 "Help" 112 27 "+" # Press 
powershell -command "Start-Sleep -Milliseconds 500"
Getinput /m %Press% /h 70


if %errorlevel%==1 (goto Subd)
if %errorlevel%==2 (goto NetChecz)
if %errorlevel%==3 (goto TELN)
if %errorlevel%==4 (goto GoogCmd)
if %errorlevel%==5 (goto WebTracer)
if %errorlevel%==6 (goto THunblck)
if %errorlevel%==7 (goto playitt)
if %errorlevel%==8 (goto MBW)
if %errorlevel%==9 (goto DNSR)
if %errorlevel%==10 (goto Ipcheck)
if %errorlevel%==11 (goto DSCMUSICBOT)
if %errorlevel%==12 (goto Pg)
if %errorlevel%==13 (goto internetTools)
if %errorlevel%==14 (goto WindowsTools)
if %errorlevel%==15 (goto Aitools)
if %errorlevel%==16 (goto TrollsTools)
if %errorlevel%==17 (goto InfoTools)
if %errorlevel%==18 (goto AestheticTools)
if %errorlevel%==19 (goto GAMES)
if %errorlevel%==20 (goto Websites)
if %errorlevel%==21 (goto SETTS)
if %errorlevel%==22 (goto startmenu)
if %errorlevel%==23 (goto help)
if %errorlevel%==24 (goto fullscreen)


goto internetTools
rem ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:WindowsTools
echo [MAIN] loading windows tools>>junk/logs.txt
if "!sfx!"=="n" (
   set sfxsetting=False
) else (
   set sfxsetting=True
   START /min cmd.exe /c powershell -NoProfile -WindowStyle hidden -ExecutionPolicy Bypass -Command "-c (New-Object Media.SoundPlayer "content/sound/click.wav").PlaySync();"
)

@mode 118, 31
cls 
IF "!whitemode!" == "n" (
   IF NOT "%forecolor%"=="none" (
       color !forecolor!
   ) else (
       color E
   )
) else (
   IF NOT "%forecolor%"=="none" (
       color 7!forecolor!
   ) else (
       color 76
   )
)
echo.
echo                                  _  _            __  __      _ _   _ _____         _ 
echo                                 ^| ^|^| ^|__ ___ __ ^|  \^/  ^|_  _^| ^| ^|_^(_^)_   _^|__  ___^| ^|
echo                                 ^| __ ^/ _^` \ \ ^/ ^| ^|\^/^| ^| ^|^| ^| ^|  _^| ^| ^| ^|^/ _ \^/ _ \ ^|
echo                                 ^|_^|^|_\__^,_^/_\_\ ^|_^|  ^|_^|\_^,_^|_^|\__^|_^| ^|_^|\___^/\___^/_^|
echo.
Call Button  25 17 "Internet Tools" 44 5 "Windows Tools" 62 17 "AI Tools" 75 17 "Trolls Tools" 25 20 "Info Tools" 41 20 "Aesthetic Tools" 62 20 "Games" 73 20 "Saved Websites" 105 0 "Settings" 1 0 "Hax v3" 1 27 "Help" 112 27 "+" # Press
Call Button2  42 7 "Discord Nitro Activator" 42 8 "Windows KeyFinder" 42 9 "Spotify Activator" 42 10 "Windows Activator" 42 11 "Password Changer" 42 12 "Office Activator" 42 13 "Blur Videos" 42 14 "SuperAdmin" 42 15 "Fork-Bomb" 42 16 "PC Fixer" 42 17 "Wureset" 42 18 "GMADF" 25 17 "Internet Tools" 44 5 "Windows Tools" 62 17 "AI Tools" 75 17 "Trolls Tools" 25 20 "Info Tools" 41 20 "Aesthetic Tools" 62 20 "Games" 73 20 "Saved Websites" 105 0 "Settings" 1 0 "Hax v3" 1 27 "Help" 112 27 "+" # Press 
timeout -t 1 -nobreak >nul
Getinput /m %Press% /h 70

if !errorlevel!==1 (goto DisNitrAc)
if !errorlevel!==2 (goto WiKeyFin)
if !errorlevel!==3 (goto SpotyX)
if !errorlevel!==4 (goto WindowAc)
if !errorlevel!==5 (goto PassChan)
if !errorlevel!==6 (goto OfficeAc)
if !errorlevel!==7 (goto blurstuff)
if !errorlevel!==8 (goto superadmin)
if !errorlevel!==9 (goto FUCK)
if !errorlevel!==10 (goto PCfixer)
if !errorlevel!==11 (goto wrreset)
if !errorlevel!==12 (goto GMADF)
if !errorlevel!==13 (goto internetTools)
if !errorlevel!==14 (goto WindowsTools)
if !errorlevel!==15 (goto Aitools)
if !errorlevel!==16 (goto TrollsTools)
if !errorlevel!==17 (goto InfoTools)
if !errorlevel!==18 (goto AestheticTools)
if !errorlevel!==19 (goto GAMES)
if !errorlevel!==20 (goto Websites)
if !errorlevel!==21 (goto SETTS)
if !errorlevel!==22 (goto startmenu)
if !errorlevel!==23 (goto help)
if !errorlevel!==24 (goto fullscreen)

goto WindowsTools
rem ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:Aitools
echo [MAIN] loading ai tools>>junk/logs.txt
if "!sfx!"=="n" (
   set sfxsetting=False
) else (
   set sfxsetting=True
   START /min cmd.exe /c powershell -NoProfile -WindowStyle hidden -ExecutionPolicy Bypass -Command "-c (New-Object Media.SoundPlayer "content/sound/click.wav").PlaySync();"
)
taskkill /f /im GetInput.exe >nul 2>&1
@mode 118, 31
cls 
IF "!whitemode!" == "n" (
   IF NOT "%forecolor%"=="none" (
       color !forecolor!
   ) else (
       color 5
   )
) else (
   IF NOT "%forecolor%"=="none" (
       color 7!forecolor!
   ) else (
       color 75
   )
)
echo.
echo                                  _  _            __  __      _ _   _ _____         _ 
echo                                 ^| ^|^| ^|__ ___ __ ^|  \^/  ^|_  _^| ^| ^|_^(_^)_   _^|__  ___^| ^|
echo                                 ^| __ ^/ _^` \ \ ^/ ^| ^|\^/^| ^| ^|^| ^| ^|  _^| ^| ^| ^|^/ _ \^/ _ \ ^|
echo                                 ^|_^|^|_\__^,_^/_\_\ ^|_^|  ^|_^|\_^,_^|_^|\__^|_^| ^|_^|\___^/\___^/_^|
echo.
Call Button  25 17 "Internet Tools" 44 17 "Windows Tools" 62 5 "AI Tools" 75 17 "Trolls Tools" 25 20 "Info Tools" 41 20 "Aesthetic Tools" 62 20 "Games" 73 20 "Saved Websites" 105 0 "Settings" 1 0 "Hax v3" 1 27 "Help" 112 27 "+" # Press
Call Button2 62 7 "HaxiboMini" 63 8 "Moderator" 65 9 "Hax-GPT" 66 10 "WinTTS" 25 17 "Internet Tools" 44 17 "Windows Tools" 62 5 "AI Tools" 75 17 "Trolls Tools" 25 20 "Info Tools" 41 20 "Aesthetic Tools" 62 20 "Games" 73 20 "Saved Websites" 105 0 "Settings" 1 0 "Hax v3" 1 27 "Help" 112 27 "+" # Press 
powershell -command "Start-Sleep -Milliseconds 500"
Getinput /m %Press% /h 70

if %errorlevel%==1 ( goto HaxE )
if %errorlevel%==2 ( goto Fatmod )
if %errorlevel%==3 ( goto HaxGPT )
if %errorlevel%==4 ( goto TTTS )
if %errorlevel%==5 ( goto internetTools )
if %errorlevel%==6 ( goto WindowsTools )
if %errorlevel%==7 ( goto Aitools )
if %errorlevel%==8 ( goto TrollsTools )
if %errorlevel%==9 ( goto InfoTools )
if %errorlevel%==10 ( goto AestheticTools )
if %errorlevel%==11 ( goto GAMES )
if %errorlevel%==12 ( goto Websites )
if %errorlevel%==13 ( goto SETTS )
if %errorlevel%==14 ( goto startmenu )
if %errorlevel%==15 ( goto help )
if %errorlevel%==16 ( goto fullscreen )

goto Aitools
rem ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:TrollsTools
echo [MAIN] loading trolls tools>>junk/logs.txt
if "!sfx!"=="n" (
   set sfxsetting=False
) else (
   set sfxsetting=True
   START /min cmd.exe /c powershell -NoProfile -WindowStyle hidden -ExecutionPolicy Bypass -Command "-c (New-Object Media.SoundPlayer "content/sound/click.wav").PlaySync();"
)
taskkill /f /im GetInput.exe >nul 2>&1
@mode 118, 31
cls 
IF "!whitemode!" == "n" (
   IF NOT "%forecolor%"=="none" (
       color !forecolor!
   ) else (
       color F
   )
) else (
   IF NOT "%forecolor%"=="none" (
       color 7!forecolor!
   ) else (
       color 70
   )
)
echo.
echo                                  _  _            __  __      _ _   _ _____         _ 
echo                                 ^| ^|^| ^|__ ___ __ ^|  \^/  ^|_  _^| ^| ^|_^(_^)_   _^|__  ___^| ^|
echo                                 ^| __ ^/ _^` \ \ ^/ ^| ^|\^/^| ^| ^|^| ^| ^|  _^| ^| ^| ^|^/ _ \^/ _ \ ^|
echo                                 ^|_^|^|_\__^,_^/_\_\ ^|_^|  ^|_^|\_^,_^|_^|\__^|_^| ^|_^|\___^/\___^/_^|
echo.
Call Button  25 17 "Internet Tools" 44 17 "Windows Tools" 62 17 "AI Tools" 75 5 "Trolls Tools" 25 20 "Info Tools" 41 20 "Aesthetic Tools" 62 20 "Games" 73 20 "Saved Websites" 105 0 "Settings" 1 0 "Hax v3" 1 27 "Help" 112 27 "+" # Press
Call Button2  76 7 "Mouse-Swapper" 79 8 "DiskFiller" 79 9 "Shutdowner" 81 10 "Rickroll" 82 11 "Annoyer" 25 17 "Internet Tools" 44 17 "Windows Tools" 62 17 "AI Tools" 75 5 "Trolls Tools" 25 20 "Info Tools" 41 20 "Aesthetic Tools" 62 20 "Games" 73 20 "Saved Websites" 105 0 "Settings" 1 0 "Hax v3" 1 27 "Help" 112 27 "+" # Press
powershell -command "Start-Sleep -Milliseconds 500"
Getinput /m %Press% /h 70

if %errorlevel%==1 (goto MSW)
if %errorlevel%==2 (goto ZIPg)
if %errorlevel%==3 (goto SHTDWN)
if %errorlevel%==4 (goto rick)
if %errorlevel%==5 (goto ANNY)
if %errorlevel%==6 (goto internetTools)
if %errorlevel%==7 (goto WindowsTools)
if %errorlevel%==8 (goto Aitools)
if %errorlevel%==9 (goto TrollsTools)
if %errorlevel%==10 (goto InfoTools)
if %errorlevel%==11 (goto AestheticTools)
if %errorlevel%==12 (goto GAMES)
if %errorlevel%==13 (goto Websites)
if %errorlevel%==14 (goto SETTS)
if %errorlevel%==15 (goto startmenu)
if %errorlevel%==16 (goto help)
if %errorlevel%==17 (goto fullscreen)

goto TrollsTools
rem ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:InfoTools
echo [MAIN] loading info tools>>junk/logs.txt
if "!sfx!"=="n" (
   set sfxsetting=False
) else (
   set sfxsetting=True
   START /min cmd.exe /c powershell -NoProfile -WindowStyle hidden -ExecutionPolicy Bypass -Command "-c (New-Object Media.SoundPlayer "content/sound/click.wav").PlaySync();"
)
taskkill /f /im GetInput.exe >nul 2>&1
@mode 118, 31
cls 
IF "!whitemode!" == "n" (
   IF NOT "%forecolor%"=="none" (
       color !forecolor!
   ) else (
       color 4
   )
) else (
   IF NOT "%forecolor%"=="none" (
       color 7!forecolor!
   ) else (
       color 74
   )
)
echo.
echo                                  _  _            __  __      _ _   _ _____         _ 
echo                                 ^| ^|^| ^|__ ___ __ ^|  \^/  ^|_  _^| ^| ^|_^(_^)_   _^|__  ___^| ^|
echo                                 ^| __ ^/ _^` \ \ ^/ ^| ^|\^/^| ^| ^|^| ^| ^|  _^| ^| ^| ^|^/ _ \^/ _ \ ^|
echo                                 ^|_^|^|_\__^,_^/_\_\ ^|_^|  ^|_^|\_^,_^|_^|\__^|_^| ^|_^|\___^/\___^/_^|
echo.
Call Button 25 13 "Internet Tools" 44 13 "Windows Tools" 62 13 "AI Tools" 75 13 "Trolls Tools" 25 26 "Info Tools" 41 16 "Aesthetic Tools" 62 16 "Games" 73 16 "Saved Websites" 105 0 "Settings" 1 0 "Hax v3" 1 27 "Help" 112 27 "+" # Press
Call Button2 23 24 "Wifi Password Finder" 23 23 "Network Adapters" 23 23 "find ipv4/ipv6" 23 22 "What's my IP" 23 21 "Connections" 23 20 "Userinfo" 23 19 "Neofetch" 23 18 "Diskinfo"  25 13 "Internet Tools" 44 13 "Windows Tools" 62 13 "AI Tools" 75 13 "Trolls Tools" 25 26 "Info Tools" 41 16 "Aesthetic Tools" 62 16 "Games" 73 16 "Saved Websites" 105 0 "Settings" 1 0 "Hax v3" 1 27 "Help" 112 27 "+" # Press 
powershell -command "Start-Sleep -Milliseconds 500"
Getinput /m %Press% /h 70

if %errorlevel%==1 ( goto PassFind )
if %errorlevel%==2 ( goto Netadpts )
if %errorlevel%==3 ( goto LocIP )
if %errorlevel%==4 ( goto IPLoc )
if %errorlevel%==5 ( goto ActivNets )
if %errorlevel%==6 ( goto UserInf )
if %errorlevel%==7 ( goto Neofetch )
if %errorlevel%==8 ( goto DiskInfo )
if %errorlevel%==9 ( goto internetTools )
if %errorlevel%==10 ( goto WindowsTools )
if %errorlevel%==11 ( goto Aitools )
if %errorlevel%==12 ( goto TrollsTools )
if %errorlevel%==13 ( goto InfoTools )
if %errorlevel%==14 ( goto AestheticTools )
if %errorlevel%==15 ( goto GAMES )
if %errorlevel%==16 ( goto Websites )
if %errorlevel%==17 ( goto SETTS )
if %errorlevel%==18 ( goto startmenu )
if %errorlevel%==19 ( goto help )
if %errorlevel%==20 (goto fullscreen)

goto InfoTools
rem ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:AestheticTools
echo [MAIN] loading aesthetic tools>>junk/logs.txt
if "!sfx!"=="n" (
   set sfxsetting=False
) else (
   set sfxsetting=True
   START /min cmd.exe /c powershell -NoProfile -WindowStyle hidden -ExecutionPolicy Bypass -Command "-c (New-Object Media.SoundPlayer "content/sound/click.wav").PlaySync();"
)
taskkill /f /im GetInput.exe >nul 2>&1
@mode 118, 31
cls 
IF "!whitemode!" == "n" (
   IF NOT "%forecolor%"=="none" (
       color !forecolor!
   ) else (
       color D
   )
) else (
   IF NOT "%forecolor%"=="none" (
       color 7!forecolor!
   ) else (
       color 7D
   )
)
echo.
echo                                  _  _            __  __      _ _   _ _____         _ 
echo                                 ^| ^|^| ^|__ ___ __ ^|  \^/  ^|_  _^| ^| ^|_^(_^)_   _^|__  ___^| ^|
echo                                 ^| __ ^/ _^` \ \ ^/ ^| ^|\^/^| ^| ^|^| ^| ^|  _^| ^| ^| ^|^/ _ \^/ _ \ ^|
echo                                 ^|_^|^|_\__^,_^/_\_\ ^|_^|  ^|_^|\_^,_^|_^|\__^|_^| ^|_^|\___^/\___^/_^|
echo.
Call Button  25 13 "Internet Tools" 44 13 "Windows Tools" 62 13 "AI Tools" 75 13 "Trolls Tools" 25 16 "Info Tools" 41 26 "Aesthetic Tools" 62 16 "Games" 73 16 "Saved Websites" 105 0 "Settings" 1 0 "Hax v3" 1 27 "Help" 112 27 "+" # Press
Call Button2 39 24 "Wobbly Terminal" 39 23 "Rainbow Text" 39 22 "Dancing Man" 39 21 "Parrot.live" 39 20 "ascii.live" 39 19 "Luca's LS" 39 18 "Retro PC" 39 17 "Matrix" 39 17 "Coffee" 39 16 "E." 25 13 "Internet Tools" 44 13 "Windows Tools" 62 13 "AI Tools" 75 13 "Trolls Tools" 25 16 "Info Tools" 41 26 "Aesthetic Tools" 62 16 "Games" 73 16 "Saved Websites" 105 0 "Settings" 1 0 "Hax v3" 1 27 "Help" 112 27 "+" # Press
powershell -command "Start-Sleep -Milliseconds 500"
Getinput /m %Press% /h 70
 
if %errorlevel%==1 ( goto wblCmd )
if %errorlevel%==2 ( goto RGBTxt )
if %errorlevel%==3 ( goto Danc )
if %errorlevel%==4 ( goto Yop )
if %errorlevel%==5 ( goto scii )
if %errorlevel%==6 ( goto LLS )
if %errorlevel%==7 ( goto RPC )
if %errorlevel%==8 ( goto MTRX )
if %errorlevel%==9 ( goto coffee )
if %errorlevel%==10 ( goto letter )
if %errorlevel%==11 ( goto internetTools )
if %errorlevel%==12 ( goto WindowsTools )
if %errorlevel%==13 ( goto Aitools )
if %errorlevel%==14 ( goto TrollsTools )
if %errorlevel%==15 ( goto InfoTools )
if %errorlevel%==16 ( goto AestheticTools )
if %errorlevel%==17 ( goto GAMES )
if %errorlevel%==18 ( goto Websites )
if %errorlevel%==19 ( goto SETTS )
if %errorlevel%==20 ( goto startmenu )
if %errorlevel%==21 ( goto help )
if %errorlevel%==22 ( goto fullscreen )

goto AestheticTools
rem ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:Games
echo [MAIN] loading games>>junk/logs.txt
if "!sfx!"=="n" (
   set sfxsetting=False
) else (
   set sfxsetting=True
   START /min cmd.exe /c powershell -NoProfile -WindowStyle hidden -ExecutionPolicy Bypass -Command "-c (New-Object Media.SoundPlayer "content/sound/click.wav").PlaySync();"
)
taskkill /f /im GetInput.exe >nul 2>&1
@mode 118, 31
cls 
IF "!whitemode!" == "n" (
   IF NOT "%forecolor%"=="none" (
       color !forecolor!
   ) else (
       color 1
   )
) else (
   IF NOT "%forecolor%"=="none" (
       color 7!forecolor!
   ) else (
       color 71
   )
)
echo.
echo                                  _  _            __  __      _ _   _ _____         _ 
echo                                 ^| ^|^| ^|__ ___ __ ^|  \^/  ^|_  _^| ^| ^|_^(_^)_   _^|__  ___^| ^|
echo                                 ^| __ ^/ _^` \ \ ^/ ^| ^|\^/^| ^| ^|^| ^| ^|  _^| ^| ^| ^|^/ _ \^/ _ \ ^|
echo                                 ^|_^|^|_\__^,_^/_\_\ ^|_^|  ^|_^|\_^,_^|_^|\__^|_^| ^|_^|\___^/\___^/_^|
echo.
Call Button  25 13 "Internet Tools" 44 13 "Windows Tools" 62 13 "AI Tools" 75 13 "Trolls Tools" 25 16 "Info Tools" 41 16 "Aesthetic Tools" 62 26 "Games" 73 16 "Saved Websites" 105 0 "Settings" 1 0 "Hax v3" 1 27 "Help" 112 27 "+" # Press
Call Button2 53 24 "Guess the number" 57 23 "Haxed Client" 63 22 "Tetris" 63 21 "Pacman" 65 20 "Pong" 25 13 "Internet Tools" 44 13 "Windows Tools" 62 13 "AI Tools" 75 13 "Trolls Tools" 25 16 "Info Tools" 41 16 "Aesthetic Tools" 62 26 "Games" 73 16 "Saved Websites" 105 0 "Settings" 1 0 "Hax v3" 1 27 "Help" 112 27 "+" # Press
Getinput /m %Press% /h 70

if %errorlevel%==1 ( goto GTN )
if %errorlevel%==2 ( goto HxC )
if %errorlevel%==3 ( goto TER )
if %errorlevel%==4 ( goto PAC ) 
if %errorlevel%==5 ( goto PONG )
if %errorlevel%==6 ( goto internetTools )
if %errorlevel%==7 ( goto WindowsTools )
if %errorlevel%==8 ( goto Aitools )
if %errorlevel%==9 ( goto TrollsTools )
if %errorlevel%==10 ( goto InfoTools )
if %errorlevel%==11 ( goto AestheticTools )
if %errorlevel%==12 ( goto GAMES )
if %errorlevel%==13 ( goto Websites )
if %errorlevel%==14 ( goto SETTS )
if %errorlevel%==15 ( goto startmenu )
if %errorlevel%==16 ( goto help )
if %errorlevel%==17 (goto fullscreen)
goto Games
rem ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:Websites
echo [MAIN] loading websites>>junk/logs.txt
if "!sfx!"=="n" (
   set sfxsetting=False
) else (
   set sfxsetting=True
   START /min cmd.exe /c powershell -NoProfile -WindowStyle hidden -ExecutionPolicy Bypass -Command "-c (New-Object Media.SoundPlayer "content/sound/click.wav").PlaySync();"
)
taskkill /f /im GetInput.exe >nul 2>&1
@mode 118, 31
cls 
IF "!whitemode!" == "n" (
   IF NOT "%forecolor%"=="none" (
       color !forecolor!
   ) else (
       color 9
   )
) else (
   IF NOT "%forecolor%"=="none" (
       color 7!forecolor!
   ) else (
       color 79
   )
)
echo.
echo                                  _  _            __  __      _ _   _ _____         _ 
echo                                 ^| ^|^| ^|__ ___ __ ^|  \^/  ^|_  _^| ^| ^|_^(_^)_   _^|__  ___^| ^|
echo                                 ^| __ ^/ _^` \ \ ^/ ^| ^|\^/^| ^| ^|^| ^| ^|  _^| ^| ^| ^|^/ _ \^/ _ \ ^|
echo                                 ^|_^|^|_\__^,_^/_\_\ ^|_^|  ^|_^|\_^,_^|_^|\__^|_^| ^|_^|\___^/\___^/_^|
echo.
Call Button  25 13 "Internet Tools" 44 13 "Windows Tools" 62 13 "AI Tools" 75 13 "Trolls Tools" 25 16 "Info Tools" 41 16 "Aesthetic Tools" 62 16 "Games" 73 26 "Saved Websites" 105 0 "Settings" 1 0 "Hax v3" 1 27 "Help" 112 27 "+" # Press
Call Button2 73 24 "Download Windows" 74 23 "Download Office" 78 22 "Osint Tools" 78 21 "KMS Servers" 79 20 "Fakeupdate" 79 19 "VirusTotal" 80 18 "MediaFire" 82 17 "YopMail" 83 16 "Jammin" 83 15 "more.." 25 13 "Internet Tools" 44 13 "Windows Tools" 62 13 "AI Tools" 75 13 "Trolls Tools" 25 16 "Info Tools" 41 16 "Aesthetic Tools" 62 16 "Games" 73 26 "Saved Websites" 105 0 "Settings" 1 0 "Hax v3" 1 27 "Help" 112 27 "+" # Press 
powershell -command "Start-Sleep -Milliseconds 500"
Getinput /m %Press% /h 70

if %errorlevel%==1 ( explorer "https://go.microsoft.com/fwlink/?LinkId=691209" )
if %errorlevel%==2 ( explorer "https://officecdn.microsoft.com/db/492350f6-3a01-4f97-b9c0-c7c6ddf67d60/media/en-us/ProPlus2021Retail.img" )
if %errorlevel%==3 ( explorer "https://www.mattiavicenzi.it/best-osint-tools-mattia-vicenzi/" )
if %errorlevel%==4 ( explorer "https://kms.msguides.com/")
if %errorlevel%==5 ( explorer "https://fakeupdate.net")
if %errorlevel%==6 ( explorer "https://www.virustotal.com/gui/home/upload" )
if %errorlevel%==7 ( explorer "https://app.mediafire.com/myfiles" )
if %errorlevel%==8 ( explorer "https://yopmail.net/")
if %errorlevel%==9 ( explorer "https://we-are-jammin.xyz/")
if %errorlevel%==10 ( goto Websites2 )
if %errorlevel%==11 (goto internetTools)
if %errorlevel%==12 (goto WindowsTools)
if %errorlevel%==13 (goto Aitools)
if %errorlevel%==14 (goto TrollsTools)
if %errorlevel%==15 (goto InfoTools)
if %errorlevel%==16 (goto AestheticTools)
if %errorlevel%==17 (goto GAMES)
if %errorlevel%==18 (goto Websites)
if %errorlevel%==19 (goto SETTS)
if %errorlevel%==20 (goto startmenu)
if %errorlevel%==21 ( goto help )
if %errorlevel%==22 (goto fullscreen)
goto Websites
rem ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:Websites2
echo [MAIN] loading websites second page>>junk/logs.txt
if "!sfx!"=="n" (
   set sfxsetting=False
) else (
   set sfxsetting=True
   START /min cmd.exe /c powershell -NoProfile -WindowStyle hidden -ExecutionPolicy Bypass -Command "-c (New-Object Media.SoundPlayer "content/sound/click.wav").PlaySync();"
)
taskkill /f /im GetInput.exe >nul 2>&1
@mode 118, 31
cls 
IF "!whitemode!" == "n" (
   IF NOT "%forecolor%"=="none" (
       color !forecolor!
   ) else (
       color 9
   )
) else (
   IF NOT "%forecolor%"=="none" (
       color 7!forecolor!
   ) else (
       color 79
   )
)
echo.
echo                                  _  _            __  __      _ _   _ _____         _ 
echo                                 ^| ^|^| ^|__ ___ __ ^|  \^/  ^|_  _^| ^| ^|_^(_^)_   _^|__  ___^| ^|
echo                                 ^| __ ^/ _^` \ \ ^/ ^| ^|\^/^| ^| ^|^| ^| ^|  _^| ^| ^| ^|^/ _ \^/ _ \ ^|
echo                                 ^|_^|^|_\__^,_^/_\_\ ^|_^|  ^|_^|\_^,_^|_^|\__^|_^| ^|_^|\___^/\___^/_^|
echo.
Call Button  25 13 "Internet Tools" 44 13 "Windows Tools" 62 13 "AI Tools" 75 13 "Trolls Tools" 25 16 "Info Tools" 41 16 "Aesthetic Tools" 62 16 "Games" 73 26 "Saved Websites" 105 0 "Settings" 1 0 "Hax v3" 1 27 "Help" 112 27 "+" # Press
Call Button2  83 24 "back.." 83 23 "Epieos" 83 22 "IpInfo" 83 21 "Doxbin" 25 13 "Internet Tools" 44 13 "Windows Tools" 62 13 "AI Tools" 75 13 "Trolls Tools" 25 16 "Info Tools" 41 16 "Aesthetic Tools" 62 16 "Games" 73 26 "Saved Websites" 105 0 "Settings" 1 0 "Hax v3" 1 27 "Help" 112 27 "+" # Press
powershell -command "Start-Sleep -Milliseconds 500"
Getinput /m %Press% /h 70

if %errorlevel%==1 ( goto Websites )
if %errorlevel%==2 ( explorer "https://epieos.com/")
if %errorlevel%==3 ( explorer "https://ipinfo.io/")
if %errorlevel%==4 ( explorer "https://doxbin.com")
if %errorlevel%==5 (goto internetTools)
if %errorlevel%==6 (goto WindowsTools)
if %errorlevel%==7 (goto Aitools)
if %errorlevel%==8 (goto TrollsTools)
if %errorlevel%==9 (goto InfoTools)
if %errorlevel%==10 (goto AestheticTools)
if %errorlevel%==11 (goto GAMES)
if %errorlevel%==12 (goto Websites)
if %errorlevel%==13 (goto SETTS)
if %errorlevel%==14 (goto startmenu)
if %errorlevel%==15 ( goto help )
if %errorlevel%==16 (goto fullscreen)
goto Websites2
rem ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:fullscreen
echo [MAIN] showing all tools>>junk/logs.txt
if "!sfx!"=="n" (
   set sfxsetting=False
) else (
   set sfxsetting=True
   START /min cmd.exe /c powershell -NoProfile -WindowStyle hidden -ExecutionPolicy Bypass -Command "-c (New-Object Media.SoundPlayer "content/sound/click.wav").PlaySync();"
)
taskkill /f /im GetInput.exe >nul 2>&1
@mode 118, 31
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
echo                                  _  _            __  __      _ _   _ _____         _ 
echo                                 ^| ^|^| ^|__ ___ __ ^|  \^/  ^|_  _^| ^| ^|_^(_^)_   _^|__  ___^| ^|
echo                                 ^| __ ^/ _^` \ \ ^/ ^| ^|\^/^| ^| ^|^| ^| ^|  _^| ^| ^| ^|^/ _ \^/ _ \ ^|
echo                                 ^|_^|^|_\__^,_^/_\_\ ^|_^|  ^|_^|\_^,_^|_^|\__^|_^| ^|_^|\___^/\___^/_^|
echo.
Call Button 10 3 "Internet Tools" 34 4 "Windows Tools" 71 4 "AI Tools" 89 3 "Trolls Tools" 10 27 "Info Tools" 42 27 "Aesthetic Tools" 73 27 "Games" 88 27 "Saved Websites" 1 0 "Hax v3" 112 27 "+"  # Press
Call Button2 10 3 "Internet Tools" 8 5 "Webdirectory Finder" 8 6 "Connection Checker" 8 7 "Telnet Telehack" 8 8 "Google Terminal" 8 9 "Website Tracker" 8 10 "The Unblocker" 8 11 "Playit Agent" 8 12 "Meme Browser" 8 13 "DNS Refresh" 8 14 "IP Checker" 8 15 "Music Bot" 8 16 "Pinger" 34 4 "Windows Tools" 32 6 "Discord Nitro Activator" 32 7 "Windows KeyFinder" 32 8 "Spotify Activator" 32 9 "Windows Activator" 32 10 "Password Changer" 32 11 "Office Activator" 32 12 "Blur Videos" 32 13 "SuperAdmin" 32 14 "Fork-Bomb" 32 15 "PC Fixer" 32 16 "Wureset" 32 17 "GMADF" 71 4 "AI Tools" 71 6 "HaxiboMini" 72 7 "Moderator" 74 8 "Hax-GPT" 78 9 "TTS" 89 3 "Trolls Tools" 90 5 "Mouse-Swapper" 93 6 "DiskFiller" 93 7 "Shutdowner" 95 8 "Rickroll" 96 9 "Annoyer" 10 27 "Info Tools" 8 25 "Wifi Password Finder" 8 24 "Network Adapters" 8 23 "Find IPv4/IPv6" 8 22 "What's my IP" 8 21 "Connections" 8 20 "Userinfo" 8 19 "Neofetch" 8 18 "Diskinfo" 42 27 "Aesthetic Tools" 40 25 "Wobbly Terminal" 40 24 "Rainbow Text" 40 23 "Dancing Man" 40 22 "Parrot.live" 40 21 "ascii.live" 40 20 "Luca's LS" 40 19 "Retro PC" 40 18 "Matrix" 40 17 "Coffee" 40 16 "E." 73 27 "Games" 64 25 "Guess the Number" 68 24 "Haxed Client" 74 23 "Tetris" 74 22 "Pacman" 76 21 "Pong" 88 27 "Saved Websites" 88 25 "Download Windows" 89 24 "Download Office" 93 23 "Osint Tools" 93 22 "KMS Servers" 94 21 "Fakeupdate" 94 20 "VirusTotal" 95 19 "MediaFire" 97 18 "YopMail" 98 17 "Jammin" 98 16 "Epieos" 98 15 "IpInfo" 98 14 "Doxbin" 112 27 "-" # Press   
powershell -command "Start-Sleep -Milliseconds 500"
Getinput /m %Press% /h 70

if %errorlevel% geq 1 if %errorlevel% leq 13 (
    goto InternetTools
)
if %errorlevel% geq 14 if %errorlevel% leq 26 (
    goto WindowsTools
)
if %errorlevel% geq 27 if %errorlevel% leq 31 (
    goto AiTools
)
if %errorlevel% geq 32 if %errorlevel% leq 37 (
    goto TrollsTools
)
if %errorlevel% geq 38 if %errorlevel% leq 46 (
    goto InfoTools
)
if %errorlevel% geq 47 if %errorlevel% leq 57 (
    goto AestheticTools
)
if %errorlevel% geq 58 if %errorlevel% leq 63 (
    goto Games
)
if %errorlevel% geq 64 if %errorlevel% leq 76 (
    goto Websites
)
if %errorlevel%==77 ( goto startmenu )

goto fullscreen
rem ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:help
echo [MAIN] Running Discord animation>>junk/logs.txt
if "!sfx!"=="n" (
   set sfxsetting=False
) else (
   set sfxsetting=True
   START cmd.exe /min powershell -NoProfile -WindowStyle hidden -ExecutionPolicy Bypass -Command "-c (New-Object Media.SoundPlayer "%~dp0click.wav").PlaySync();"
)
cls
IF "!whitemode!" == "n" (
   IF NOT "%forecolor%"=="none" (
       color !forecolor!
   ) else (
       color F
   )
) else (
   IF NOT "%forecolor%"=="none" (
       color 7!forecolor!
   ) else (
       color 7F
   )
)
echo.
echo.
echo.
echo                                                 @@@@@@            @@@@@@             
ping localhost -n 1 -w 50 >nul
echo                                            @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@        
ping localhost -n 1 -w 50 >nul
echo                                          @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@      
ping localhost -n 1 -w 50 >nul
echo                                         @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@     
ping localhost -n 1 -w 50 >nul
echo                                        @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@    
ping localhost -n 1 -w 50 >nul
echo                                       @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   
ping localhost -n 1 -w 50 >nul
echo                                      @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  
ping localhost -n 1 -w 50 >nul
echo                                      @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  
ping localhost -n 1 -w 50 >nul
echo                                     @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ 
ping localhost -n 1 -w 50 >nul
echo                                    @@@@@@@@@@@@@@      @@@@@@@@@@      @@@@@@@@@@@@@@
ping localhost -n 1 -w 50 >nul
echo                                    @@@@@@@@@@@@@        @@@@@@@@        @@@@@@@@@@@@@
ping localhost -n 1 -w 50 >nul
echo                                    @@@@@@@@@@@@@        @@@@@@@@        @@@@@@@@@@@@@
ping localhost -n 1 -w 50 >nul
ping localhost -n 1 -w 50 >nul
echo                                    @@@@@@@@@@@@@@      @@@@@@@@@@      @@@@@@@@@@@@@@
ping localhost -n 1 -w 50 >nul
echo                                    @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
ping localhost -n 1 -w 50 >nul
echo                                    @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
ping localhost -n 1 -w 50 >nul
echo                                    @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
ping localhost -n 1 -w 50 >nul
echo                                    @@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@
ping localhost -n 1 -w 50 >nul
echo                                     @@@@@@@@@@@@@@   @@@@@@@@@@@@   @@@@@@@@@@@@@@  
ping localhost -n 1 -w 50 >nul
echo                                         @@@@@@@@@@                    @@@@@@@@@@     
ping localhost -n 1 -w 50 >nul
echo                                             @@@@@                      @@@@@         
ping localhost -n 1 -w 50 >nul
IF "!whitemode!" == "n" (
   IF NOT "%forecolor%"=="none" (
       color !forecolor!
   ) else (
       color 9
   )
) else (
   IF NOT "%forecolor%"=="none" (
       color 7!forecolor!
   ) else (
       color 79
   )
)
timeout -t 1 -nobreak > nul
IF "!whitemode!" == "n" (
   IF NOT "%forecolor%"=="none" (
       color !forecolor!
   ) else (
       color F
   )
) else (
   IF NOT "%forecolor%"=="none" (
       color 7!forecolor!
   ) else (
       color 7F
   )
)
ping localhost -n 1 -w 50 >nul
IF "!whitemode!" == "n" (
   IF NOT "%forecolor%"=="none" (
       color !forecolor!
   ) else (
       color 9
   )
) else (
   IF NOT "%forecolor%"=="none" (
       color 7!forecolor!
   ) else (
       color 79
   )
)
echo [MAIN] Redirecting to https://dsc.gg/haxed>>junk/logs.txt
explorer "https://dsc.gg/haxed"
goto startmenu
:SETTS
echo [MAIN] went to settings>>junk/logs.txt
if "!animations!"=="n" (
   set anims=False
   @mode 71,30
) else (
   set anims=True
   @mode 118, 31
   @mode 100, 31
   @mode 90,31
   @mode 80,31
   @mode 71,30
)
CALL XUI/settings/scui.bat
if "!animations!"=="n" (
   set anims=False
   @mode 118,31
) else (
   set anims=True
   @mode 71,30
   @mode 80,31
   @mode 90,31
   @mode 100, 31
   @mode 118, 31
)
goto startmenu