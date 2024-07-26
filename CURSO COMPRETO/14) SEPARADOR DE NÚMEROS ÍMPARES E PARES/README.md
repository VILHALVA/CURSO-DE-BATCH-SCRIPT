# SEPARADOR DE NÚMEROS ÍMPARES E PARES
Para separar números ímpares e pares em um script Batch, você pode usar um loop para iterar sobre uma lista de números e, em seguida, verificar se cada número é ímpar ou par. Abaixo está um exemplo de script Batch que faz isso:

## Script Batch para Separar Númerros Ímpares e Pares
```bat
@echo off
setlocal enabledelayedexpansion

:: Inicializar variáveis
set "pares="
set "impares="

:: Solicitar a entrada do usuário
set /p "numeros=Digite uma lista de números separados por espaço: "

:: Processar cada número na lista
for %%n in (%numeros%) do (
    :: Verificar se o número é par ou ímpar
    set /a "resto=%%n %% 2"
    if !resto! == 0 (
        set "pares=!pares! %%n"
    ) else (
        set "impares=!impares! %%n"
    )
)

:: Exibir os resultados
echo Números pares: %pares%
echo Números ímpares: %impares%

endlocal
pause
```

## Explicação do Código
1. **Configuração Inicial**
   - `@echo off`: Desativa a exibição dos comandos enquanto o script é executado.
   - `setlocal enabledelayedexpansion`: Habilita a expansão atrasada de variáveis, permitindo o uso de variáveis dentro de loops.

2. **Inicialização de Variáveis**
   - `set "pares="` e `set "impares="`: Inicializa as variáveis que armazenarão os números pares e ímpares.

3. **Entrada do Usuário**
   - `set /p "numeros=Digite uma lista de números separados por espaço: "`: Solicita ao usuário que insira uma lista de números separados por espaço.

4. **Processamento dos Números**
   - `for %%n in (%numeros%) do (...)`: Itera sobre cada número fornecido pelo usuário.
   - `set /a "resto=%%n %% 2"`: Calcula o resto da divisão do número por 2 para determinar se é par ou ímpar.
   - `if !resto! == 0`: Verifica se o resto é 0, indicando que o número é par.
     - Se o número for par, ele é adicionado à variável `pares`.
     - Se o número for ímpar, ele é adicionado à variável `impares`.

5. **Exibição dos Resultados**
   - `echo Números pares: %pares%` e `echo Números ímpares: %impares%`: Exibe os números separados em pares e ímpares.

6. **Finalização**
   - `endlocal`: Reverte as variáveis ao estado anterior ao `setlocal`.
   - `pause`: Mantém a janela do prompt aberta para exibir os resultados.

## Como Executar o Script
1. **Salvar o Script**
   - Salve o código acima em um arquivo com a extensão `.bat`, por exemplo, `separar_pares_impares.bat`.

2. **Executar o Script**
   - Abra o Prompt de Comando (CMD).
   - Navegue até o diretório onde o arquivo `.bat` está salvo.
   - Execute o script digitando `separar_pares_impares.bat` e pressione Enter.
   - Digite a lista de números separados por espaço quando solicitado.

## Exemplo de Execução
Quando executado, o script solicitará que você insira uma lista de números. Por exemplo:

```
Digite uma lista de números separados por espaço: 1 2 3 4 5 6 7 8 9 10
```

A saída será:

```
Números pares: 2 4 6 8 10
Números ímpares: 1 3 5 7 9
```

Este script fornece uma maneira básica de separar números pares e ímpares usando o Prompt de Comando do Windows.