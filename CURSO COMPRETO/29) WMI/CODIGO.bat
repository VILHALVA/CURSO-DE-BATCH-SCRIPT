@echo off
setlocal enabledelayedexpansion

:: Definir o arquivo de saída
set "output_file=relatorio_wmi.txt"

:: Limpar o arquivo de saída se já existir
if exist "%output_file%" del "%output_file%"

:: Coletar informações do sistema
echo Coletando informações do sistema...
echo =============================== >> "%output_file%"
echo Informações do Sistema >> "%output_file%"
wmic computersystem get name, manufacturer, model, systemtype >> "%output_file%"

:: Coletar informações do processador
echo =============================== >> "%output_file%"
echo Informações do Processador >> "%output_file%"
wmic cpu get name, numberofcores, numberoflogicalprocessors, maxclockspeed >> "%output_file%"

:: Coletar informações da memória
echo =============================== >> "%output_file%"
echo Informações da Memória >> "%output_file%"
wmic memorychip get capacity, speed, manufacturer >> "%output_file%"

:: Coletar informações do disco
echo =============================== >> "%output_file%"
echo Informações do Disco >> "%output_file%"
wmic diskdrive get model, size, caption >> "%output_file%"

:: Coletar informações dos serviços
echo =============================== >> "%output_file%"
echo Serviços em Execução >> "%output_file%"
wmic service list brief >> "%output_file%"

:: Coletar informações dos processos
echo =============================== >> "%output_file%"
echo Processos em Execução >> "%output_file%"
wmic process list brief >> "%output_file%"

:: Informar ao usuário que o relatório foi gerado
echo Relatório WMI gerado em %output_file%.
pause
endlocal
exit
