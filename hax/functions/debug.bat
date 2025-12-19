@echo off
title debugger
setlocal enabledelayedexpansion
IF EXIST junk (
	cd junk
	IF EXIST logs.txt (
		del logs.txt
	)
	cd ..
) else (
	mkdir junk
)
IF EXIST settings (
	set /p a=<settings/db.txt
	echo !a!
	IF not "!a!"=="n" (
		cd junk
		echo started debugging>>logs.txt 
		set "file=logs.txt"
		set "lastSize=0"

		:loop
		for %%I in (%file%) do set "currSize=%%~zI"

		if not "!currSize!"=="!lastSize!" (
			cls
			type "%file%"
			set "lastSize=!currSize!"
		)

		timeout /t 1 >nul
		goto loop
	) else (
		exit
	)
) else (
    echo This should not happen, and its an error!
    echo Please contact support.
    echo Error code: [N0$3TT1NG]
)