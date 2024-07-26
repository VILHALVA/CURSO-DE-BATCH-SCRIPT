@echo off

setlocal
set /a A=2
set /a B=3
set /a "C= A * B"

for /f %%a in ("%C%") do (
					endlocal
					set r=%%a
					)
echo %r%
echo A=%A% B=%B% C=%C%
pause >nul