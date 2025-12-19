@echo off
setlocal enabledelayedexpansion
if exist settings/gm.txt (
    echo saving variable
    set /p gm=<settings\gm.txt
    set "gm=!gm: =!"
    echo variable: !gm!
    IF "!gm!"=="cui" (

        echo target ui:  cui
        call XUI/ucui
    ) else if "!gm!"=="oui" (

        echo target ui: oui
        call XUI/uoui
    ) else if "!gm!"=="cli" (

        echo target ui: cli
        call XUI/ucli
    )
) else (
    echo cui> settings/gm.txt
    call XUI/ucui
)
