# LISTAS DE CONTROLE DE ACESSO
Listas de Controle de Acesso (ACLs) são usadas em sistemas operacionais para gerenciar permissões e acessos a arquivos e pastas. No Windows, as ACLs permitem definir quais usuários ou grupos têm permissões específicas sobre recursos como arquivos, pastas e outros objetos do sistema.

Aqui está um guia sobre como você pode gerenciar ACLs usando scripts Batch e ferramentas relacionadas no Windows.

## Gerenciamento de ACLs com `icacls`
O comando `icacls` é uma ferramenta de linha de comando que permite gerenciar permissões de arquivos e pastas. Ele pode exibir, modificar, fazer backup e restaurar permissões de ACL.

## Comandos Básicos do `icacls`
1. **Listar Permissões**
   - Exibe as permissões de um arquivo ou pasta.
   ```bat
   icacls "c:\caminho\para\arquivo_ou_pasta"
   ```

2. **Modificar Permissões**
   - Adiciona ou modifica permissões para um arquivo ou pasta.
   ```bat
   icacls "c:\caminho\para\arquivo_ou_pasta" /grant Usuario:(F)
   ```
   - `Usuario` é o nome do usuário ou grupo.
   - `(F)` é a permissão `Full Control`. Outras permissões incluem:
     - `R` - Read
     - `M` - Modify
     - `RX` - Read and Execute
     - `W` - Write

3. **Remover Permissões**
   - Remove permissões para um arquivo ou pasta.
   ```bat
   icacls "c:\caminho\para\arquivo_ou_pasta" /remove Usuario
   ```

4. **Resetar Permissões**
   - Reseta as permissões de um arquivo ou pasta para o padrão herdado.
   ```bat
   icacls "c:\caminho\para\arquivo_ou_pasta" /reset
   ```

5. **Fazer Backup de Permissões**
   - Faz backup das permissões para um arquivo ou pasta.
   ```bat
   icacls "c:\caminho\para\arquivo_ou_pasta" /save aclfile.txt
   ```

6. **Restaurar Permissões**
   - Restaura permissões a partir de um arquivo de backup.
   ```bat
   icacls "c:\caminho\para\arquivo_ou_pasta" /restore aclfile.txt
   ```

## Exemplo de Script Batch para Gerenciamento de ACLs
Aqui está um exemplo de script Batch que demonstra como listar, adicionar, e remover permissões de arquivos e pastas usando o `icacls`.

```bat
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
```

## Explicação do Código
1. **Configuração Inicial**
   - `@echo off`: Desativa a exibição dos comandos enquanto o script é executado.
   - `setlocal enabledelayedexpansion`: Habilita a expansão atrasada de variáveis para manipulação dinâmica de strings.

2. **Exibição do Menu Principal**
   - `:menu`: Label para o menu principal.
   - `cls`: Limpa a tela.
   - `echo`: Exibe as opções do menu.
   - `set /p "opcao=Escolha uma opção (1-7): "`: Solicita que o usuário escolha uma opção.

3. **Processamento das Opções**
   - Verifica a opção escolhida pelo usuário (`if "%opcao%"=="1" goto listar_permissoes`, etc.) e redireciona para o label correspondente.
   - Se a opção for inválida, exibe uma mensagem de erro e retorna ao menu.

4. **Gerenciamento de Permissões**
   - **Listar Permissões**: Exibe as permissões atuais de um arquivo ou pasta.
   - **Adicionar Permissão**: Concede uma nova permissão a um usuário ou grupo.
   - **Remover Permissão**: Remove permissões de um usuário ou grupo.
   - **Resetar Permissões**: Restaura as permissões padrão herdadas.
   - **Backup de Permissões**: Faz backup das permissões atuais para um arquivo.
   - **Restaurar Permissões**: Restaura permissões a partir de um arquivo de backup.

5. **Encerramento**
   - `endlocal`: Finaliza o uso de variáveis locais.
   - `exit`: Sai do script.

