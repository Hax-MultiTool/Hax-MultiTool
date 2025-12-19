@echo off
setlocal enabledelayedexpansion
set SETTCHOICE=9
set VISUALCHOICE=0
set SECURECHOICE=0
set AUDIOCHOICE=0
:SETTS
call :reloadsettings
call :reloadUI
cls
echo.
echo                         Settings
echo.
echo.
echo                     0^) Save Settings
echo                     1^) Security
echo                     2^) Visual   
echo                     3^) Audio
echo                     4^) Back    
echo.
echo.
echo.
set /p SETTCHOICE= ^>
if %settchoice% == 0 (
    echo [CLICKUI SETTINGS] Reloading Settings>>junk/logs.txt
    START cmd.exe /k @echo off ^&^& haxstarter.bat && exit
)
if %SETTCHOICE% == 1 goto SECURITY
if %SETTCHOICE% == 2 goto VISUAL
if %SETTCHOICE% == 3 goto AUDIO
if %SETTCHOICE% == 4 goto eof
goto SETTS
:VISUAL
call :reloadsettings
call :reloadUI
cls
echo.
echo                     Visual Settings
echo.
echo.
echo                 1^) White mode [%whitesetting%]  
echo                 2^) Animations [%animsetting%]  
echo                 3^) GUI Mode   [%guimode%]  
echo                 4^) Colors     [%ccolor%]  
echo                 5^) Back           
echo.
echo.
echo.
if !index! geq 11 set /a index = -1
set /p VISUALMODE= ^>
if %VISUALMODE% == 1 (
    if "!whitemode!"=="n" (
        call functions/settings modify wm y
    ) else (
        call functions/settings modify wm n
    )
)  
if %VISUALMODE% == 2 (
       if "!animations!"=="n" (
        call functions/settings modify anims y
   ) else (
        call functions/settings modify anims n
   )
)
if %VISUALMODE% == 3 (call functions/guiswitch && call :isCLI)
if %VISUALMODE% == 4 (set /a index+=1 >nul 2>&1 && call functions/chngcolor index)
if %VISUALMODE% == 5 (goto SETTS)
goto VISUAL
:SECURITY
call :reloadsettings
call :reloadUI
cls
echo.
echo                     Security Settings
echo.
echo.
echo                 1^) Enable Debugging [%debsetting%]  
echo                 2^) Enable Password [%pwsetting%]  
echo                 3^) Run as Admin   [%adminsetting%]  
echo                 4^) Back
echo.
echo.
echo.
set /p SECURECHOICE= ^>
if %SECURECHOICE% == 1 (
    if "!db!" == "n" (
        call functions/settings modify dbg y
    ) else (
        call functions/settings modify dbg n
    )
)
if %SECURECHOICE% == 2 (goto PasswrdEnable)
if %SECURECHOICE% == 3 (
    if "!su!" == "n" (
        call functions/settings modify su y
    ) else (
        call functions/settings modify su n
    )
)
if %SECURECHOICE% == 4 (goto SETTS)
goto SECURITY
:AUDIO
call :reloadsettings
call :reloadUI
cls
echo.
echo                     Audio Settings
echo.
echo.
echo                 1^) Effects [%sfxsetting%]  
echo                 2^) Music [%musicsetting%]  
echo                 3^) Back   
echo.
echo.
echo.
set /p AUDIOCHOICE= ^>
if %AUDIOCHOICE% == 1 (
    if "!sfx!" == "n" (
        call functions/settings modify sfx y
    ) else (
        call functions/settings modify sfx n
    )
)
if %AUDIOCHOICE% == 2 (
    if "!music!" == "n" (
        call functions/settings modify music y
    ) else (
        call functions/settings modify music n
    )
)
if %AUDIOCHOICE% == 3 (goto SETTS)
goto AUDIO
rem :------------------------------------------------------------------------------------------------------
:reloadsettings
echo [OLDUI SETTINGS] loading settings from settings script..>>junk/logs.txt
if not exist settings (
    cls
    echo This should not happen, and its an error!
    echo Please try restarting or contact support.
    echo Error code: [N053TT1NG]
    pause
    exit
)
echo [OLDUI SETTINGS] loading white mode..>>junk/logs.txt
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


echo [OLDUI SETTINGS] loading color palette..>>junk/logs.txt
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


echo [OLDUI SETTINGS] loading animations..>>junk/logs.txt
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


echo [OLDUI SETTINGS] loading startup music..>>junk/logs.txt
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


echo [OLDUI SETTINGS] loading sound effcts..>>junk/logs.txt
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


echo [OLDUI SETTINGS] loading UI Status..>>junk/logs.txt
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


echo [OLDUI SETTINGS] loading debug settings..>>junk/logs.txt
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

echo [OLDUI SETTINGS] loading admin settings..>>junk/logs.txt
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


echo [OLDUI SETTINGS] loading password settings..>>junk/logs.txt
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
echo [OLDUI SETTINGS] is CommandLine function>>junk/logs.txt
if "!gm!"=="cli" (
call :reloadsettings
   echo [OLDUI SETTINGS] Its CommandLine>>junk/logs.txt
   goto visualSETTS
) else (
   echo [OLDUI SETTINGS] Its not CommandLine>>junk/logs.txt
   goto aniviSETTS
)
goto eof

:SettingMalfunction
echo [OLDUI SETTINGS] Setting Malfunction>>junk/logs.txt
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

:reloadUI
echo [OLDUI SETTINGS] reloading UI...>>junk/logs.txt
if "!sfx!"=="n" (
   set sfxsetting=False
) else (
   set sfxsetting=True
   START /min cmd.exe /c powershell -NoProfile -WindowStyle hidden -ExecutionPolicy Bypass -Command "-c (New-Object Media.SoundPlayer "content/sound/click.wav").PlaySync();"
)
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
goto eof

:eof
echo [OLDUI SETTINGS] end of function>>junk/logs.txt
::end of function
