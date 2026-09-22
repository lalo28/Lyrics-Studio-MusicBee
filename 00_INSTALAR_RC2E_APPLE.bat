@echo off
powershell -NoProfile -ExecutionPolicy Bypass -File "%~dp0scripts\Release.ps1" -Mode Install
pause
