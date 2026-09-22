@echo off
setlocal
cd /d "%~dp0"
powershell.exe -NoProfile -ExecutionPolicy Bypass -File "%~dp0scripts\Release.ps1" -Mode Restore
set "LYRICS_EXIT=%ERRORLEVEL%"
pause
exit /b %LYRICS_EXIT%
