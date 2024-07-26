@echo off
setlocal enabledelayedexpansion

:: Função para exibir o menu principal
:menu
cls
echo ===========================================
echo         GESTÃO DE SERVIÇOS - MENU
echo ===========================================
echo 1. Listar Serviços
echo 2. Iniciar Serviço
echo 3. Parar Serviço
echo 4. Reiniciar Serviço
echo 5. Sair
echo ===========================================
set /p "opcao=Escolha uma opção (1-5): "

:: Processar a opção escolhida
if "%opcao%"=="1" goto listar_servicos
if "%opcao%"=="2" goto iniciar_servico
if "%opcao%"=="3" goto parar_servico
if "%opcao%"=="4" goto reiniciar_servico
if "%opcao%"=="5" goto sair

:: Opção inválida
echo Opção inválida, tente novamente.
pause
goto menu

:listar_servicos
cls
echo ===========================================
echo         LISTA DE SERVIÇOS
echo ===========================================
sc query
pause
goto menu

:iniciar_servico
cls
echo ===========================================
echo         INICIAR UM SERVIÇO
echo ===========================================
set /p "servico=Digite o nome do serviço para iniciar: "
net start "%servico%"
if %errorlevel%==0 (
    echo Serviço iniciado com sucesso.
) else (
    echo Erro ao iniciar o serviço ou serviço já está em execução.
)
pause
goto menu

:parar_servico
cls
echo ===========================================
echo         PARAR UM SERVIÇO
echo ===========================================
set /p "servico=Digite o nome do serviço para parar: "
net stop "%servico%"
if %errorlevel%==0 (
    echo Serviço parado com sucesso.
) else (
    echo Erro ao parar o serviço ou serviço já está parado.
)
pause
goto menu

:reiniciar_servico
cls
echo ===========================================
echo         REINICIAR UM SERVIÇO
echo ===========================================
set /p "servico=Digite o nome do serviço para reiniciar: "
net stop "%servico%"
if %errorlevel%==0 (
    echo Serviço parado com sucesso. Reiniciando...
    net start "%servico%"
    if %errorlevel%==0 (
        echo Serviço reiniciado com sucesso.
    ) else (
        echo Erro ao reiniciar o serviço.
    )
) else (
    echo Erro ao parar o serviço ou serviço já está parado.
)
pause
goto menu

:sair
endlocal
exit
