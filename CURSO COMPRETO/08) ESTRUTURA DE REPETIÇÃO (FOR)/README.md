# ESTRUTURA DE REPETIÇÃO (FOR)
A estrutura de repetição `FOR` em Batch é uma ferramenta poderosa que permite executar um bloco de código repetidamente para um conjunto de itens, como arquivos, números, ou strings. Isso é útil para tarefas automatizadas, como processar arquivos em um diretório ou realizar operações em uma sequência de números.

## Estrutura Básica
A estrutura básica do comando `FOR` em Batch é:

```bat
FOR %%variavel IN (conjunto) DO comando
```

- **`%%variavel`**: Nome da variável que armazenará o item atual do conjunto. No Prompt de Comando (cmd.exe), use um único `%` (`%variavel`).
- **`conjunto`**: Lista de itens a serem iterados. Pode ser uma lista de valores, arquivos, ou outros.
- **`comando`**: O comando a ser executado para cada item no conjunto.

## Tipos de Estruturas de Repetição `FOR`
### 1. **Iterar sobre uma Lista de Itens**
Você pode iterar sobre uma lista de valores ou arquivos:

```bat
@echo off
FOR %%i IN (um dois tres quatro cinco) DO (
    echo %%i
)
```

- **Explicação**:
  - Itera sobre cada item na lista `(um dois tres quatro cinco)` e imprime o item atual (`%%i`).

### 2. **Iterar sobre Arquivos em um Diretório**
Para processar arquivos em um diretório:

```bat
@echo off
FOR %%f IN (C:\Pasta\*.txt) DO (
    echo Processando %%f
    :: Aqui você pode adicionar comandos para processar cada arquivo
)
```

- **Explicação**:
  - Itera sobre todos os arquivos `.txt` no diretório `C:\Pasta` e imprime o nome do arquivo atual (`%%f`).

### 3. **Iterar sobre uma Sequência de Números**
Para executar um bloco de código para uma sequência de números:

```bat
@echo off
FOR /L %%n IN (1,1,5) DO (
    echo Número: %%n
)
```

- **Explicação**:
  - `FOR /L %%n IN (1,1,5)` itera do número `1` até `5`, com um incremento de `1` a cada iteração. Imprime cada número (`%%n`).

### 4. **Iterar sobre Linhas em um Arquivo**
Para ler e processar linhas de um arquivo:

```bat
@echo off
FOR /F "tokens=1,2 delims=," %%a IN (C:\Pasta\arquivo.csv) DO (
    echo Coluna 1: %%a
    echo Coluna 2: %%b
)
```

- **Explicação**:
  - `FOR /F` processa um arquivo linha por linha.
  - `"tokens=1,2 delims=,"` divide cada linha em tokens usando a vírgula como delimitador e atribui os tokens às variáveis `%%a` e `%%b`.

## Comandos e Opções Avançadas
### 1. **Usando `FOR /D` para Diretórios**
Para iterar sobre diretórios em vez de arquivos:

```bat
@echo off
FOR /D %%d IN (C:\Pasta\*) DO (
    echo Diretório: %%d
)
```

- **Explicação**:
  - `FOR /D` itera sobre diretórios e não arquivos.

### 2. **Usando `FOR /F` com Comandos e Strings**
Para processar a saída de um comando ou uma string:

```bat
@echo off
FOR /F "delims=" %%i IN ('dir /b C:\Pasta\*.txt') DO (
    echo Arquivo: %%i
)
```

- **Explicação**:
  - `FOR /F` executa o comando `dir /b C:\Pasta\*.txt` e processa cada linha da saída como um item (`%%i`).

### 3. **Usando `FOR /L` para Contadores**
Para criar loops com incremento personalizado:

```bat
@echo off
FOR /L %%i IN (1,2,10) DO (
    echo Contador: %%i
)
```

- **Explicação**:
  - `FOR /L %%i IN (1,2,10)` itera do número `1` até `10` com um incremento de `2`.

## Exemplo Completo de Script Batch com `FOR`
Aqui está um exemplo mais completo que demonstra como usar a estrutura `FOR` em diferentes cenários:

```bat
@echo off
setlocal

:: Exemplo 1: Iterar sobre uma lista de valores
echo Exemplo 1: Iterar sobre uma lista de valores
FOR %%i IN (maçã banana laranja) DO (
    echo Fruta: %%i
)
echo.

:: Exemplo 2: Iterar sobre arquivos em um diretório
echo Exemplo 2: Iterar sobre arquivos .txt
FOR %%f IN (C:\Pasta\*.txt) DO (
    echo Arquivo encontrado: %%f
)
echo.

:: Exemplo 3: Iterar sobre uma sequência de números
echo Exemplo 3: Iterar sobre uma sequência de números
FOR /L %%n IN (1,2,10) DO (
    echo Número: %%n
)
echo.

:: Exemplo 4: Iterar sobre linhas em um arquivo CSV
echo Exemplo 4: Iterar sobre linhas em um arquivo CSV
FOR /F "tokens=1,2 delims=," %%a IN (C:\Pasta\arquivo.csv) DO (
    echo Coluna 1: %%a
    echo Coluna 2: %%b
)
echo.

pause
```

## Explicação do Exemplo
1. **Lista de Valores**:
   - Itera sobre uma lista de frutas e imprime cada uma.

2. **Arquivos em um Diretório**:
   - Itera sobre todos os arquivos `.txt` em `C:\Pasta` e imprime o nome do arquivo.

3. **Sequência de Números**:
   - Itera do número `1` ao `10` com um incremento de `2` e imprime cada número.

4. **Linhas em um Arquivo CSV**:
   - Processa cada linha do arquivo CSV e imprime os valores das duas primeiras colunas.

