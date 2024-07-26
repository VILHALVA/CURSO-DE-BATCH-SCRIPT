@echo off

echo %errorlevel%
tasklist /fi "imagename eq notepad++.exe" | find "notepad++.exe"
echo %errorlevel%
if %errorlevel% == 0 (Echo Notepad++ esta aberto!) else (echo Notepad++ esta fechado!)

pause >nul