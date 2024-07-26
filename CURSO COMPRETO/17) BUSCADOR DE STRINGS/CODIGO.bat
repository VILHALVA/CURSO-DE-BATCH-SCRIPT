@echo off
title Localize
mode con: lines=5 cols=60

if exist "%temp%\arq.txt" (del /f /q "%temp%\arq.txt")
if exist "%temp%\result.txt" (del /f /q "%temp%\result.txt")
if exist "%temp%\linhas.txt" (del /f /q "%temp%\linhas.txt")

set rstd=0
set local="%userprofile%\desktop\python"

:Principal
echo. & echo.
set /p "string=Digite> "

title Localizando...

for /l %%a in (14, 2, 100) do (mode con: lines=%%a cols=%%a)

for /r %local% %%a in (*.py *.pyw) do (
	find /n /i "%string%" "%%a" >"%temp%\arq.txt"
	call :Verifica
)

echo. >>"%temp%\result.txt"						
echo. >>"%temp%\result.txt"
echo Foram encontrados %rstd% resultados correspondentes. >>"%temp%\result.txt"

title %rstd% resultados correspondentes.

:Janela
findstr /n "^" "%temp%\result.txt" | find /c ":" >"%temp%\linhas.txt"
set /p linhas=<"%temp%\linhas.txt"
set /a linhas+=3

if %linhas% geq 100 (
	for /l %%a in (100,1,%linhas%) do (mode con: lines=%%a)
) else (
	for /l %%a in (100,-1,%linhas%) do (mode con: lines=%%a)
)

:Resultado
cls
type "%temp%\result.txt" | more
timeout /nobreak -1 >nul

:Verifica
find /i "[" "%temp%\arq.txt"

if %errorlevel% == 0 (
	type "%temp%\arq.txt" >>"%temp%\result.txt"
	set /a rstd+=1
)