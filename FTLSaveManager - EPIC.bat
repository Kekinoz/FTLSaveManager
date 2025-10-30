@echo off
setlocal ENABLEDELAYEDEXPANSION
title FTLSaveSelect

rem === Change Directory ===
chdir %userprofile%\Documents\My Games\

rem === List FTL_* Directories ===
echo FTL_X directories found:
for /d %%d in (FTL_*) do (
    set folder=%%d
    if "!folder:~0,4!"=="FTL_" (
        set num=!folder:~4!
        if "!num!" neq "" (
            echo %%d
        )
    )
)

rem === Count Number of FTL_* Directories ===
set /a count=0
for /d %%A in (FTL_*) do (
    for /f "tokens=2 delims=_" %%B in ("%%A") do (
        if not "%%B"=="" (
            set /a count+=1
        )
    )
)
echo Found !count! FTL Save Directories other than the current one.

rem === Check current save number in sn.txt ===
if exist "FasterThanLight" (
    echo Standard FTL Directory exists, trying to read save number from sn.txt...
    if exist "FasterThanLight\sn.txt" (
        for /f "usebackq delims=" %%X in ("FasterThanLight\sn.txt") do set /a sn=%%X
    ) else (
        echo sn.txt did not exist, creating it....
        set /a sn=!count!
        echo !sn! > "FasterThanLight\sn.txt"
    )
) else (
    echo Standard FTL Directory not found!
    set /a sn=!count!
)
echo Current save file number: !sn!

rem === Check if current save file shares index with another existing unloaded save file ===
if exist "FTL_!sn!" (
    set /a ni=0
    :Loop1
    if not exist "FTL_!ni!" (
        ren "FTL_!sn!" "FTL_!ni!"
        goto endLoop1
    )
    set /a ni+=1
    if !ni! gtr 99 (
        echo Error: All Save Slots are Full and Current Save Index is Equal to an Existing Save!
        pause
        exit /b
    )
    goto Loop1

    :endLoop1
    echo NOTE: Both the current save and another one share the same index, moving "FTL_!sn!" to "FTL_!ni!"
    set /a sn+=1
)

rem === Ask Which Save to Load ===
set /p "Z=Input the number of the save to load (0-99): "
if "!Z!"=="" (
    echo Error: No value found.
    pause
    exit /b
)
rem Checking if input is a valid value
echo %Z%|findstr /r /c:"^[0-9][0-9]*$" >nul
if errorlevel 1 (
    echo Error: Please input an integer value between 0 and 99.
	pause
	exit /b
)
if !Z! lss 0 (
    echo Error: Input number must be above 0.
    pause
    exit /b
)
if !Z! gtr 99 (
    echo Error: Input number must be equal or less than 99.
    pause
    exit /b
)
if !Z! == !sn! (
    echo NOTE: Save file selected is already loaded!
    goto endManip
)

rem === Rename FasterThanLight in FTL_Y ===
if exist "FasterThanLight" (
    ren "FasterThanLight" "FTL_!sn!"
    echo Renamed FasterThanLight to FTL_!sn!
) else (
    echo No FasterThanLight Directory Found!
)

rem === Load Selected Save File ===
if exist "FTL_!Z!" (
    ren "FTL_!Z!" "FasterThanLight"
    echo Save FTL_!Z! Loaded, directory renamed to FasterThanLight.
) else (
    echo The Save File FTL_!Z! Does Not Exist Yet.
    echo Creating a New FasterThanLight Directory...
    mkdir "FasterThanLight"

    set /a new_sn=!sn!+1
    echo !Z! > "FasterThanLight\sn.txt"
    echo New save file created with Save index !Z!.
)

:endManip
endlocal ENABLEDELAYEDEXPANSION

set "url=com.epicgames.launcher://apps/f7dc1618d0bd4810a61f50d44333900e%%3A5df92e81bc7340d58e4c19271d28915d%%3ABlowfish?action=launch&silent=true"
echo.
echo Save File Manipulation Complete, starting game from path: %url%
start /wait "" "%url%" 
pause