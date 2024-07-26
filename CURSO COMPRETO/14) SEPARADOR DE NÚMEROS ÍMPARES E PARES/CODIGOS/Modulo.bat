:: Nome do CPU
:: Núcleos do CPU
@echo off

:NOME_CPU
wmic cpu get name /format:list>info.txt
for /f "tokens=*" %%a in ('type info.txt') do (set valor="%%a")
set cpu-nome=%valor:~6,-1%

:NUCLEOS_CPU
wmic cpu get numberOfCores /format:list>info.txt
for /f "tokens=*" %%a in ('type info.txt') do (set valor="%%a")
set cpu-nucleos=%valor:~-2,1%

del info.txt