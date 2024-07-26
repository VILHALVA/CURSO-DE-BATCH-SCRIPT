# O ERRORLEVEL
O `ERRORLEVEL` é uma variável interna do ambiente de comando do Windows que armazena o código de retorno de um comando ou programa executado. Esse código indica o status da execução do comando: um valor `0` geralmente significa que o comando foi executado com sucesso, enquanto qualquer valor diferente de `0` indica que ocorreu um erro.

Aqui está uma visão geral detalhada sobre como usar o `ERRORLEVEL` em scripts Batch:

## Utilização do `ERRORLEVEL`
1. **Verificando o `ERRORLEVEL`**

   Após a execução de um comando, você pode verificar o valor de `ERRORLEVEL` para determinar se o comando foi bem-sucedido ou se ocorreu algum erro.

   ```bat
   command
   if %ERRORLEVEL% equ 0 (
       echo Comando executado com sucesso.
   ) else (
       echo Ocorreu um erro. Código de erro: %ERRORLEVEL%
   )
   ```

   **Nota:** Use `if %ERRORLEVEL% equ valor` para comparar o código de erro específico. `ERRORLEVEL` é uma variável especial e sua verificação deve ser feita com `geq`, `gtr`, `leq`, `lss`, `neq`, ou `equ`.

2. **Comandos e `ERRORLEVEL`**

   Alguns exemplos de comandos e suas implicações com `ERRORLEVEL`:

   - **`dir`**: O comando `dir` exibe uma lista de arquivos e diretórios. O `ERRORLEVEL` será `0` se o comando for bem-sucedido e `1` se houver um erro (por exemplo, o diretório não existir).

   - **`copy`**: O comando `copy` copia arquivos. O `ERRORLEVEL` será `0` se a cópia for bem-sucedida e um valor diferente se houver um erro (por exemplo, se o arquivo de origem não existir).

   - **`exit`**: O comando `exit` pode ser usado para definir um código de saída personalizado. Isso pode ser útil para scripts em Batch que são chamados por outros scripts ou programas.

     ```bat
     exit /b 1
     ```

3. **Exemplo de Script Batch Utilizando `ERRORLEVEL`**

   Aqui está um exemplo de script Batch que utiliza `ERRORLEVEL` para verificar o sucesso de operações de comando:

   ```bat
   @echo off
   :: Desativa a exibição dos comandos para uma execução mais limpa.

   :: Exemplo 1: Verificar o sucesso do comando `dir`
   echo Verificando se o diretório C:\Windows existe...
   dir C:\Windows >nul 2>&1
   if %ERRORLEVEL% equ 0 (
       echo O diretório C:\Windows existe.
   ) else (
       echo O diretório C:\Windows não existe.
   )

   :: Exemplo 2: Testar o comando `copy`
   echo Tentando copiar um arquivo de exemplo...
   copy C:\Exemplo\arquivo.txt C:\Destino\ >nul 2>&1
   if %ERRORLEVEL% equ 0 (
       echo Arquivo copiado com sucesso.
   ) else (
       echo Falha ao copiar o arquivo. Código de erro: %ERRORLEVEL%
   )

   :: Exemplo 3: Usar o `exit` para definir um código de saída
   echo Finalizando o script com código de saída 1.
   exit /b 1
   ```

   **Explicação:**

   - **`dir C:\Windows >nul 2>&1`**: O comando `dir` lista o conteúdo do diretório `C:\Windows`, mas a saída padrão e a saída de erro são redirecionadas para `nul` para evitar a exibição na tela.
   - **`if %ERRORLEVEL% equ 0`**: Verifica se `ERRORLEVEL` é igual a `0`, indicando sucesso.
   - **`exit /b 1`**: Define o código de saída do script como `1`, indicando um erro ou uma condição específica.

## Considerações Adicionais
- **`ERRORLEVEL` e Comparação**:
  - O `ERRORLEVEL` deve ser verificado usando comparações como `geq` (maior ou igual), `gtr` (maior), `leq` (menor ou igual), `lss` (menor), `neq` (não igual) e `equ` (igual).

  ```bat
  if %ERRORLEVEL% geq 1 (
      echo O código de erro é maior ou igual a 1.
  )
  ```

- **Código de Saída Personalizado**:
  - Você pode definir o código de saída para indicar diferentes estados ou erros. Isso é útil em scripts mais complexos e para a integração com outros scripts ou sistemas.

  ```bat
  @echo off
  :: Exemplo de definição de código de saída
  echo Processando...
  exit /b 2
  ```

Usar o `ERRORLEVEL` permite um controle mais refinado sobre o fluxo de execução de scripts Batch, ajudando na depuração e na criação de scripts robustos e resilientes.