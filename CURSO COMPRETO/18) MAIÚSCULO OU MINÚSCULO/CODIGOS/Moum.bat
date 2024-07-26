@echo off
::A saída não pulava uma linha. Coloque esse echo pra isso.
echo.

set mai=0
set min=0
set arg=%*

:Inicio
if not defined arg (goto Fim)

echo %arg:~0,1% | findstr /r [ABCDEFGHIJKLMNOPQRSTUVWXYZ] >nul

if %errorlevel%==0 (set mai=1) else (set min=1)

:Saltos
set arg=%arg:~1%
goto Inicio

:Fim
if %mai%%min%==10 set moum=MAIUSCULO
if %mai%%min%==01 set moum=minusculo
if %mai%%min%==11 set moum=Misturado

set mai=
set min=