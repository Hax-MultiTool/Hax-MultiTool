@echo off
set "param=%~1"
set "setting=%~2"
set "value=%~3"
if "%param%"=="createcheck" (
    REM This is supposed to create settings if they dont exist
    if not exist settings (
		mkdir settings
		cd settings
		echo y>anims.txt
		echo DEFAULT>clr.txt
		echo cui>gm.txt
		echo n>wm.txt
		echo n>su.txt
		echo n>dbg.txt
		echo n>sfx.txt
		echo n>music.txt
		cd ..
	)
) else if "%param%"=="modify" (
    REM Logic for modify any settings
	cd settings
    echo Modifying variable %setting% with value %value%>>../junk/logs.txt
	echo %value%>%setting%.txt
	cd ..
) else (
    echo Invalid parameter. Use one of the following: createcheck, modify
)
goto :eof