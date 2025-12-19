@echo off
if exist settings/su.txt (
   set /p su=<settings/su.txt
   IF NOT "!su!"=="0 " (
      echo su: !su!
      net session >nul 2>&1
      if !errorlevel! == 0 (
         echo All good.
      ) else (
         admin hax && exit
      )
   )
)