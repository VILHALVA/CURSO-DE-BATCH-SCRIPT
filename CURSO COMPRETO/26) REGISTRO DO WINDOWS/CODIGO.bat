@echo off
setlocal enabledelayedexpansion

:: Função para exibir o menu principal
:menu
cls
echo ===========================================
echo         GESTÃO DO REGISTRO DO WINDOWS - MENU
echo ===========================================
echo 1. Exportar Registro
echo 2. Importar Registro
echo 3. Adicionar Chave ao Registro
echo 4. Excluir Chave do Registro
echo 5. Mostrar Conteúdo de uma Chave
echo 6. Sair
echo ===========================================
set /p "opcao=Escolha uma opção (1-6): "

:: Processar a opção escolhida
if "%opcao%"=="1" goto exportar_registro
if "%opcao%"=="2" goto importar_registro
if "%opcao%"=="3" goto adicionar_chave
if "%opcao%"=="4" goto excluir_chave
if "%opcao%"=="5" goto mostrar_chave
if "%opcao%"=="6" goto sair

:: Opção inválida
echo Opção inválida, tente novamente.
pause
goto menu

:exportar_registro
cls
echo ===========================================
echo         EXPORTAR REGISTRO
echo ===========================================
set /p "chave=Digite o caminho da chave do Registro (ex: HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion): "
set /p "arquivo=Digite o caminho e nome do arquivo de backup (ex: C:\backup_registro.reg): "
reg export "%chave%" "%arquivo%"
if %errorlevel%==0 (
    echo Registro exportado com sucesso.
) else (
    echo Erro ao exportar o Registro.
)
pause
goto menu

:importar_registro
cls
echo ===========================================
echo         IMPORTAR REGISTRO
echo ===========================================
set /p "arquivo=Digite o caminho e nome do arquivo de registro (ex: C:\backup_registro.reg): "
reg import "%arquivo%"
if %errorlevel%==0 (
    echo Registro importado com sucesso.
) else (
    echo Erro ao importar o Registro.
)
pause
goto menu

:adicionar_chave
cls
echo ===========================================
echo         ADICIONAR CHAVE AO REGISTRO
echo ===========================================
set /p "chave=Digite o caminho da chave do Registro (ex: HKEY_LOCAL_MACHINE\Software\MeuSoftware): "
set /p "valor=Digite o nome do valor a ser adicionado: "
set /p "tipo=Digite o tipo de dado (REG_SZ, REG_DWORD, etc.): "
set /p "dado=Digite o valor a ser armazenado: "
reg add "%chave%" /v "%valor%" /t %tipo% /d "%dado%"
if %errorlevel%==0 (
    echo Chave adicionada com sucesso.
) else (
    echo Erro ao adicionar a chave.
)
pause
goto menu

:excluir_chave
cls
echo ===========================================
echo         EXCLUIR CHAVE DO REGISTRO
echo ===========================================
set /p "chave=Digite o caminho da chave do Registro (ex: HKEY_LOCAL_MACHINE\Software\MeuSoftware): "
set /p "valor=Digite o nome do valor a ser excluído (deixe em branco para excluir a chave): "
if "%valor%"=="" (
    reg delete "%chave%" /f
) else (
    reg delete "%chave%" /v "%valor%" /f
)
if %errorlevel%==0 (
    echo Chave excluída com sucesso.
) else (
    echo Erro ao excluir a chave.
)
pause
goto menu

:mostrar_chave
cls
echo ===========================================
echo         MOSTRAR CONTEÚDO DE UMA CHAVE
echo ===========================================
set /p "chave=Digite o caminho da chave do Registro (ex: HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion): "
reg query "%chave%"
pause
goto menu

:sair
endlocal
exit
