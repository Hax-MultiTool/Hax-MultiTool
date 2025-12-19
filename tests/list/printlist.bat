@echo off
setlocal enabledelayedexpansion

set count=0

:: Legge il file riga per riga
for /f "tokens=* delims=" %%A in (example.list) do (
    set /a count+=1
    set "linea!count!=%%A"
)

:: Stampa tutte le variabili
for /l %%i in (1,1,!count!) do (
    echo Riga %%i: !linea%%i!
)

pause
