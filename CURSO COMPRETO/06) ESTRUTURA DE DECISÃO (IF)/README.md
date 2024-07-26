# ESTRUTURA DE DECISÃO (IF)
A estrutura de decisão `IF` no Batch é usada para tomar decisões e executar diferentes partes do código com base em condições específicas. Ela permite que você verifique condições e execute comandos diferentes dependendo se essas condições são verdadeiras ou falsas.

Aqui está uma visão geral detalhada sobre como usar a estrutura de decisão `IF` em scripts Batch:

## Estrutura Básica
A estrutura básica do `IF` em Batch é:

```bat
if condition (
    comando1
) else (
    comando2
)
```

- **`condition`**: A condição a ser verificada.
- **`comando1`**: O comando a ser executado se a condição for verdadeira.
- **`comando2`**: O comando a ser executado se a condição for falsa.

## Tipos de Condições e Sintaxe
### 1. **Comparação de Strings**
Para comparar strings, você pode usar o operador `==`:

```bat
@echo off
set string1=hello
set string2=world

if "%string1%"=="%string2%" (
    echo As strings são iguais.
) else (
    echo As strings são diferentes.
)
```

### 2. **Comparação Numérica**
Para comparar valores numéricos, você usa o comando `set /a` e operadores de comparação:

- **Operadores de Comparação**:
  - `==` : Igual
  - `neq` : Diferente
  - `lss` : Menor que
  - `leq` : Menor ou igual a
  - `gtr` : Maior que
  - `geq` : Maior ou igual a

```bat
@echo off
set /a num1=10
set /a num2=20

if %num1% lss %num2% (
    echo %num1% é menor que %num2%.
) else (
    echo %num1% não é menor que %num2%.
)
```

### 3. **Checando se um Arquivo ou Diretório Existe**
Para verificar se um arquivo ou diretório existe, você pode usar o comando `if exist`:

- **Verificar Arquivo**:

```bat
@echo off
if exist "C:\caminho\para\arquivo.txt" (
    echo O arquivo existe.
) else (
    echo O arquivo não existe.
)
```

- **Verificar Diretório**:

```bat
@echo off
if exist "C:\caminho\para\diretorio\" (
    echo O diretório existe.
) else (
    echo O diretório não existe.
)
```

### 4. **Verificando o Código de Erro com `ERRORLEVEL`**
Para verificar o código de erro retornado por um comando, você usa o `ERRORLEVEL`:

```bat
@echo off
dir C:\ >nul 2>&1
if %ERRORLEVEL% equ 0 (
    echo O comando 'dir' foi executado com sucesso.
) else (
    echo O comando 'dir' falhou com código de erro %ERRORLEVEL%.
)
```

### 5. **Combinando Condições com `&&` e `||`**
- **`&&`**: Executa o próximo comando se o comando anterior for bem-sucedido.

```bat
@echo off
echo Testando && echo Comando bem-sucedido.
```

- **`||`**: Executa o próximo comando se o comando anterior falhar.

```bat
@echo off
echo Testando || echo Comando falhou.
```

## Exemplo Completo de Script Batch com Estrutura de Decisão
Aqui está um exemplo de script Batch que utiliza várias estruturas de decisão:

```bat
@echo off
setlocal

:: Definir variáveis
set /a idade=25
set nome=Maria

:: Verificar idade
if %idade% geq 18 (
    echo %nome% é maior de idade.
) else (
    echo %nome% é menor de idade.
)

:: Verificar se um arquivo existe
if exist "C:\Windows\System32\cmd.exe" (
    echo O arquivo cmd.exe existe no diretório System32.
) else (
    echo O arquivo cmd.exe não existe no diretório System32.
)

:: Testar a presença de um diretório
if exist "C:\Temp\" (
    echo O diretório C:\Temp existe.
) else (
    echo O diretório C:\Temp não existe.
)

:: Testar um comando
echo Testando o comando dir...
dir C:\ >nul 2>&1
if %ERRORLEVEL% equ 0 (
    echo O comando dir foi executado com sucesso.
) else (
    echo O comando dir falhou com código de erro %ERRORLEVEL%.
)

pause
```

## Explicação do Exemplo
1. **Verificação de Idade**:
   - Compara a variável `idade` para verificar se é maior ou igual a `18`.

2. **Verificação de Arquivo**:
   - Usa `if exist` para checar a existência do arquivo `cmd.exe`.

3. **Verificação de Diretório**:
   - Usa `if exist` para checar a existência do diretório `C:\Temp`.

4. **Testar um Comando**:
   - Executa o comando `dir` e verifica o `ERRORLEVEL` para determinar se o comando foi bem-sucedido.

## Considerações Finais
- O uso adequado da estrutura de decisão `IF` permite criar scripts Batch mais flexíveis e robustos.
- Ao trabalhar com comparação de strings e números, é importante garantir que as variáveis sejam corretamente formatadas e que as condições sejam bem definidas.
- Lembre-se de usar `()` para agrupar comandos dentro de uma estrutura `IF` quando há múltiplas linhas de comando a serem executadas.