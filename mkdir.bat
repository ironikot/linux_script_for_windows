@echo off
if "%~1"=="" (
    echo Usage: mkdir directory_name
    exit /b 1
)

md "%~1"
