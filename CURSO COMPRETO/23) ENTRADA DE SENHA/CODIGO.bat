@echo off

echo Digite sua senha:

:loop
for /f "delims=" %%# in ('xcopy /w "%~f0" "%~f0" 2^>nul') do if not defined key (set "key=%%#")

if "%key:~-1%" == "" goto fim

if not "%key:~-1%"=="" (
	set "loop=%loop%%key:~-1%"
	set /p "=*" <nul
) else (
	if not "%loop%"=="" set "loop=%loop:~0,-1%"
	set /p "= " <nul
)

set key=
goto loop

:fim
cls
echo Sua senha e: %loop%
pause>nul