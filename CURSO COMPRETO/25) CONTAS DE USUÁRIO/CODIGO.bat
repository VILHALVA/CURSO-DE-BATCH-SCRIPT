@echo off
setlocal enabledelayedexpansion

:: Função para exibir o menu principal
:menu
cls
echo ===========================================
echo         GESTÃO DE CONTAS DE USUÁRIO - MENU
echo ===========================================
echo 1. Listar Contas de Usuário
echo 2. Criar Conta de Usuário
echo 3. Excluir Conta de Usuário
echo 4. Modificar Senha de Conta de Usuário
echo 5. Adicionar Usuário a um Grupo
echo 6. Remover Usuário de um Grupo
echo 7. Sair
echo ===========================================
set /p "opcao=Escolha uma opção (1-7): "

:: Processar a opção escolhida
if "%opcao%"=="1" goto listar_contas
if "%opcao%"=="2" goto criar_conta
if "%opcao%"=="3" goto excluir_conta
if "%opcao%"=="4" goto modificar_senha
if "%opcao%"=="5" goto adicionar_grupo
if "%opcao%"=="6" goto remover_grupo
if "%opcao%"=="7" goto sair

:: Opção inválida
echo Opção inválida, tente novamente.
pause
goto menu

:listar_contas
cls
echo ===========================================
echo         LISTA DE CONTAS DE USUÁRIO
echo ===========================================
net user
pause
goto menu

:criar_conta
cls
echo ===========================================
echo         CRIAR CONTA DE USUÁRIO
echo ===========================================
set /p "usuario=Digite o nome do usuário: "
set /p "senha=Digite a senha do usuário: "
net user %usuario% %senha% /add
if %errorlevel%==0 (
    echo Conta criada com sucesso.
) else (
    echo Erro ao criar a conta.
)
pause
goto menu

:excluir_conta
cls
echo ===========================================
echo         EXCLUIR CONTA DE USUÁRIO
echo ===========================================
set /p "usuario=Digite o nome do usuário a ser excluído: "
net user %usuario% /delete
if %errorlevel%==0 (
    echo Conta excluída com sucesso.
) else (
    echo Erro ao excluir a conta ou conta não encontrada.
)
pause
goto menu

:modificar_senha
cls
echo ===========================================
echo         MODIFICAR SENHA DE CONTA DE USUÁRIO
echo ===========================================
set /p "usuario=Digite o nome do usuário: "
set /p "nova_senha=Digite a nova senha: "
net user %usuario% %nova_senha%
if %errorlevel%==0 (
    echo Senha modificada com sucesso.
) else (
    echo Erro ao modificar a senha ou usuário não encontrado.
)
pause
goto menu

:adicionar_grupo
cls
echo ===========================================
echo         ADICIONAR USUÁRIO A UM GRUPO
echo ===========================================
set /p "usuario=Digite o nome do usuário: "
set /p "grupo=Digite o nome do grupo: "
net localgroup %grupo% %usuario% /add
if %errorlevel%==0 (
    echo Usuário adicionado ao grupo com sucesso.
) else (
    echo Erro ao adicionar o usuário ao grupo ou grupo não encontrado.
)
pause
goto menu

:remover_grupo
cls
echo ===========================================
echo         REMOVER USUÁRIO DE UM GRUPO
echo ===========================================
set /p "usuario=Digite o nome do usuário: "
set /p "grupo=Digite o nome do grupo: "
net localgroup %grupo% %usuario% /delete
if %errorlevel%==0 (
    echo Usuário removido do grupo com sucesso.
) else (
    echo Erro ao remover o usuário do grupo ou grupo não encontrado.
)
pause
goto menu

:sair
endlocal
exit
