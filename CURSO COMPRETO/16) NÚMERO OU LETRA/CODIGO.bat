@echo off

set num=0
set letra=0
set arg=%*

:Inicio
if not defined arg ( goto Fim )

set passo=%arg:~0,1%
if %passo%==0 (set num=1 & goto Saltos)

set /a passo=%passo%
if %passo%==0 (set letra=1) else (set num=1)

:Saltos
set arg=%arg:~1%
goto Inicio

:Fim
if %num%%letra%==00 set res=vazio
if %num%%letra%==10 set res=numerico
if %num%%letra%==01 set res=alfabetico
if %num%%letra%==11 set res=alfanumerico

echo Tipo: %res%