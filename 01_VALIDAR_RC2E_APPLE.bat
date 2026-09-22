@echo off
python "%~dp0tests\validate_source.py"
if errorlevel 1 exit /b 1
powershell -NoProfile -ExecutionPolicy Bypass -File "%~dp0scripts\Release.ps1" -Mode Build
pause
