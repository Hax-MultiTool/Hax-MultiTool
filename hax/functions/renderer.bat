@echo off
setlocal enabledelayedexpansion
if exist settings/gm.txt (
    echo saving variable>>junk/logs.txt
    set /p gm=<settings\gm.txt
    set "gm=!gm: =!"
    echo variable: !gm!>>junk/logs.txt
    IF "!gm!"=="cui" (

        echo target ui:  cui>>junk/logs.txt
        call XUI/ucui
    ) else if "!gm!"=="oui" (

        echo target ui: oui>>junk/logs.txt
        call XUI/uoui
    ) else if "!gm!"=="cli" (

        echo target ui: cli>>junk/logs.txt
        call XUI/ucli
    )
) else (
    echo cui> settings/gm.txt
    call XUI/ucui
)
