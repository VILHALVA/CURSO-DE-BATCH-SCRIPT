# TAREFAS AGENDADAS
As Tarefas Agendadas no Windows permitem que você execute scripts, programas ou comandos em horários específicos ou em resposta a eventos. Você pode gerenciar tarefas agendadas usando a Interface Gráfica do Windows (Task Scheduler) ou através de comandos na linha de comando com `schtasks.exe` e PowerShell.

## Comandos Básicos com `schtasks.exe`
O comando `schtasks.exe` permite criar, modificar, excluir e listar tarefas agendadas a partir da linha de comando. Aqui estão alguns dos comandos mais comuns:

1. **Criar uma Tarefa Agendada**
   - Cria uma nova tarefa agendada que executa um script ou programa em um horário específico.
   ```bat
   schtasks /create /tn "NomeDaTarefa" /tr "C:\Caminho\Para\Script.bat" /sc daily /st 09:00
   ```
   - `/tn`: Nome da tarefa.
   - `/tr`: Caminho para o script ou programa a ser executado.
   - `/sc`: Tipo de agendamento (por exemplo, `daily` para diário).
   - `/st`: Hora de início (em formato 24 horas).

2. **Excluir uma Tarefa Agendada**
   - Exclui uma tarefa agendada existente.
   ```bat
   schtasks /delete /tn "NomeDaTarefa" /f
   ```
   - `/f`: Força a exclusão sem confirmação.

3. **Modificar uma Tarefa Agendada**
   - Modifica uma tarefa agendada existente.
   ```bat
   schtasks /change /tn "NomeDaTarefa" /tr "C:\Novo\Caminho\Para\Script.bat"
   ```

4. **Mostrar Informações sobre uma Tarefa Agendada**
   - Exibe informações sobre uma tarefa agendada.
   ```bat
   schtasks /query /tn "NomeDaTarefa" /v
   ```
   - `/v`: Exibe informações detalhadas.

5. **Listar Todas as Tarefas Agendadas**
   - Exibe uma lista de todas as tarefas agendadas no sistema.
   ```bat
   schtasks /query
   ```

## Exemplo de Script Batch para Gerenciamento de Tarefas Agendadas
Aqui está um exemplo de script Batch que fornece um menu para criar, excluir, modificar e listar tarefas agendadas.

```bat
@echo off
setlocal enabledelayedexpansion

:: Função para exibir o menu principal
:menu
cls
echo ===========================================
echo         GESTÃO DE TAREFAS AGENDADAS - MENU
echo ===========================================
echo 1. Criar Tarefa Agendada
echo 2. Excluir Tarefa Agendada
echo 3. Modificar Tarefa Agendada
echo 4. Mostrar Informações sobre uma Tarefa
echo 5. Listar Todas as Tarefas Agendadas
echo 6. Sair
echo ===========================================
set /p "opcao=Escolha uma opção (1-6): "

:: Processar a opção escolhida
if "%opcao%"=="1" goto criar_tarefa
if "%opcao%"=="2" goto excluir_tarefa
if "%opcao%"=="3" goto modificar_tarefa
if "%opcao%"=="4" goto mostrar_tarefa
if "%opcao%"=="5" goto listar_tarefas
if "%opcao%"=="6" goto sair

:: Opção inválida
echo Opção inválida, tente novamente.
pause
goto menu

:criar_tarefa
cls
echo ===========================================
echo         CRIAR TAREFA AGENDADA
echo ===========================================
set /p "nome=Digite o nome da tarefa: "
set /p "caminho=Digite o caminho para o script/programa: "
set /p "hora=Digite a hora de início (HH:MM, formato 24h): "
schtasks /create /tn "%nome%" /tr "%caminho%" /sc daily /st %hora%
if %errorlevel%==0 (
    echo Tarefa criada com sucesso.
) else (
    echo Erro ao criar a tarefa.
)
pause
goto menu

:excluir_tarefa
cls
echo ===========================================
echo         EXCLUIR TAREFA AGENDADA
echo ===========================================
set /p "nome=Digite o nome da tarefa a ser excluída: "
schtasks /delete /tn "%nome%" /f
if %errorlevel%==0 (
    echo Tarefa excluída com sucesso.
) else (
    echo Erro ao excluir a tarefa ou tarefa não encontrada.
)
pause
goto menu

:modificar_tarefa
cls
echo ===========================================
echo         MODIFICAR TAREFA AGENDADA
echo ===========================================
set /p "nome=Digite o nome da tarefa: "
set /p "novo_caminho=Digite o novo caminho para o script/programa: "
schtasks /change /tn "%nome%" /tr "%novo_caminho%"
if %errorlevel%==0 (
    echo Tarefa modificada com sucesso.
) else (
    echo Erro ao modificar a tarefa ou tarefa não encontrada.
)
pause
goto menu

:mostrar_tarefa
cls
echo ===========================================
echo         MOSTRAR INFORMAÇÕES SOBRE UMA TAREFA
echo ===========================================
set /p "nome=Digite o nome da tarefa: "
schtasks /query /tn "%nome%" /v
pause
goto menu

:listar_tarefas
cls
echo ===========================================
echo         LISTAR TODAS AS TAREFAS AGENDADAS
echo ===========================================
schtasks /query
pause
goto menu

:sair
endlocal
exit
```

## Explicação do Código
1. **Configuração Inicial**
   - `@echo off`: Desativa a exibição dos comandos enquanto o script é executado.
   - `setlocal enabledelayedexpansion`: Habilita a expansão atrasada de variáveis para manipulação dinâmica de strings.

2. **Exibição do Menu Principal**
   - `:menu`: Label para o menu principal.
   - `cls`: Limpa a tela.
   - `echo`: Exibe as opções do menu.
   - `set /p "opcao=Escolha uma opção (1-6): "`: Solicita que o usuário escolha uma opção.

3. **Processamento das Opções**
   - Verifica a opção escolhida pelo usuário (`if "%opcao%"=="1" goto criar_tarefa`, etc.) e redireciona para o label correspondente.
   - Se a opção for inválida, exibe uma mensagem de erro e retorna ao menu.

4. **Gerenciamento de Tarefas Agendadas**
   - **Criar Tarefa**: Cria uma nova tarefa agendada com o nome, caminho do script e horário fornecidos.
   - **Excluir Tarefa**: Exclui uma tarefa agendada com o nome fornecido.
   - **Modificar Tarefa**: Modifica uma tarefa agendada existente para usar um novo caminho para o script.
   - **Mostrar Informações**: Exibe informações detalhadas sobre uma tarefa agendada.
   - **Listar Tarefas**: Lista todas as tarefas agendadas no sistema.

5. **Encerramento**
   - `endlocal`: Finaliza o uso de variáveis locais.
   - `exit`: Sai do script.

## Como Executar o Script
1. **Salvar o Script**
   - Salve o código acima em um arquivo com a extensão `.bat`, por exemplo, `gestao_tarefas.bat`.

2. **Executar o Script**
   - Abra o Prompt de Comando (CMD) como Administrador.
   - Navegue até o diretório onde o arquivo `.bat` está salvo.
   - Execute o script digitando `gestao_tarefas.bat` e pressione Enter.

Esse script fornece um menu interativo para gerenciar tarefas agendadas, utilizando o comando `schtasks.exe`. Algumas operações podem exigir permissões administrativas.