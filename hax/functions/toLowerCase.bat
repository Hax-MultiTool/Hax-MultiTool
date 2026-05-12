@echo off

:: inpt
if "%~1"=="" exit /b 
echo [toLowerFunction] input: "%~1">>junk/logs.txt
:: output
if "%~2"=="" exit /b

set "%~2=!%~1!"
for %%a in (a b c d e f g h i j k l m n o p q r s t u v w x y z) do set "%~2=!%~2:%%a=%%a!"
echo [toLowerFunction] output: "%~2">>junk/logs.txt
exit /b