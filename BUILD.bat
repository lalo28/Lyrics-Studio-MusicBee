@echo off
setlocal
powershell.exe -NoProfile -ExecutionPolicy Bypass -File "%~dp0scripts\Release.ps1" -Mode Build
exit /b %ERRORLEVEL%
