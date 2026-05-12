@echo off
@title Hax MultiTool v3
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
echo [MAIN] resizing.. >>junk/logs.txt
:_intro_
if "!animations!"=="n" (
   set animsetting=False
   @mode 65, 40
) else (
   set animsetting=True
   @mode 70, 13
   @mode 69, 20
   @mode 68, 27
   @mode 66, 34
   @mode 65, 40
)
echo [MAIN] loading intro for old ui..>>junk/logs.txt
IF "!whitemode!" == "n" (
   IF NOT "%forecolor%"=="none" (
        call XUI/oui/CLintro.bat
        color !forecolor!
   ) else (
        call XUI/oui/CFintro.bat
        color B
   )
) else (
   IF NOT "%forecolor%"=="none" (
        call XUI/oui/CLintro.bat
        color 7!forecolor!
   ) else (
        call XUI/settings/CFintro.bat
        color 79
   )
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
echo [MAIN] Now loading main startmenu >>junk/logs.txt
rem --------------------------------------------------------------------------------------------------------------------------------
:startmenu
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
@mode 56,28
echo.
echo                    Welcome  Back!
echo            ________________________________
echo           /_______________  _______________\
echo                           \/
echo            ================================
echo            +          Tools Menu          +
echo            ================================
echo            +    [A] Internet Tools        +
echo            +    [B] Windows Tools         +
echo            +    [C] AI Tools              +
ECHO            +    [D] Trolls Tools          +
echo            +    [E] Info Tools            +
echo            +    [F] Aesthetics Tools      +
echo            +    [G] Games                 +
echo            +    [H] Registered Websites   +
echo            +    [I] Settings              +
echo            +    [J] Close                 +
echo            ================================
echo            _______________/\_______________
echo           \________________________________/
echo.
echo                   [A] [B] [C] [D] [E]
echo                   [F] [G] [H] [I] [J]
echo.
ping localhost -n 2 >nul
set CHOICEMENU=z
set /p CHOICEMENU= [40;30m [40;32m                         
call functions/toLowerCase CHOICEMENU CHOICEMENU
if !CHOICEMENU!==a (goto InternetTools)
if !CHOICEMENU!==b (goto WindowsTools)
if !CHOICEMENU!==c (goto AiTools)
if !CHOICEMENU!==d (goto TrollTools)
if !CHOICEMENU!==e (goto InfoTools)
if !CHOICEMENU!==f (goto AestheticTools)
if !CHOICEMENU!==g (goto Games)
if !CHOICEMENU!==h (goto Websites)
if !CHOICEMENU!==i (goto Settings)
if !CHOICEMENU!==j (exit)
goto startmenu
rem --------------------------------------------------------------------------------------------------------------------------------
:InternetTools
echo [MAIN] now loading InternetTools.. >>junk/logs.txt
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
echo            ________________________________
echo           /_______________  _______________\
echo                           \/
echo            ================================
echo            +        Internet Tools        +
echo            ================================
echo            +   [A] Subdirectory Finder    +
echo            +   [B] Connection Checker     +
echo            +   [C] Telnet Telehack        +
echo            +   [D] Google Terminal        +
echo            +   [E] Website Tracker        +
echo            +   [F] The Unblocker          +
echo            +   [G] Playit Agent           +
echo            +   [H] Meme Browser           +
echo            +   [I] DNS Refresh            +
echo            +   [J] Ip Checker             +
echo            +   [K] Music Bot              +
echo            +   [L] Pinger                 +
echo            +   [M] Back                   +
echo            ================================
echo            _______________/\_______________
echo           \________________________________/
echo.
echo              [A] [B] [C] [D] [E] [F] [G]
echo                [H] [I] [J] [K] [L] [M]
echo.
ping localhost -n 2 >nul
set INTERNETTOOL=z
set /p INTERNETTOOL= [40;30m [40;32m                         
call functions/toLowerCase INTERNETTOOL INTERNETTOOL
if !INTERNETTOOL!==a (call tools\subd.bat & goto InternetTools)
if !INTERNETTOOL!==b (call tools\netchecz.bat & goto InternetTools)
if !INTERNETTOOL!==c (call tools\teln.bat & goto InternetTools)
if !INTERNETTOOL!==d (call tools\googcmd.bat & goto InternetTools)
if !INTERNETTOOL!==e (call tools\webtracer.bat & goto InternetTools)
if !INTERNETTOOL!==f (call tools\thunblck.bat & goto InternetTools)
if !INTERNETTOOL!==g (call tools\playitt.bat & goto InternetTools)
if !INTERNETTOOL!==h (call tools\mbw.bat & goto InternetTools)
if !INTERNETTOOL!==i (call tools\dnsr.bat & goto InternetTools)
if !INTERNETTOOL!==j (call tools\ipcheck.bat & goto InternetTools)
if !INTERNETTOOL!==k (call tools\dscmusicbot.bat & goto InternetTools)
if !INTERNETTOOL!==l (call tools\pg.bat & goto InternetTools)
if !INTERNETTOOL!==m (goto startmenu)
goto InternetTools
rem --------------------------------------------------------------------------------------------------------------------------------
:WindowsTools
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
echo            ________________________________
echo           /_______________  _______________\
echo                           \/
echo            ================================
echo            +        Windows Tools         +
echo            ================================
echo            + [A] Discord Nitro Activator  +
echo            + [B] Windows KeyFinder        +
echo            + [C] Spotify Activator        +
echo            + [D] Windows Activator        +
echo            + [E] Password Changer         +
echo            + [F] Office Activator         +
echo            + [G] Blur Videos              +
echo            + [H] SuperAdmin               +
echo            + [I] Fork Bomb                +
echo            + [J] Pc Fixer                 +
echo            + [K] WuReset                  +
echo            + [L] GMADF                    +
echo            + [M] Back                     +
echo            ================================
echo            _______________/\_______________
echo           \________________________________/
echo.
echo              [A] [B] [C] [D] [E] [F] [G]
echo                [H] [I] [J] [K] [L] [M]
echo.
ping localhost -n 2 >nul
set WINDOWSTOOL=z
set /p WINDOWSTOOL= [40;30m [40;32m                         
call functions/toLowerCase WINDOWSTOOL WINDOWSTOOL
if !WINDOWSTOOL!==a (call tools\disnitrac.bat & goto WindowsTools)
if !WINDOWSTOOL!==b (call tools\wikeyfin.bat & goto WindowsTools)
if !WINDOWSTOOL!==c (call tools\spotyx.bat & goto WindowsTools)
if !WINDOWSTOOL!==d (call tools\windowac.bat & goto WindowsTools)
if !WINDOWSTOOL!==e (call tools\passchan.bat & goto WindowsTools)
if !WINDOWSTOOL!==f (call tools\officeac.bat & goto WindowsTools)
if !WINDOWSTOOL!==g (call tools\blurstuff.bat & goto WindowsTools)
if !WINDOWSTOOL!==h (call tools\superadmin.bat & goto WindowsTools)
if !WINDOWSTOOL!==i (call tools\fuck.bat & goto WindowsTools)
if !WINDOWSTOOL!==j (call tools\pcfixer.bat & goto WindowsTools)
if !WINDOWSTOOL!==k (call tools\wrreset.bat & goto WindowsTools)
if !WINDOWSTOOL!==l (call tools\gmadf.bat & goto WindowsTools)
if !WINDOWSTOOL!==m (goto startmenu)
goto WindowsTools
rem --------------------------------------------------------------------------------------------------------------------------------
:AiTools
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
echo            ________________________________
echo           /_______________  _______________\
echo                           \/
echo            ================================
echo            +           AI Tools           +
echo            ================================
echo            +      [A] HaxiboMini          +
echo            +      [B] Moderator           +
echo            +      [C] Hax-GPT             +
echo            +      [D] WinTTS              +
echo            +      [E] Back                +
echo            ================================
echo            _______________/\_______________
echo           \________________________________/
echo.
echo                  [A] [B] [C] [D] [E]
echo.
ping localhost -n 2 >nul
set AITOOL=z
set /p AITOOL= [40;30m [40;32m                         
call functions/toLowerCase AITOOL AITOOL
if !AITOOL!==a (call tools\haxe.bat & goto AiTools)
if !AITOOL!==b (call tools\fatmod.bat & goto AiTools)
if !AITOOL!==c (call tools\haxgpt.bat & goto AiTools)
if !AITOOL!==d (call tools\ttts.bat & goto AiTools)
if !AITOOL!==e (goto startmenu)
goto AiTools
rem --------------------------------------------------------------------------------------------------------------------------------
:TrollTools
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
echo            ________________________________
echo           /_______________  _______________\
echo                           \/
echo            ================================
echo            +         Trolls Tools         +
echo            ================================
echo            +      [A] Mouse-Swapper       +
echo            +      [B] DiskFiller          +
echo            +      [C] Shutdowner          +
echo            +      [D] Rickroll            +
echo            +      [E] Annoyer             +
echo            +      [F] Back                +
echo            ================================
echo            _______________/\_______________
echo           \________________________________/
echo.
echo                 [A] [B] [C] [D] [E] [F]
echo.
ping localhost -n 2 >nul
set TROLL=z
set /p TROLL= [40;30m [40;32m                         
call functions/toLowerCase TROLL TROLL
if !TROLL!==a (call tools\msw.bat & goto TrollTools)
if !TROLL!==b (call tools\zipg.bat & goto TrollTools)
if !TROLL!==c (call tools\shtdwn.bat & goto TrollTools)
if !TROLL!==d (call tools\rick.bat & goto TrollTools)
if !TROLL!==e (call tools\anny.bat & goto TrollTools)
if !TROLL!==f (goto startmenu)
goto TrollTools
rem --------------------------------------------------------------------------------------------------------------------------------
:InfoTools
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
echo            ________________________________
echo           /_______________  _______________\
echo                           \/
echo            ================================
echo            +          Info Tools          +
echo            ================================
echo            +   [A] Wifi Password Finder   +
echo            +   [B] Network Adapters       +
echo            +   [C] Find IPv4/IPv6         +
echo            +   [D] What's my IP           +
echo            +   [E] Connections            +
echo            +   [F] Userinfo               +
echo            +   [G] Neofetch               +
echo            +   [H] Diskinfo               +
echo            +   [I] Back                   +
echo            ================================
echo            _______________/\_______________
echo           \________________________________/
echo.
echo                  [A] [B] [C] [D] [E] 
echo                    [F] [G] [H] [I]
echo.
ping localhost -n 2 >nul
set INFOTOOL=z
set /p INFOTOOL= [40;30m [40;32m                         
call functions/toLowerCase INFOTOOL INFOTOOL
if !INFOTOOL!==a (call tools\passfind.bat & goto InfoTools)
if !INFOTOOL!==b (call tools\netadpts.bat & goto InfoTools)
if !INFOTOOL!==c (call tools\locip.bat & goto InfoTools)
if !INFOTOOL!==d (call tools\iploc.bat & goto InfoTools)
if !INFOTOOL!==e (call tools\activnets.bat & goto InfoTools)
if !INFOTOOL!==f (call tools\userinf.bat & goto InfoTools)
if !INFOTOOL!==g (call tools\neofetch.bat & goto InfoTools)
if !INFOTOOL!==h (call tools\diskinfo.bat & goto InfoTools)
if !INFOTOOL!==i (goto startmenu)
goto InfoTools
rem --------------------------------------------------------------------------------------------------------------------------------
:AestheticTools
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
echo            ________________________________
echo           /_______________  _______________\
echo                           \/
echo            ================================
echo            +       Aesthetic Tools        +
echo            ================================
echo            +      [A] Wobbly Terminal     +
echo            +      [B] Rainbow Text        +
echo            +      [C] Dancing Man         +
echo            +      [D] Parrot.live         +
echo            +      [E] ascii.live          +
echo            +      [F] Luca's LS           +
echo            +      [G] Retro PC            +
echo            +      [H] Matrix              +
echo            +      [I] Coffee              +
echo            +      [J] E.                  +
echo            +      [K] Back                +
echo            ================================
echo            _______________/\_______________
echo           \________________________________/
echo.
echo                [A] [B] [C] [D] [E] [F]
echo                  [G] [H] [I] [J] [K]
echo.
ping localhost -n 2 >nul
set AESTHETICTOOL=z
set /p AESTHETICTOOL= [40;30m [40;32m                         
call functions/toLowerCase AESTHETICTOOL AESTHETICTOOL
if !AESTHETICTOOL!==a (call tools\wblcmd.bat & goto AestheticTools)
if !AESTHETICTOOL!==b (call tools\rgbtxt.bat & goto AestheticTools)
if !AESTHETICTOOL!==c (call tools\danc.bat & goto AestheticTools)
if !AESTHETICTOOL!==d (call tools\yop.bat & goto AestheticTools)
if !AESTHETICTOOL!==e (call tools\scii.bat & goto AestheticTools)
if !AESTHETICTOOL!==f (call tools\lls.bat & goto AestheticTools)
if !AESTHETICTOOL!==g (call tools\rpc.bat & goto AestheticTools)
if !AESTHETICTOOL!==h (call tools\mtrx.bat & goto AestheticTools)
if !AESTHETICTOOL!==i (call tools\coffee.bat & goto AestheticTools)
if !AESTHETICTOOL!==j (call tools\letter.bat & goto AestheticTools)
if !AESTHETICTOOL!==k (goto startmenu)
goto AestheticTools
rem --------------------------------------------------------------------------------------------------------------------------------
:Games
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
echo            ________________________________
echo           /_______________  _______________\
echo                           \/
echo            ================================
echo            +           Hax Games          +
echo            ================================
echo            +     [A] Guess the Number     +
echo            +     [B] Haxed Client         +
echo            +     [C] Tetris               +
echo            +     [D] Pacman               +
echo            +     [E] Pong                 +
echo            +     [F] Back                 +
echo            ================================
echo            _______________/\_______________
echo           \________________________________/
echo.
echo                 [A] [B] [C] [D] [E] [F]
echo.
ping localhost -n 2 >nul
set GAMETOOL=z
set /p GAMETOOL= [40;30m [40;32m                         
call functions/toLowerCase GAMETOOL GAMETOOL
if !GAMETOOL!==a (call tools\gtn.bat & goto Games)
if !GAMETOOL!==b (call tools\hxc.bat & goto Games)
if !GAMETOOL!==c (call tools\ter.bat & goto Games)
if !GAMETOOL!==d (call tools\pac.bat & goto Games)
if !GAMETOOL!==e (call tools\pong.bat & goto Games)
if !GAMETOOL!==f (goto startmenu)
goto Games
rem --------------------------------------------------------------------------------------------------------------------------------
:Websites
cls
IF "!whitemode!" == "n" (
   IF NOT "%forecolor%"=="none" (
       color !forecolor!
   ) else (
       color 3
   )
) else (
   IF NOT "%forecolor%"=="none" (
       color 7!forecolor!
   ) else (
       color 73
   )
)
echo            ________________________________
echo           /_______________  _______________\
echo                           \/
echo            ================================
echo            +       Registered Sites       +
echo            ================================
echo            +        [A] VirusTotal        +
echo            +        [B] Kms Servers       +
echo            +        [C] IpInfo            +
echo            +        [D] Epieos            +
echo            +        [E] Yopmail           +
echo            +        [F] Mediafire         +
echo            +        [G] Download Win10    +
echo            +        [H] Download Office   +
echo            +        [I] Fakeupdate        +
echo            +        [J] Jammin            +
echo            +        [K] Doxbin            +
echo            +        [L] Back              +
echo            ================================
echo            _______________/\_______________
echo           \________________________________/
echo.
echo                [A] [B] [C] [D] [E] [F]
echo                [G] [H] [I] [J] [K] [L]
echo.
ping localhost -n 2 >nul
set CHWEBSITE=z
set /p CHWEBSITE= [40;30m [40;32m                         
call functions/toLowerCase CHWEBSITE CHWEBSITE
if !CHWEBSITE!==a (explorer "https://www.virustotal.com/gui/home/upload" & goto Websites)
if !CHWEBSITE!==b (explorer "https://kms.msguides.com/" & goto Websites)
if !CHWEBSITE!==c (explorer "https://ipinfo.io/" & goto Websites)
if !CHWEBSITE!==d (explorer "https://epieos.com/" & goto Websites)
if !CHWEBSITE!==e (explorer "https://yopmail.net/" & goto Websites)
if !CHWEBSITE!==f (explorer "https://app.mediafire.com/myfiles" & goto Websites)
if !CHWEBSITE!==g (explorer "https://go.microsoft.com/fwlink/?LinkId=691209" & goto Websites)
if !CHWEBSITE!==h (explorer "https://officecdn.microsoft.com/db/492350f6-3a01-4f97-b9c0-c7c6ddf67d60/media/en-us/ProPlus2021Retail.img" & goto Websites)
if !CHWEBSITE!==i (explorer "https://fakeupdate.net" & goto Websites)
if !CHWEBSITE!==j (explorer "https://we-are-jammin.xyz/" & goto Websites)
if !CHWEBSITE!==k (explorer "https://doxbin.com" & goto Websites)
if !CHWEBSITE!==l (goto startmenu)
goto Websites
rem --------------------------------------------------------------------------------------------------------------------------------
:Settings
echo [MAIN] went to settings>>junk/logs.txt
CALL XUI/settings/soui.bat
@mode 56,28
goto startmenu
