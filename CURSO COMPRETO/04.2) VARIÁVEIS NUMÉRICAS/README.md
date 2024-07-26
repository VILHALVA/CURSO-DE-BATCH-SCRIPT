# VARIÁVEIS NUMÉRICAS
Em scripts Batch no Windows, as variáveis numéricas são usadas para armazenar e manipular números. A manipulação de variáveis numéricas pode ser útil para cálculos, loops e controle de fluxo. Vamos explorar como trabalhar com variáveis numéricas no ambiente Batch, incluindo a declaração, atribuição e operações matemáticas básicas.

## 1. **Declaração e Atribuição**
As variáveis numéricas são declaradas e atribuídas da mesma forma que as variáveis de string, mas com uma diferença importante na manipulação matemática.

- **Declaração e Atribuição Simples**:
  ```bat
  set /a variavel=10
  ```
  - **Exemplo**:
    ```bat
    set /a numero=5
    echo %numero%
    ```
    - Define a variável `numero` com o valor `5` e exibe seu valor.

## 2. **Operações Matemáticas**
O comando `set /a` é usado para realizar operações matemáticas e atribuir o resultado a uma variável. Suporta operações básicas como adição, subtração, multiplicação, divisão e módulo.

- **Operações Básicas**:
  ```bat
  set /a resultado=10 + 5
  set /a resultado=10 - 5
  set /a resultado=10 * 5
  set /a resultado=10 / 5
  set /a resultado=10 %% 3
  ```

  - **Exemplos**:
    ```bat
    set /a soma=10 + 5
    set /a subtracao=10 - 5
    set /a multiplicacao=10 * 5
    set /a divisao=10 / 5
    set /a modulo=10 %% 3
    echo Soma: %soma%
    echo Subtração: %subtracao%
    echo Multiplicação: %multiplicacao%
    echo Divisão: %divisao%
    echo Módulo: %modulo%
    ```
    - Calcula e exibe a soma, subtração, multiplicação, divisão e módulo de números.

## 3. **Incremento e Decremento**
Você pode incrementar ou decrementar uma variável numérica facilmente.

- **Incrementar**:
  ```bat
  set /a numero+=1
  ```
  - **Exemplo**:
    ```bat
    set /a contador=0
    set /a contador+=1
    echo Contador: %contador%
    ```
    - Inicializa `contador` com `0` e incrementa em `1`.

- **Decrementar**:
  ```bat
  set /a numero-=1
  ```
  - **Exemplo**:
    ```bat
    set /a contador=10
    set /a contador-=1
    echo Contador: %contador%
    ```
    - Inicializa `contador` com `10` e decrementa em `1`.

## 4. **Usando Variáveis em Loops**
Variáveis numéricas são frequentemente usadas em loops para realizar ações repetidas.

- **Exemplo de Loop `FOR`**:
  ```bat
  @echo off
  set /a contador=0

  for /l %%i in (1,1,5) do (
      set /a contador+=%%i
      echo Valor de %%i: %%i
      echo Contador acumulado: %contador%
  )

  echo Valor final do contador: %contador%
  ```
  - **Explicação**:
    - O loop `FOR /L` itera de `1` a `5`, incrementando `1` a cada passo.
    - `contador` é incrementado pelo valor atual da iteração (`%%i`).

## 5. **Trabalhando com Números Flutuantes**
O Batch nativo não suporta números flutuantes diretamente. Para operações que requerem precisão decimal, você pode usar ferramentas externas ou scripts PowerShell.

- **Exemplo com PowerShell**:
  ```bat
  @echo off
  setlocal

  :: Definir números flutuantes
  set "num1=3.5"
  set "num2=2.1"

  :: Calcular com PowerShell
  for /f %%i in ('powershell -command "Write-Output ([math]::Round(%num1% + %num2%, 2))"') do set "resultado=%%i"
  
  echo Resultado da soma: %resultado%
  ```

  - **Explicação**:
    - Usa PowerShell para calcular a soma de números flutuantes e arredondar para 2 casas decimais.

