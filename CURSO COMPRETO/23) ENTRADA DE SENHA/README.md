# ENTRADA DE SENHA
Para solicitar e validar uma senha em um script Batch, você pode usar o comando `set /p` para capturar a entrada do usuário e uma abordagem que oculta a senha digitada (como um caractere de máscara). No entanto, o Batch não oferece uma forma nativa de ocultar a senha enquanto é digitada, então você pode usar um truque para criar uma experiência semelhante.

Aqui está um exemplo de script Batch que solicita uma senha e verifica se ela corresponde a uma senha predefinida. Para ocultar a entrada da senha enquanto é digitada, o script utiliza uma abordagem onde os caracteres digitados são substituídos por asteriscos.

```bat
@echo off
setlocal enabledelayedexpansion

:: Definir senha pré-configurada
set "senha_correta=Senha123"

:: Função para solicitar e verificar a senha
:solicitar_senha
cls
echo ===========================================
echo         AUTENTICAÇÃO
echo ===========================================
echo Digite a senha para continuar:
set "senha_digitada="

:: Solicitar senha e ocultar a entrada (usando * como máscara)
set "input_char="
set /p "input_char=Pressione uma tecla para continuar... (Apenas pressione Enter)"
for /l %%a in (1,1,30) do (
    set "char="
    for /f "delims=" %%b in ('powershell -command "[console]::ReadKey($true).KeyChar"') do set "char=%%b"
    if defined char (
        if "!char!"=="`" (
            echo.
            echo Senha digitada:
            echo !senha_digitada!
            goto verificar_senha
        )
        set "senha_digitada=!senha_digitada!!char!"
        echo|set /p="*"
    )
)

:verificar_senha
cls
echo ===========================================
echo         AUTENTICAÇÃO
echo ===========================================
echo Senha digitada: !senha_digitada!
if "%senha_digitada%"=="%senha_correta%" (
    echo Senha correta! Acesso concedido.
    pause
    :: Aqui você pode adicionar o código para continuar com o script após a autenticação bem-sucedida.
) else (
    echo Senha incorreta! Acesso negado.
    pause
)

endlocal
exit
```

## Explicação do Código
1. **Configuração Inicial**
   - `@echo off`: Desativa a exibição dos comandos enquanto o script é executado.
   - `setlocal enabledelayedexpansion`: Habilita a expansão atrasada de variáveis para manipulação dinâmica de strings.

2. **Definição da Senha**
   - `set "senha_correta=Senha123"`: Define a senha correta que será usada para validação.

3. **Solicitação de Senha**
   - `:solicitar_senha`: Label para a seção onde a senha é solicitada.
   - `set "senha_digitada="`: Inicializa a variável que armazenará a senha digitada.
   - `set "input_char="`: Inicializa a variável que armazenará o caractere de entrada.
   - `set /p "input_char=Pressione uma tecla para continuar... (Apenas pressione Enter)"`: Solicita uma entrada para começar a leitura dos caracteres da senha.
   - `for /l %%a in (1,1,30) do (...)`: Loop para ler até 30 caracteres da senha.
   - `powershell -command "[console]::ReadKey($true).KeyChar"`: Usa o PowerShell para ler cada caractere digitado sem exibi-lo na tela.
   - `if defined char`: Verifica se o caractere foi digitado.
   - `if "!char!"=="`": Verifica se o caractere de término (Enter) foi pressionado para finalizar a entrada.
   - `set "senha_digitada=!senha_digitada!!char!"`: Adiciona o caractere à senha digitada.
   - `echo|set /p="*"`: Exibe um asterisco (*) para cada caractere digitado.

4. **Verificação da Senha**
   - `:verificar_senha`: Label para a seção onde a senha digitada é verificada.
   - `if "%senha_digitada%"=="%senha_correta%"`: Compara a senha digitada com a senha correta.
   - Exibe uma mensagem de sucesso ou falha com base na comparação.

5. **Encerramento**
   - `endlocal`: Finaliza o uso de variáveis locais.
   - `exit`: Sai do script.

