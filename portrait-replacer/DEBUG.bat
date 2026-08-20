@echo off
setlocal
cd /d "%~dp0"
title Sovereign Tower Portrait Replacer - Debug
powershell.exe -NoProfile -ExecutionPolicy Bypass -File "%~dp0launcher.ps1" -DebugConsole
echo.
echo Exit code: %errorlevel%
pause