## Resumo dos Comandos Numéricos
1. **Declaração e Atribuição**: `set /a variavel=valor`
2. **Operações Matemáticas**:
   - Adição: `set /a resultado=valor1 + valor2`
   - Subtração: `set /a resultado=valor1 - valor2`
   - Multiplicação: `set /a resultado=valor1 * valor2`
   - Divisão: `set /a resultado=valor1 / valor2`
   - Módulo: `set /a resultado=valor1 %% valor2`
3. **Incremento/Decremento**:
   - Incrementar: `set /a variavel+=1`
   - Decrementar: `set /a variavel-=1`
4. **Loops**:
   - Usar `set /a` dentro de loops para manipular variáveis numéricas.
5. **Números Flutuantes**:
   - Use PowerShell ou outras ferramentas externas para manipular números flutuantes.

# COMANDOS UTILIZADOS
Vou criar um exemplo de script Batch que utiliza os comandos `set`, `echo`, `color`, `mode`, `title`, `cls`, e `pause` para demonstrar variáveis numéricas e suas operações. O script incluirá operações matemáticas básicas e interação com o usuário.

```bat
@echo off
:: Desativa a exibição dos comandos na tela para uma execução mais limpa.

:: 1. Definir o título da janela do prompt
title Exemplo de Operações Numéricas

:: 2. Definir o modo da janela do prompt (80 colunas e 25 linhas)
mode con: cols=80 lines=25

:: 3. Alterar a cor do texto e fundo
color 0F
:: 0 = Preto (cor de fundo)
:: F = Branco (cor do texto)

:: 4. Limpar a tela
cls

:: 5. Exibir uma mensagem inicial
echo Calculando operações matemáticas com variáveis numéricas...

:: 6. Definir variáveis numéricas
set /a num1=15
set /a num2=7

:: 7. Realizar operações matemáticas
set /a soma=%num1% + %num2%
set /a subtracao=%num1% - %num2%
set /a multiplicacao=%num1% * %num2%
set /a divisao=%num1% / %num2%
set /a modulo=%num1% %% %num2%

:: 8. Exibir os resultados das operações
echo Soma: %soma%
echo Subtração: %subtracao%
echo Multiplicação: %multiplicacao%
echo Divisão: %divisao%
echo Módulo: %modulo%

:: 9. Solicitar ao usuário para pressionar uma tecla para continuar
pause

:: 10. Alterar a cor do texto e fundo novamente
color 1E
:: 1 = Azul (cor de fundo)
:: E = Amarelo (cor do texto)

:: 11. Limpar a tela
cls

:: 12. Exibir uma mensagem final
echo O script foi concluído.
pause
```

## Explicação do Código
1. **`@echo off`**:
   - Desativa a exibição dos comandos no prompt de comando para uma execução mais limpa.

2. **`title`**:
   - Define o título da janela do prompt de comando.
   - Exemplo: `title Exemplo de Operações Numéricas`.

3. **`mode`**:
   - Ajusta o modo da janela do prompt, como o número de colunas e linhas.
   - Exemplo: `mode con: cols=80 lines=25`.

4. **`color`**:
   - Altera a cor do texto e do fundo da janela do prompt de comando.
   - `color 0F` define o fundo como preto e o texto como branco.
   - `color 1E` define o fundo como azul e o texto como amarelo.

5. **`cls`**:
   - Limpa a tela do prompt de comando.

6. **`echo`**:
   - Exibe mensagens e resultados na tela.

7. **`set /a`**:
   - Define variáveis numéricas e realiza operações matemáticas.
   - Exemplo: `set /a num1=15` define a variável `num1` com o valor `15`.
   - As operações são realizadas e armazenadas em variáveis como `soma`, `subtracao`, `multiplicacao`, `divisao` e `modulo`.

8. **`pause`**:
   - Pausa a execução do script e exibe uma mensagem para pressionar qualquer tecla para continuar. Isso permite ao usuário ver as mensagens antes que a janela do prompt se feche.

