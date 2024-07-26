# GESTÃO DE TAREFAS
Para criar um script Batch que gerencia tarefas no Windows, você pode usar comandos como `tasklist`, `taskkill`, `start`, e `pause`. Aqui está um exemplo de um script Batch que oferece um menu para listar tarefas, finalizar tarefas, iniciar programas, e pausar o script:

```bat
@echo off
setlocal enabledelayedexpansion

:: Função para exibir o menu principal
:menu
cls
echo ===========================================
echo         GESTÃO DE TAREFAS - MENU
echo ===========================================
echo 1. Listar Tarefas
echo 2. Finalizar Tarefa
echo 3. Iniciar Programa
echo 4. Sair
echo ===========================================
set /p "opcao=Escolha uma opção (1-4): "

:: Processar a opção escolhida
if "%opcao%"=="1" goto listar_tarefas
if "%opcao%"=="2" goto finalizar_tarefa
if "%opcao%"=="3" goto iniciar_programa
if "%opcao%"=="4" goto sair

:: Opção inválida
echo Opção inválida, tente novamente.
pause
goto menu

:listar_tarefas
cls
echo ===========================================
echo         LISTA DE TAREFAS ATIVAS
echo ===========================================
tasklist
pause
goto menu

:finalizar_tarefa
cls
echo ===========================================
echo         FINALIZAR UMA TAREFA
echo ===========================================
set /p "pid=Digite o PID da tarefa que deseja finalizar: "
taskkill /PID %pid% /F
if %errorlevel%==0 (
    echo Tarefa finalizada com sucesso.
) else (
    echo Erro ao finalizar a tarefa.
)
pause
goto menu

:iniciar_programa
cls
echo ===========================================
echo         INICIAR UM PROGRAMA
echo ===========================================
set /p "programa=Digite o caminho completo do programa: "
start "" "%programa%"
if %errorlevel%==0 (
    echo Programa iniciado com sucesso.
) else (
    echo Erro ao iniciar o programa.
)
pause
goto menu

:sair
endlocal
exit
```

## Explicação do Código
1. **Configuração Inicial**
   - `@echo off`: Desativa a exibição dos comandos enquanto o script é executado.
   - `setlocal enabledelayedexpansion`: Habilita a expansão atrasada de variáveis, necessária para manipulação dinâmica de strings.

2. **Exibição do Menu Principal**
   - `:menu`: Label para o menu principal.
   - `cls`: Limpa a tela.
   - `echo`: Exibe as opções do menu.
   - `set /p "opcao=Escolha uma opção (1-4): "`: Solicita que o usuário escolha uma opção.

3. **Processamento das Opções**
   - Verifica a opção escolhida pelo usuário (`if "%opcao%"=="1" goto listar_tarefas`, etc.) e redireciona para o label correspondente.
   - Se a opção for inválida, exibe uma mensagem de erro e retorna ao menu.

4. **Listar Tarefas**
   - `:listar_tarefas`: Label para listar tarefas.
   - `tasklist`: Exibe a lista de tarefas ativas.
   - `pause`: Pausa para que o usuário possa ver a lista antes de voltar ao menu.

5. **Finalizar Tarefa**
   - `:finalizar_tarefa`: Label para finalizar uma tarefa.
   - `set /p "pid=Digite o PID da tarefa que deseja finalizar: "`: Solicita o PID da tarefa a ser finalizada.
   - `taskkill /PID %pid% /F`: Tenta finalizar a tarefa com o PID fornecido.
   - Verifica o `errorlevel` para determinar se a operação foi bem-sucedida e exibe uma mensagem apropriada.

6. **Iniciar Programa**
   - `:iniciar_programa`: Label para iniciar um programa.
   - `set /p "programa=Digite o caminho completo do programa: "`: Solicita o caminho completo do programa a ser iniciado.
   - `start "" "%programa%"`: Tenta iniciar o programa com o caminho fornecido.
   - Verifica o `errorlevel` para determinar se a operação foi bem-sucedida e exibe uma mensagem apropriada.

7. **Sair**
   - `:sair`: Label para sair do script.
   - `endlocal`: Finaliza o uso de variáveis locais.
   - `exit`: Sai do script.

