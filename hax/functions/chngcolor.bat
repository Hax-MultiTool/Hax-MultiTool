@echo off
setlocal enabledelayedexpansion
set colors=F4C6EA2B91D5
set /a index=%1
if %index% gtr 11 (goto error)

set colorMap[0]=DEFAULT
set colorMap[1]=RED
set colorMap[2]=SALMON
set colorMap[3]=MUSTARD
set colorMap[4]=SUN
set colorMap[5]=HACKERMAN
set colorMap[6]=LEAF
set colorMap[7]=DIAMOND
set colorMap[8]=SKY
set colorMap[9]=OCEAN
set colorMap[10]=PEONY
set colorMap[11]=RETRO

if exist settings/wm.txt (
   set /p whitemode=<settings/wm.txt
) else (
   set whitemode=n
   echo n> settings/wm.txt
)

IF "%whitemode%" == "n" (
   color !colors:~%index%,1!
) else (
   color 7!colors:~%index%,1!
)
rem echo colorindex: !colors:~%index%,1!
echo [CHNGCOLOR] colorindex: "!colors:~%index%,1!">>junk/logs.txt

set currentColorName=!colorMap[%index%]!
rem echo colorname: !colorMap[%index%]!
echo [CHNGCOLOR] colorname: "!colorMap[%index%]!">>junk/logs.txt

echo %currentColorName% > settings/clr.txt
rem echo index: %index%
echo [CHNGCOLOR] index: "%index%">>junk/logs.txt

goto eof

:error
cls
echo This should not happen, and its an error!
echo Restart or contact support.
echo Error code: [1ND3XGRT11]
pause 
exit

:eof
