@echo off
setlocal enabledelayedexpansion

:: Função para exibir o menu principal
:menu
cls
echo ===========================================
echo         GESTÃO DE ACLs - MENU
echo ===========================================
echo 1. Listar Permissões
echo 2. Adicionar Permissão
echo 3. Remover Permissão
echo 4. Resetar Permissões
echo 5. Fazer Backup de Permissões
echo 6. Restaurar Permissões
echo 7. Sair
echo ===========================================
set /p "opcao=Escolha uma opção (1-7): "

:: Processar a opção escolhida
if "%opcao%"=="1" goto listar_permissoes
if "%opcao%"=="2" goto adicionar_permissao
if "%opcao%"=="3" goto remover_permissao
if "%opcao%"=="4" goto resetar_permissoes
if "%opcao%"=="5" goto backup_permissoes
if "%opcao%"=="6" goto restaurar_permissoes
if "%opcao%"=="7" goto sair

:: Opção inválida
echo Opção inválida, tente novamente.
pause
goto menu

:listar_permissoes
cls
echo ===========================================
echo         LISTA DE PERMISSÕES
echo ===========================================
set /p "caminho=Digite o caminho do arquivo ou pasta: "
icacls "%caminho%"
pause
goto menu

:adicionar_permissao
cls
echo ===========================================
echo         ADICIONAR PERMISSÃO
echo ===========================================
set /p "caminho=Digite o caminho do arquivo ou pasta: "
set /p "usuario=Digite o nome do usuário ou grupo: "
set /p "permissao=Digite a permissão a ser concedida (F, R, M, RX, W): "
icacls "%caminho%" /grant %usuario%:(%permissao%)
echo Permissão adicionada com sucesso.
pause
goto menu

:remover_permissao
cls
echo ===========================================
echo         REMOVER PERMISSÃO
echo ===========================================
set /p "caminho=Digite o caminho do arquivo ou pasta: "
set /p "usuario=Digite o nome do usuário ou grupo: "
icacls "%caminho%" /remove %usuario%
echo Permissão removida com sucesso.
pause
goto menu

:resetar_permissoes
cls
echo ===========================================
echo         RESETAR PERMISSÕES
echo ===========================================
set /p "caminho=Digite o caminho do arquivo ou pasta: "
icacls "%caminho%" /reset
echo Permissões resetadas para o padrão herdado.
pause
goto menu

:backup_permissoes
cls
echo ===========================================
echo         BACKUP DE PERMISSÕES
echo ===========================================
set /p "caminho=Digite o caminho do arquivo ou pasta: "
set /p "backup_file=Digite o nome do arquivo de backup: "
icacls "%caminho%" /save %backup_file%
echo Backup de permissões salvo em %backup_file%.
pause
goto menu

:restaurar_permissoes
cls
echo ===========================================
echo         RESTAURAR PERMISSÕES
echo ===========================================
set /p "backup_file=Digite o nome do arquivo de backup: "
icacls "%caminho%" /restore %backup_file%
echo Permissões restauradas a partir de %backup_file%.
pause
goto menu

:sair
endlocal
exit
