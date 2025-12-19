@echo off
@Mode 48,15
@Title %~n0

:: Ci spostiamo nella directory del file .bat
cd %~dp0
Batbox /h 0

:: Abilitiamo la delayed expansion per gestire "array" simulati
setlocal enableextensions enabledelayedexpansion

:: 1. Legge le righe di example.list in una serie di variabili riga[1], riga[2], ecc.
set "count=0"
for /f "usebackq delims=" %%A in ("example.list") do (
    set /a count+=1
    set "riga[!count!]=%%A"
)

:: 2. Costruisce dinamicamente la singola riga di parametri per Call Button,
::    assegnando coordinate iniziali e incrementandole man mano.
::    In questo esempio, spostiamo i pulsanti orizzontalmente.
set "buttons="
set /a x=10, y=4, passo=2

for /l %%i in (1,1,%count%) do (
    set "testo=!riga[%%i]!"
    set "buttons=!buttons! !x! !y! \"!testo!\""
    :: Avanziamo di 14 in verticale
    set /a y+=passo
    :: Se x diventa troppo grande, iniziamo una nuova riga
    if !x! GEQ 70 (
        set /a x=10
        set /a y+=4
    )
)

:Loop
:: 3. Crea tutti i pulsanti in un colpo solo usando la sintassi
::    Call Button X Y "Testo" X Y "Testo" ... # Press
Call Button %buttons% # Press

:: 4. Getinput cattura l'errorelevel (indice del pulsante premuto)
Getinput /m %Press% /h 70

if %errorlevel% geq 1 if %errorlevel% leq %count% (
    echo Hai premuto: !riga[%errorlevel%]!
    :: Qui potresti aggiungere azioni diverse in base al testo della riga:
    :: if "!riga[%errorlevel%]!"=="Open cmd" start cmd
    :: etc.
)

goto :Loop
