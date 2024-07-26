# GESTÃO DE SERVIÇOS
Para gerenciar serviços no Windows usando um script Batch, você pode usar comandos como `sc` e `net`. Esses comandos permitem que você inicie, pare, reinicie e verifique o status dos serviços do sistema.

Abaixo está um exemplo de script Batch que oferece um menu para listar serviços, iniciar um serviço, parar um serviço e reiniciar um serviço.

```bat
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
```

### Explicação do Código

1. **Configuração Inicial**
   - `@echo off`: Desativa a exibição dos comandos enquanto o script é executado.
   - `setlocal enabledelayedexpansion`: Habilita a expansão atrasada de variáveis, necessária para manipulação dinâmica de strings.

2. **Exibição do Menu Principal**
   - `:menu`: Label para o menu principal.
   - `cls`: Limpa a tela.
   - `echo`: Exibe as opções do menu.
   - `set /p "opcao=Escolha uma opção (1-5): "`: Solicita que o usuário escolha uma opção.

3. **Processamento das Opções**
   - Verifica a opção escolhida pelo usuário (`if "%opcao%"=="1" goto listar_servicos`, etc.) e redireciona para o label correspondente.
   - Se a opção for inválida, exibe uma mensagem de erro e retorna ao menu.

4. **Listar Serviços**
   - `:listar_servicos`: Label para listar serviços.
   - `sc query`: Exibe a lista de serviços e seu status.
   - `pause`: Pausa para que o usuário possa ver a lista antes de voltar ao menu.

5. **Iniciar Serviço**
   - `:iniciar_servico`: Label para iniciar um serviço.
   - `set /p "servico=Digite o nome do serviço para iniciar: "`: Solicita o nome do serviço a ser iniciado.
   - `net start "%servico%"`: Tenta iniciar o serviço com o nome fornecido.
   - Verifica o `errorlevel` para determinar se a operação foi bem-sucedida e exibe uma mensagem apropriada.

6. **Parar Serviço**
   - `:parar_servico`: Label para parar um serviço.
   - `set /p "servico=Digite o nome do serviço para parar: "`: Solicita o nome do serviço a ser parado.
   - `net stop "%servico%"`: Tenta parar o serviço com o nome fornecido.
   - Verifica o `errorlevel` para determinar se a operação foi bem-sucedida e exibe uma mensagem apropriada.

7. **Reiniciar Serviço**
   - `:reiniciar_servico`: Label para reiniciar um serviço.
   - `set /p "servico=Digite o nome do serviço para reiniciar: "`: Solicita o nome do serviço a ser reiniciado.
   - `net stop "%servico%"`: Tenta parar o serviço.
   - `net start "%servico%"`: Tenta iniciar o serviço novamente.
   - Verifica o `errorlevel` após cada operação para determinar se foram bem-sucedidas e exibe mensagens apropriadas.

8. **Sair**
   - `:sair`: Label para sair do script.
   - `endlocal`: Finaliza o uso de variáveis locais.
   - `exit`: Sai do script.

