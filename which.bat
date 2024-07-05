@echo off
setlocal
if "%~1"=="" (
    echo Usage: which command
    exit /b 1
)

for %%i in (".exe" ".bat" ".cmd" "") do (
    for %%j in (%PATH%) do (
        if exist "%%j\%~1%%i" (
            echo %%j\%~1%%i
            exit /b 0
        )
    )
)

echo %~1 not found
exit /b 1
