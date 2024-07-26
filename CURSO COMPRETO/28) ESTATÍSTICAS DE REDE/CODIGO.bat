@echo off
setlocal enabledelayedexpansion

:: Função para exibir o menu principal
:menu
cls
echo ===========================================
echo         ESTATÍSTICAS DE REDE - MENU
echo ===========================================
echo 1. Informações de IP
echo 2. Testar Conectividade (Ping)
echo 3. Rastrear Rota (Tracert)
echo 4. Mostrar Conexões e Portas (Netstat)
echo 5. Consulta DNS (Nslookup)
echo 6. Exibir Tabela de Roteamento (Route)
echo 7. Exibir Tabela ARP
echo 8. Sair
echo ===========================================
set /p "opcao=Escolha uma opção (1-8): "

:: Processar a opção escolhida
if "%opcao%"=="1" goto info_ip
if "%opcao%"=="2" goto testar_ping
if "%opcao%"=="3" goto rastrear_rota
if "%opcao%"=="4" goto mostrar_netstat
if "%opcao%"=="5" goto consulta_dns
if "%opcao%"=="6" goto tabela_roteamento
if "%opcao%"=="7" goto tabela_arp
if "%opcao%"=="8" goto sair

:: Opção inválida
echo Opção inválida, tente novamente.
pause
goto menu

:info_ip
cls
echo ===========================================
echo         INFORMAÇÕES DE IP
echo ===========================================
ipconfig
pause
goto menu

:testar_ping
cls
echo ===========================================
echo         TESTAR CONECTIVIDADE (PING)
echo ===========================================
set /p "endereco=Digite o endereço ou IP para pingar (ex: www.google.com): "
ping %endereco%
pause
goto menu

:rastrear_rota
cls
echo ===========================================
echo         RASTREAR ROTA (TRACERT)
echo ===========================================
set /p "endereco=Digite o endereço ou IP para rastrear (ex: www.google.com): "
tracert %endereco%
pause
goto menu

:mostrar_netstat
cls
echo ===========================================
echo         MOSTRAR CONEXÕES E PORTAS (NETSTAT)
echo ===========================================
netstat
pause
goto menu

:consulta_dns
cls
echo ===========================================
echo         CONSULTA DNS (NSLOOKUP)
echo ===========================================
set /p "dominio=Digite o domínio para consulta (ex: www.google.com): "
nslookup %dominio%
pause
goto menu

:tabela_roteamento
cls
echo ===========================================
echo         EXIBIR TABELA DE ROTEAMENTO (ROUTE)
echo ===========================================
route print
pause
goto menu

:tabela_arp
cls
echo ===========================================
echo         EXIBIR TABELA ARP
echo ===========================================
arp -a
pause
goto menu

:sair
endlocal
exit
