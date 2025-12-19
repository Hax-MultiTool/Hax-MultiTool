@echo off
setlocal enabledelayedexpansion

   :: get admin setting
if exist settings/su.txt (
	set /p su=<settings/su.txt

	:: do i need admin?
	IF NOT "!su!"=="n" (
		:: i do need admin.
		echo admin needed>>junk/logs.txt 
		echo admin variable= !su!>>junk/logs.txt 
		:: but am i already admin?
		net session >nul 2>&1
		if !errorlevel! == 0 (
			:: i needed admin and i am admin
			echo already admin, all good bro>>junk/logs.txt 
		) else (
			:: i need admin and i am not admin, so
			echo not an admin yet, requesting..>>junk/logs.txt 
			doadmin hax && exit
		)
	) else (
		echo admin not needed>>junk/logs.txt 
		echo admin variable= !su!>>junk/logs.txt 
	)
)