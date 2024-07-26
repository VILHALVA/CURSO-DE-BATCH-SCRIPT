@echo off
mode 25,3
color 1f
title Chrome RAM

:main
timeout /nobreak /t 1 >nul
tasklist | find /i "Chrome.exe" >"%tmp%\dados.tmp"

if %errorlevel% == 1 (
	cls & echo.
	echo Processo inexistente!
	goto main
)

for /f "tokens=5 usebackq" %%a in ("%tmp%\dados.tmp") do (call :func_soma %%a)

goto func_medida

:func_soma
set valor=%1
set valor=%valor:.=%
set /a soma+=%valor%

goto :eof

:func_medida
call cont %soma% >"%tmp%\dados.tmp"
set /p med=<"%tmp%\dados.tmp"
set med=%med:~-1%

if %med% geq 7 ( if %med% leq 9 ( goto GB ))
if %med% geq 4 ( if %med% leq 6 ( goto MB ))
if %med% geq 1 ( if %med% leq 3 ( goto KB ))

:GB
cls & echo.
echo Uso de RAM: %soma:~0,1%,%soma:~1,2% GB
set /a soma=0
goto main

:MB
cls & echo.
echo Uso de RAM: %soma:~0,-3% MB
set /a soma=0
goto main

:KB
cls & echo.
echo Uso de RAM: %soma% KB
set /a soma=0
goto main