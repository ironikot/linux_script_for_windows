@echo off
setlocal
if "%~1"=="" (
    dir /b /a
) else (
    dir /b /a "%~1"
)
