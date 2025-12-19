@echo off
taskkill /f /fi "windowtitle eq haxxstarter" >nul 2>&1
set /p COLR=<CL.TXT
set /p OSLA=<Lang.txt
echo %COLR%
echo %OSLA%
IF %OSLA%==1 (
goto ITA
)
IF %OSLA%==2 (
goto ENG
)
:ITA
IF %COLR%==2 (
iwh.bat
exit
) 
IF %COLR%==1 (
ibh.bat
exit
)
:ENG
IF %COLR%==2 (
ewh.bat
exit
) 
IF %COLR%==1 (
ebh.bat
exit
)