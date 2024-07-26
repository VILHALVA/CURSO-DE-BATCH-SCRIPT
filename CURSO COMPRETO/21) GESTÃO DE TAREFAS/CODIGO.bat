@echo off
setlocal enabledelayedexpansion

:: Arquivo onde as tarefas serão armazenadas
set "taskfile=tasks.txt"

:: Função para adicionar uma tarefa
:add_task
set /p "task=Digite a nova tarefa: "
echo %task% >> %taskfile%
echo Tarefa adicionada com sucesso!
goto menu

:: Função para listar todas as tarefas
:list_tasks
if not exist %taskfile% (
    echo Nenhuma tarefa encontrada.
    goto menu
)

echo Tarefas:
set tasknum=0
for /f "tokens=*" %%A in (%taskfile%) do (
    set /a tasknum+=1
    echo !tasknum!: %%A
)
goto menu

:: Função para remover uma tarefa
:remove_task
call :list_tasks
set /p "taskid=Digite o número da tarefa a ser removida: "

:: Criar um arquivo temporário para armazenar as tarefas restantes
set "tempfile=temp_tasks.txt"
set tasknum=0
for /f "tokens=*" %%A in (%taskfile%) do (
    set /a tasknum+=1
    if !tasknum! neq %taskid% echo %%A >> %tempfile%
)

:: Substituir o arquivo de tarefas pelo temporário
move /y %tempfile% %taskfile%
echo Tarefa removida com sucesso!
goto menu

:: Função para exibir o menu
:menu
echo.
echo ========================
echo  Gerenciador de Tarefas
echo ========================
echo 1. Adicionar Tarefa
echo 2. Listar Tarefas
echo 3. Remover Tarefa
echo 4. Sair
echo ========================
set /p "option=Escolha uma opcao: "

if "%option%"=="1" goto add_task
if "%option%"=="2" goto list_tasks
if "%option%"=="3" goto remove_task
if "%option%"=="4" goto end

:: Caso a opção seja inválida
echo Opcao invalida! Tente novamente.
goto menu

:end
echo Saindo...
endlocal
pause
