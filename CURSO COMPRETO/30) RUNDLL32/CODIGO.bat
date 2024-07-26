@echo off
setlocal

:: Exibir Menu
:menu
cls
echo ===========================================
echo            MENU DE UTILITÁRIOS
echo ===========================================
echo 1. Propriedades do Sistema
echo 2. Configurações de Impressora
echo 3. Gerenciamento de Disco
echo 4. Adicionar/Remover Programas
echo 5. Configurações de Firewall
echo 6. Limpeza de Disco
echo 7. Sair
echo ===========================================
set /p "opcao=Escolha uma opção (1-7): "

:: Processar a opção escolhida
if "%opcao%"=="1" goto sistema
if "%opcao%"=="2" goto impressora
if "%opcao%"=="3" goto disco
if "%opcao%"=="4" goto programas
if "%opcao%"=="5" goto firewall
if "%opcao%"=="6" goto limpeza
if "%opcao%"=="7" goto sair

:: Opção inválida
echo Opção inválida, tente novamente.
pause
goto menu

:: Abrir Propriedades do Sistema
:sistema
cls
echo Abrindo Propriedades do Sistema...
rundll32.exe shell32.dll,Control_RunDLL sysdm.cpl
pause
goto menu

:: Abrir Configurações de Impressora
:impressora
cls
echo Abrindo Configurações de Impressora...
rundll32.exe shell32.dll,Control_RunDLL printers
pause
goto menu

:: Abrir Gerenciamento de Disco
:disco
cls
echo Abrindo Gerenciamento de Disco...
rundll32.exe shell32.dll,Control_RunDLL diskmgmt.msc
pause
goto menu

:: Abrir Adicionar/Remover Programas
:programas
cls
echo Abrindo Adicionar/Remover Programas...
rundll32.exe shell32.dll,Control_RunDLL appwiz.cpl
pause
goto menu

:: Abrir Configurações de Firewall
:firewall
cls
echo Abrindo Configurações de Firewall...
rundll32.exe firewall.cpl
pause
goto menu

:: Abrir Limpeza de Disco
:limpeza
cls
echo Abrindo Limpeza de Disco...
rundll32.exe shell32.dll,Control_RunDLL cleanmgr
pause
goto menu

:: Sair
:sair
endlocal
exit
