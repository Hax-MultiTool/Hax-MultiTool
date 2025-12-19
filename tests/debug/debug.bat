@echo off
setlocal enabledelayedexpansion

REM Inserisci il percorso del file di testo da monitorare
set "file=logs.txt"

REM Variabile per tracciare la dimensione del file
set "lastSize=0"

:loop
REM Ottiene la dimensione attuale del file
for %%I in (%file%) do set "currSize=%%~zI"

REM Controlla se la dimensione è cambiata
if not "!currSize!"=="!lastSize!" (
    cls
    type "%file%"
    set "lastSize=!currSize!"
)

REM Pausa per 1 secondo prima di ricontrollare
timeout /t 1 >nul
goto loop
