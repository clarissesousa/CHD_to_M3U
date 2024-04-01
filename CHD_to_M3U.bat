@echo off
setlocal enabledelayedexpansion

set "folder=%~dp0"

for %%i in ("%folder%*.chd") do (
    set "archive_name_m3u=%%~ni.m3u" 

    for /l %%x in (1,1,9) do (
       set "archive_name_m3u=!archive_name_m3u: (DISC %%x)=!"
    )

    echo %%~nxi>>"!archive_name_m3u!"
)

endlocal