@echo off
setlocal enabledelayedexpansion

   :: get admin setting
if exist settings/su.txt (
	set /p su=<settings/su.txt

	:: do i have to admin?
	IF NOT "!su!"=="n" (
		echo su: !su!
		:: yes you do. enable admin if we dont already have it.
		net session >nul 2>&1
		if !errorlevel! == 0 (
			echo All good.
		) else (
			doadmin hax && exit
		)
	) 
)
