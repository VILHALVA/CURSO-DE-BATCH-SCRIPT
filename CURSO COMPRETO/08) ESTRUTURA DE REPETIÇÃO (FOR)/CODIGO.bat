@echo off
:: Definir título da janela
title Exemplo Completo de Script Batch

:: Limpar a tela
cls

:: Exemplo de uso do comando SET para variáveis
setlocal
set mensagem=Olá, mundo!
set /a contador=0

:: Função para exibir a mensagem
call :exibir_mensagem "%mensagem%"

:: Loop FOR para contar até 5
echo Contando até 5...
FOR /L %%i IN (1,1,5) DO (
    set /a contador+=1
    echo Contador: %%i
)

:: Verificar a existência de um arquivo
echo Verificando a existência de um arquivo...
if exist "C:\Windows\System32\cmd.exe" (
    echo O arquivo cmd.exe existe no diretório System32.
) else (
    echo O arquivo cmd.exe não existe no diretório System32.
)

:: Usar FOR para iterar sobre arquivos em um diretório
echo Iterando sobre arquivos .txt em C:\Pasta
FOR %%f IN (C:\Pasta\*.txt) DO (
    echo Arquivo encontrado: %%f
)

:: Usar FOR para ler linhas de um arquivo CSV
echo Processando linhas do arquivo CSV...
FOR /F "tokens=1,2 delims=," %%a IN (C:\Pasta\arquivo.csv) DO (
    echo Coluna 1: %%a
    echo Coluna 2: %%b
)

:: Controle de fluxo com GOTO
echo Escolha uma opção:
echo 1. Mostrar data
echo 2. Mostrar hora
echo 3. Sair
set /p escolha=Escolha uma opção:

if "%escolha%"=="1" (
    call :mostrar_data
    goto :menu
) else if "%escolha%"=="2" (
    call :mostrar_hora
    goto :menu
) else if "%escolha%"=="3" (
    goto :sair
) else (
    echo Opção inválida.
    goto :menu
)

:menu
echo Escolha uma opção:
echo 1. Mostrar data
echo 2. Mostrar hora
echo 3. Sair
set /p escolha=Escolha uma opção:

if "%escolha%"=="1" (
    call :mostrar_data
    goto :menu
) else if "%escolha%"=="2" (
    call :mostrar_hora
    goto :menu
) else if "%escolha%"=="3" (
    goto :sair
) else (
    echo Opção inválida.
    goto :menu
)

:mostrar_data
echo Data atual:
date /t
goto :eof

:mostrar_hora
echo Hora atual:
time /t
goto :eof

:sair
echo Saindo do script...
pause
exit /b 0

:exibir_mensagem
echo Mensagem: %1
goto :eof
