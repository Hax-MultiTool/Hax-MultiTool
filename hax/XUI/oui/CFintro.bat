@echo off
cls
if exist settings/wm.txt (
   set /p whitemode=<settings/wm.txt
) else (
   START cmd.exe /k functions/settings createcheck
)
IF "!whitemode!" == "n" (
    set background=0
) else (
    set background=7
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

color %background%F
echo.
echo.
echo          ___     ___     ___________     ___      ____
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
color %background%1
color %background%2
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
echo         ^|   ^|   ^|   ^|   /    ___    \   \   \    /   /
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
color %background%3
color %background%4
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
echo         ^|   ^|___^|   ^|  ^|    /   \    ^|   \   \  /   /
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
color %background%5
color %background%6
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
echo         ^|           ^|  ^|   ^|_____^|   ^|    \   \/   /
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
color %background%9
color %background%A
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
echo         ^|    ___    ^|  ^|             ^|    /       \
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
color %background%B
color %background%C
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
echo         ^|   ^|   ^|   ^|  ^|   _______   ^|   /    /\   \
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
color %background%D
color %background%E
color %background%F
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
echo         ^|   ^|   ^|   ^|  ^|   ^|     ^|   ^|  /    /  \   \
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
color %background%1
color %background%2
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
echo         ^|___^|   ^|___^|  ^|___^|     ^|___^| /____/    \___\
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
color %background%3
color %background%4
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
echo.
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
color %background%5
color %background%6
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
echo ^= ^= ^= ^= ^= ^= ^= ^= ^= ^= ^= ^= ^= ^= ^= ^= ^= ^= ^= ^= ^= ^= ^= ^= ^= ^= ^= ^= ^= ^= ^= ^= ^=
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
color %background%9
color %background%A
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
echo.
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
color %background%B
color %background%C
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
echo        ____    ____   __    __   __    ___________    ___
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
color %background%D
color %background%E
color %background%F
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
echo       ^|    \  /    ^| ^|  ^|  ^|  ^| ^|  ^|  ^|           ^|  ^|   ^|
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
color %background%1
color %background%2
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
echo       ^|     \/     ^| ^|  ^|  ^|  ^| ^|  ^|  ^|____   ____^|  ^|   ^|
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
color %background%3
color %background%4
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
echo       ^|            ^| ^|  ^|  ^|  ^| ^|  ^|      ^|   ^|      ^|   ^|
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
color %background%5
color %background%6
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
echo       ^|   ^|\  /^|   ^| ^|  ^|__^|  ^| ^|  ^|___   ^|   ^|      ^|   ^|
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
color %background%9
color %background%A
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
echo       ^|   ^| \/ ^|   ^| ^|        ^| ^|      ^|  ^|   ^|      ^|   ^|
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
color %background%B
color %background%C
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
echo       ^|___^|    ^|___^| ^|________^| ^|______^|  ^|___^|      ^|___^|
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
color %background%D
color %background%E
color %background%F
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
echo.
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
color %background%1
color %background%2
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
echo         ____________   _________    _________   __
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
color %background%3
color %background%4
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
echo        ^|            ^| ^|         ^|  ^|         ^| ^|  ^|
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
color %background%5
color %background%6
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
echo        ^|____    ____^| ^|   ___   ^|  ^|   ___   ^| ^|  ^|
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
color %background%9
color %background%A
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
echo            ^|    ^|     ^|  ^|   ^|  ^|  ^|  ^|   ^|  ^| ^|  ^|
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
color %background%B
color %background%C
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
echo            ^|    ^|     ^|  ^|___^|  ^|  ^|  ^|___^|  ^| ^|  ^|____
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
color %background%D
color %background%E
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
echo            ^|    ^|     ^|         ^|  ^|         ^| ^|       ^|
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
color %background%F
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
echo            ^|____^|     ^|_________^|  ^|_________^| ^|_______^|
color %background%1
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
echo.
color %background%2
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
echo.
echo ^= ^= ^= ^= ^= ^= ^= ^= ^= ^= ^= ^= ^= ^= ^= ^= ^= ^= ^= ^= ^= ^= ^= ^= ^= ^= ^= ^= ^= ^= ^= ^= ^=
color %background%3
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
color %background%4
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
color %background%5
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
color %background%6
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
color %background%9
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
color %background%A
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
ping localhost -n 1 -w 50> nul
color %background%F
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
color %background%2
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
color %background%2
echo.
echo                        Hax MultiTool v3
echo                            -Chroma
echo [40;30m       [40;35m                    haxs.dev
echo                               ^<3
timeout -t 3 -nobreak >nul
mode con lines=28 cols=65
ping localhost -n 2 >nul
