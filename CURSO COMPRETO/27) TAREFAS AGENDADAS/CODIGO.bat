@echo off
set /p "a=Digite> "
powershell write-host %a% -background 2 -foreground 0
pause >nul