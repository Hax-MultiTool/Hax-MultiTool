@echo off
setlocal enabledelayedexpansion
call :reloadsettings
:SETTS
if "!sfx!"=="n" (
   set sfxsetting=False
) else (
   set sfxsetting=True
   START /min cmd.exe /c powershell -NoProfile -WindowStyle hidden -ExecutionPolicy Bypass -Command "-c (New-Object Media.SoundPlayer "content/sound/click.wav").PlaySync();"
)
taskkill /f /im GetInput.exe >nul 2>&1
@mode 71,30
:: cd /d "%~dp0" - i dont remember why this is here
echo [CLICKUI SETTINGS] Settings Menu>>junk/logs.txt
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
echo.
echo                           _    _            
echo                          ^| ^|  ^| ^|           
echo                          ^| ^|__^| ^| __ ___  __
echo                          ^|  __  ^|^/ _` \ \^/ ^/
echo                          ^| ^|  ^| ^| ^(_^| ^|^>  ^< 
echo                          ^|_^|  ^|_^|\__,_^/_^/\_\
echo                 __  __       _ _   _ _______          _
echo                ^|  \^/  ^|     ^| ^| ^| ^(_^)__   __^|        ^| ^|
echo                ^| \  ^/ ^|_   _^| ^| ^|_ _   ^| ^| ___   ___ ^| ^|
echo                ^| ^|\^/^| ^| ^| ^| ^| ^| __^| ^|  ^| ^|^/ _ \ ^/ _ \^| ^|
echo                ^| ^|  ^| ^| ^|_^| ^| ^| ^|_^| ^|  ^| ^| ^(_^) ^| ^(_^) ^| ^|
echo                ^|_^|  ^|_^|\__^,_^|_^|\__^|_^|  ^|_^|\___^/ \___^/^|_^|
echo.
echo                                settings
Call Button 22 18 "Security" 22 21 "Visuals " 36 18 "Audio   " 36 21 "Back    " 53 0 "Save Settings" 1 0 "Hax v3" # Press
powershell -command "Start-Sleep -Milliseconds 500"
Getinput /m %Press% /h 70

if %errorlevel%==1 ( goto securitySETTS )
if %errorlevel%==2 ( call :isCLI )
if %errorlevel%==3 ( goto audioSETTS )
if %errorlevel%==4 ( goto eof )
if %errorlevel%==5 ( 
   echo [CLICKUI SETTINGS] Reloading Settings>>junk/logs.txt
   START cmd.exe /k @echo off ^&^& haxstarter.bat && exit )
if %errorlevel%==6 ( goto eof )

goto SETTS
rem ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:visualSETTS
if "!sfx!"=="n" (
   set sfxsetting=False
) else (
   set sfxsetting=True
   START /min cmd.exe /c powershell -NoProfile -WindowStyle hidden -ExecutionPolicy Bypass -Command "-c (New-Object Media.SoundPlayer "content/sound/click.wav").PlaySync();"
)
taskkill /f /im GetInput.exe >nul 2>&1
call :reloadsettings
echo [CLICKUI SETTINGS] went to commandline visual settings>>junk/logs.txt
cls
echo.
echo.
echo                           _    _            
echo                          ^| ^|  ^| ^|           
echo                          ^| ^|__^| ^| __ ___  __
echo                          ^|  __  ^|^/ _` \ \^/ ^/
echo                          ^| ^|  ^| ^| ^(_^| ^|^>  ^< 
echo                          ^|_^|  ^|_^|\__,_^/_^/\_\
echo                 __  __       _ _   _ _______          _
echo                ^|  \^/  ^|     ^| ^| ^| ^(_^)__   __^|        ^| ^|
echo                ^| \  ^/ ^|_   _^| ^| ^|_ _   ^| ^| ___   ___ ^| ^|
echo                ^| ^|\^/^| ^| ^| ^| ^| ^| __^| ^|  ^| ^|^/ _ \ ^/ _ \^| ^|
echo                ^| ^|  ^| ^| ^|_^| ^| ^| ^|_^| ^|  ^| ^| ^(_^) ^| ^(_^) ^| ^|
echo                ^|_^|  ^|_^|\__^,_^|_^|\__^|_^|  ^|_^|\___^/ \___^/^|_^|
echo.
echo                             visual settings
echo.
echo.
echo.
echo.
echo.
echo                                 White mode:
echo                                 Animations:
echo                                 Gui mode:
Call Button 14 20 "Visuals " 14 17 "Security" 14 26 "Back    " 14 23 "Audio   " 53 0 "Save Settings" 1 0 "Hax v3" # Press
Call Button2 14 20 "Visuals " 14 17 "Security" 14 26 "Back    " 14 23 "Audio   " 53 0 "Save Settings" 1 0 "Hax v3" 48 20 "!whitesetting!" 48 22 "!guimode!" 48 21 "%animsetting%" # Press
powershell -command "Start-Sleep -Milliseconds 500"
Getinput /m %Press% /h 70

if %errorlevel%==1 ( call :isCLI )
if %errorlevel%==2 ( goto securitySETTS )
if %errorlevel%==3 ( goto SETTS )
if %errorlevel%==4 ( goto audioSETTS )
if %errorlevel%==5 ( START cmd.exe /k @echo off ^&^& haxstarter.bat && exit )
if %errorlevel%==6 ( goto eof )
if %errorlevel%==7 (
    if "!whitemode!"=="n" (
        call functions/settings modify wm y
    ) else (
        call functions/settings modify wm n
    )
)
if %errorlevel%==8 ( call functions/guiswitch && call :isCLI )
if %errorlevel%==9 ( 
   if "!animations!"=="n" (
      call functions/settings modify anims y
   ) else (
      call functions/settings modify anims n
   )
)
goto visualSETTS
rem ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:aniviSETTS
if "!sfx!"=="n" (
   set sfxsetting=False
) else (
   set sfxsetting=True
   START /min cmd.exe /c powershell -NoProfile -WindowStyle hidden -ExecutionPolicy Bypass -Command "-c (New-Object Media.SoundPlayer "content/sound/click.wav").PlaySync();"
)
taskkill /f /im GetInput.exe >nul 2>&1
call :reloadsettings
echo [CLICKUI SETTINGS] went to visual settings>>junk/logs.txt
cls
echo.
echo.
echo                           _    _            
echo                          ^| ^|  ^| ^|           
echo                          ^| ^|__^| ^| __ ___  __
echo                          ^|  __  ^|^/ _` \ \^/ ^/
echo                          ^| ^|  ^| ^| ^(_^| ^|^>  ^< 
echo                          ^|_^|  ^|_^|\__,_^/_^/\_\
echo                 __  __       _ _   _ _______          _
echo                ^|  \^/  ^|     ^| ^| ^| ^(_^)__   __^|        ^| ^|
echo                ^| \  ^/ ^|_   _^| ^| ^|_ _   ^| ^| ___   ___ ^| ^|
echo                ^| ^|\^/^| ^| ^| ^| ^| ^| __^| ^|  ^| ^|^/ _ \ ^/ _ \^| ^|
echo                ^| ^|  ^| ^| ^|_^| ^| ^| ^|_^| ^|  ^| ^| ^(_^) ^| ^(_^) ^| ^|
echo                ^|_^|  ^|_^|\__^,_^|_^|\__^|_^|  ^|_^|\___^/ \___^/^|_^|
echo.
echo                             visual settings
echo.
echo.
echo.
echo.
echo.
echo                                 White mode:
echo                                 Animations:
echo                                 Gui mode:
echo                                 Colors:
if !index! geq 11 set /a index = -1
Call Button 14 20 "Visuals " 14 17 "Security" 14 26 "Back    " 14 23 "Audio   " 53 0 "Save Settings" 1 0 "Hax v3" # Press
Call Button2 14 20 "Visuals " 14 17 "Security" 14 26 "Back    " 14 23 "Audio   " 53 0 "Save Settings" 1 0 "Hax v3" 48 20 "!whitesetting!" 48 21 "%animsetting%" 48 22 "%guimode%" 48 23 "%ccolor%" # Press
powershell -command "Start-Sleep -Milliseconds 500"
Getinput /m %Press% /h 70

if %errorlevel%==1 ( call :isCLI )
if %errorlevel%==2 ( goto securitySETTS )
if %errorlevel%==3 ( goto SETTS )
if %errorlevel%==4 ( goto audioSETTS )
if %errorlevel%==5 ( START cmd.exe /k @echo off ^&^& haxstarter.bat && exit )
if %errorlevel%==6 ( goto eof )
if %errorlevel%==7 (
    if "!whitemode!"=="n" (
        call functions/settings modify wm y
    ) else (
        call functions/settings modify wm n
    )
)  
if %errorlevel%==8 ( 
   if "!animations!"=="n" (
        call functions/settings modify anims y
   ) else (
        call functions/settings modify anims n
   )
)
if %errorlevel%==9 ( call functions/guiswitch && call :isCLI)
if %errorlevel%==10 ( set /a index+=1 >nul 2>&1 && call functions/chngcolor index )
goto aniviSETTS
rem ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:securitySETTS
if "!sfx!"=="n" (
   set sfxsetting=False
) else (
   set sfxsetting=True
   START /min cmd.exe /c powershell -NoProfile -WindowStyle hidden -ExecutionPolicy Bypass -Command "-c (New-Object Media.SoundPlayer "content/sound/click.wav").PlaySync();"
)
taskkill /f /im GetInput.exe >nul 2>&1
call :reloadsettings
echo [CLICKUI SETTINGS] went to security settings>>junk/logs.txt
cls
echo.
echo.
echo                           _    _            
echo                          ^| ^|  ^| ^|           
echo                          ^| ^|__^| ^| __ ___  __
echo                          ^|  __  ^|^/ _` \ \^/ ^/
echo                          ^| ^|  ^| ^| ^(_^| ^|^>  ^< 
echo                          ^|_^|  ^|_^|\__,_^/_^/\_\
echo                 __  __       _ _   _ _______          _
echo                ^|  \^/  ^|     ^| ^| ^| ^(_^)__   __^|        ^| ^|
echo                ^| \  ^/ ^|_   _^| ^| ^|_ _   ^| ^| ___   ___ ^| ^|
echo                ^| ^|\^/^| ^| ^| ^| ^| ^| __^| ^|  ^| ^|^/ _ \ ^/ _ \^| ^|
echo                ^| ^|  ^| ^| ^|_^| ^| ^| ^|_^| ^|  ^| ^| ^(_^) ^| ^(_^) ^| ^|
echo                ^|_^|  ^|_^|\__^,_^|_^|\__^|_^|  ^|_^|\___^/ \___^/^|_^|
echo.
echo                            security settings
echo.
echo.
echo                                 Enable Debugging:
echo                                 Enable Password:
echo                                 Run as Admin:
Call Button 14 20 "Visuals " 14 17 "Security" 14 26 "Back    " 14 23 "Audio   " 53 0 "Save Settings" 1 0 "Hax v3" # Press
Call Button2 14 20 "Visuals " 14 17 "Security" 14 26 "Back    " 14 23 "Audio   " 53 0 "Save Settings" 1 0 "Hax v3" 48 17 "%debsetting%" 48 18 "%pwsetting%" 48 19 "%adminsetting%" # Press
powershell -command "Start-Sleep -Milliseconds 500"
Getinput /m %Press% /h 70

if %errorlevel%==1 ( call :isCLI )
if %errorlevel%==2 ( goto securitySETTS )
if %errorlevel%==3 ( goto SETTS )
if %errorlevel%==4 ( goto audioSETTS )
if %errorlevel%==5 ( START cmd.exe /k @echo off ^&^& haxstarter.bat && exit )
if %errorlevel%==6 ( goto eof )
if %errorlevel%==7 (
   if "!db!"=="n" (
      call functions/settings modify dbg y
   ) else (
      call functions/settings modify dbg n
   )
)
if %errorlevel%==8 (
   if "!pw!"=="n" (
      goto enablepsw
   ) else (
      del %appdata%\Microsoft\Credentials\p >nul
   )
)

if %errorlevel%==9 (
   if "!su!"=="n" (
      call functions/settings modify su y
   ) else (
      call functions/settings modify su n
   )
)
goto securitySETTS
:enablepsw
call :reloadsettings
echo [CLICKUI SETTINGS] went to enable password>>junk/logs.txt
if "!sfx!"=="n" (
   set sfxsetting=False
) else (
   set sfxsetting=True
   START /min cmd.exe /c powershell -NoProfile -WindowStyle hidden -ExecutionPolicy Bypass -Command "-c (New-Object Media.SoundPlayer "content/sound/click.wav").PlaySync();"
)
echo [CLICKUI SETTINGS] awating user input>>junk/logs.txt
cls
echo.
echo                       Please Set Your Password
echo                       ^<Type "Back" to dismiss^>
echo.
echo.
set /p setpsw=^|                     ^>
echo setpsw: "!setpsw!">>junk/logs.txt
if /i "!setpsw!"=="back " echo [CLICKUI SETTINGS] operation dismissed>>junk/logs.txt && goto securitySETTS
set "valid=1"

echo [CLICKUI SETTINGS] checking for valid input>>junk/logs.txt
for /L %%i in (0,1,100) do (
    set "char=!setpsw:~%%i,1!"
    set "nextchar=!setpsw:~%%i+1,1!"

    if "!char!"==" " (
        echo !nextchar! | findstr /R "[a-zA-Z]" > nul
        if !errorlevel! == 0 (
            set "valid=0"
            goto invalidinput
        )
    )
)

if !valid! == 1 (
    set "setpsw=!setpsw: =!"
    echo [CLICKUI SETTINGS] User set a valid input>>junk/logs.txt
    echo.
    echo                             Valid Input
    echo [CLICKUI SETTINGS] Creating secrets path>>junk/logs.txt
    if not exist "%appdata%\Microsoft\Credentials\" mkdir "%appdata%\Microsoft\Credentials\"
    echo [CLICKUI SETTINGS] Saving password>>junk/logs.txt
    echo !setpsw! > "%appdata%\Microsoft\Credentials\p"
    echo [CLICKUI SETTINGS] Password saved>>junk/logs.txt
    echo                           ================
    echo                            Password Saved
    echo                           ================
    timeout -t 2 -nobreak > nul
    goto securitySETTS
)

:invalidinput
echo Do not use spaces and use 1 word only.
timeout -t 1 -nobreak > nul
goto enablepsw
rem ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:audioSETTS
if "!sfx!"=="n" (
   set sfxsetting=False
) else (
   set sfxsetting=True
   START /min cmd.exe /c powershell -NoProfile -WindowStyle hidden -ExecutionPolicy Bypass -Command "-c (New-Object Media.SoundPlayer "content/sound/click.wav").PlaySync();"
)
taskkill /f /im GetInput.exe >nul 2>&1
call :reloadsettings

cls
echo.
echo.
echo                           _    _            
echo                          ^| ^|  ^| ^|           
echo                          ^| ^|__^| ^| __ ___  __
echo                          ^|  __  ^|^/ _` \ \^/ ^/
echo                          ^| ^|  ^| ^| ^(_^| ^|^>  ^< 
echo                          ^|_^|  ^|_^|\__,_^/_^/\_\
echo                 __  __       _ _   _ _______          _
echo                ^|  \^/  ^|     ^| ^| ^| ^(_^)__   __^|        ^| ^|
echo                ^| \  ^/ ^|_   _^| ^| ^|_ _   ^| ^| ___   ___ ^| ^|
echo                ^| ^|\^/^| ^| ^| ^| ^| ^| __^| ^|  ^| ^|^/ _ \ ^/ _ \^| ^|
echo                ^| ^|  ^| ^| ^|_^| ^| ^| ^|_^| ^|  ^| ^| ^(_^) ^| ^(_^) ^| ^|
echo                ^|_^|  ^|_^|\__^,_^|_^|\__^|_^|  ^|_^|\___^/ \___^/^|_^|
echo.
echo                             audio settings
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                                 Effects:
echo                                 Music:
Call Button 14 20 "Visuals " 14 17 "Security" 14 26 "Back    " 14 23 "Audio   " 53 0 "Save Settings" 1 0 "Hax v3" # Press
Call Button2 14 20 "Visuals " 14 17 "Security" 14 26 "Back    " 14 23 "Audio   " 53 0 "Save Settings" 1 0 "Hax v3" 48 23 "%sfxsetting%" 48 24 "%musicsetting%" # Press
timeout -t 1 -nobreak >nul
Getinput /m %Press% /h 70

if %errorlevel%==1 ( call :isCLI )
if %errorlevel%==2 ( goto securitySETTS )
if %errorlevel%==3 ( goto SETTS )
if %errorlevel%==4 ( goto audioSETTS )
if %errorlevel%==5 ( START cmd.exe /k @echo off ^&^& haxstarter.bat && exit )
if %errorlevel%==6 ( goto sstartmenu )
if %errorlevel%==7 ( 
   if "!sfx!"=="n" (
      call functions/settings modify sfx y
   ) else (
      call functions/settings modify sfx n
   )
)
if %errorlevel%==8 ( 
   if "!music!"=="n" (
      call functions/settings modify music y
   ) else (
      call functions/settings modify music n
   )
)
goto audioSETTS


::------------------------------------------------------------------------------------------------------------------------------------
::------------------------------------------------------------------------------------------------------------------------------------
::------------------------------------------------------------------------------------------------------------------------------------


:reloadsettings

echo [CLICKUI SETTINGS] loading settings from settings script..>>junk/logs.txt
if not exist settings (
    cls
    echo This should not happen, and its an error!
    echo Please try restarting or contact support.
    echo Error code: [N053TT1NG]
    pause
    exit
)
echo [CLICKUI SETTINGS] loading white mode..>>junk/logs.txt
:: white mode
if exist settings/wm.txt (
   set /p whitemode=<settings/wm.txt
) else (
   goto SettingMalfunction
)
if "!whitemode!"=="n" (
   set whitesetting=False
) else (
   set whitesetting=True
)


echo [CLICKUI SETTINGS] loading color palette..>>junk/logs.txt
:: colors
if exist settings/clr.txt (
   set /p ccolor=<settings/clr.txt
) else (
   goto SettingMalfunction
)
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


echo [CLICKUI SETTINGS] loading animations..>>junk/logs.txt
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


echo [CLICKUI SETTINGS] loading startup music..>>junk/logs.txt
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
   START /min cmd.exe /c powershell -NoProfile -WindowStyle hidden -ExecutionPolicy Bypass -Command "-c (New-Object Media.SoundPlayer "%~dp0/content/sound/startup.wav").PlaySync();"
)


echo [CLICKUI SETTINGS] loading sound effcts..>>junk/logs.txt
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


echo [CLICKUI SETTINGS] loading UI Status..>>junk/logs.txt
if exist settings/gm.txt (
    set /p gm=<settings\gm.txt
    set "gm=!gm: =!"
    IF "!gm!"=="cui" (
        set guimode=ClickUI
    ) else if "!gm!"=="oui" (
        set guimode=OldUI
    ) else if "!gm!"=="cli" (
        set guimode=CommandLine
    )
) else (
   echo cui> settings/gm.txt
   set gem=ClickUI
)


echo [CLICKUI SETTINGS] loading debug settings..>>junk/logs.txt
if exist settings/dbg.txt (
   set /p db=<settings/dbg.txt
) else (
   set db=n
   echo n> settings/dbg.txt
)
if "!db!"=="n" (
   set debsetting=False
) else (
   set debsetting=True
)

echo [CLICKUI SETTINGS] loading admin settings..>>junk/logs.txt
if exist settings/su.txt (
   set /p su=<settings/su.txt
) else (
   set su=n
   echo n> settings/su.txt
)
if "!su!"=="n" (
   set adminsetting=False
) else (
   set adminsetting=True
)


echo [CLICKUI SETTINGS] loading password settings..>>junk/logs.txt
if exist "%appdata%\Microsoft\Credentials\p" (
   set pw=y
) else (
   set pw=n
)
IF NOT "!pw!"=="n" (
   set pwsetting=True
) else (
   set pwsetting=False
) 
goto eof

:isCLI
echo [CLICKUI SETTINGS] is CommandLine function>>junk/logs.txt
call :reloadsettings
if "!gm!"=="cli" (
   echo [CLICKUI SETTINGS] Its CommandLine>>junk/logs.txt
   goto visualSETTS
) else (
   echo [CLICKUI SETTINGS] Its not CommandLine>>junk/logs.txt
   goto aniviSETTS
)
goto eof

:SettingMalfunction
echo [CLICKUI SETTINGS] Setting Malfunction>>junk/logs.txt
cls
echo This should not happen, and its an error!
echo Now trying to reslove this error..
echo Error code: [SETTINGMALFUNCTION]
timeout -t 5 -nobreak
if not exist settings (
    cls
    echo This should not happen, and its an error!
    echo Please try restarting or contact support.
    echo Error code: [N053TT1NG]
    pause
    exit
) else (
   echo deploying fix...
   rmdir settings /s /q
   timeout -t 2 -nobreak >nul
   call functions/settings createcheck
   timeout -t 3 -nobreak >nul
)
echo testing environment...
if exist settings (
   echo fix deployed.
   echo reloading...
   timeout -t 2 -nobreak >nul
   goto SETTS
) else (
   echo failed to deploy fix!
   pause
   exit
)
goto eof

:eof
echo [CLICKUI SETTINGS] end of function>>junk/logs.txt
::end of function
