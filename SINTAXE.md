# SINTAXE:
## 0) FUNDAMENTOS:
Batch script é uma linguagem de script simples para automação de tarefas no Windows. Os arquivos batch são salvos com a extensão `.bat` e executados pelo interpretador de comandos do Windows (CMD.exe).

```bat
@echo off
echo Olá, Mundo!
pause
```
- `@echo off`: Desativa a exibição dos comandos na tela.
- `echo Olá, Mundo!`: Exibe "Olá, Mundo!" no console.
- `pause`: Pausa a execução do script e aguarda o usuário pressionar uma tecla.

## 1) VARIÁVEIS SIMPLES:
Em batch script, variáveis são criadas e acessadas usando o símbolo `%`.

```bat
@echo off
set nome=João
echo Olá, %nome%!
pause
```
- `set nome=João`: Define uma variável chamada `nome` com o valor "João".
- `echo Olá, %nome%!`: Exibe "Olá, João!" no console.

## 2) ESTRUTURA CONDICIONAL:
### ESTRUTURA IF-ELSE:
A estrutura `if` é usada para executar comandos com base em uma condição.

### Exemplo:
```bat
@echo off
set /p idade=Digite sua idade: 
if %idade% GEQ 18 (
    echo Você é maior de idade.
) else (
    echo Você é menor de idade.
)
pause
```
- `set /p idade=Digite sua idade:`: Solicita ao usuário que insira sua idade.
- `if %idade% GEQ 18`: Verifica se a idade é maior ou igual a 18.
- `else`: Bloco executado se a condição `if` não for atendida.

### ESTRUTURA IF-ELSE, ELSE IF:
Para múltiplas condições, use `else if` ou estruturas `if` aninhadas.

```bat
@echo off
set /p nota=Digite sua nota: 
if %nota% GEQ 90 (
    echo Nota A
) else if %nota% GEQ 80 (
    echo Nota B
) else if %nota% GEQ 70 (
    echo Nota C
) else (
    echo Nota D ou F
)
pause
```
- `else if %nota% GEQ 80`: Verifica a próxima condição.

### ESTRUTURA SWITCH:
Batch script não tem uma estrutura `switch` nativa, mas você pode usar `goto` para simular uma.

```bat
@echo off
set /p opcao=Escolha uma opção (1-3): 
goto opcao%opcao%

:opcao1
echo Você escolheu a opção 1
goto fim

:opcao2
echo Você escolheu a opção 2
goto fim

:opcao3
echo Você escolheu a opção 3
goto fim

:fim
pause
```
- `goto opcao%opcao%`: Redireciona o fluxo do script para o rótulo correspondente.

## 3) ESTRUTURA DE REPETIÇÃO:
### ESTRUTURA FOR:
O `for` é usado para iterar sobre uma lista de itens.

```bat
@echo off
for %%i in (1 2 3 4 5) do (
    echo Número %%i
)
pause
```
- `for %%i in (1 2 3 4 5)`: Itera sobre os números de 1 a 5.
- `do ( echo Número %%i )`: Executa o comando `echo` para cada iteração.

### ESTRUTURA WHILE:
Batch script não tem uma estrutura `while` nativa, mas você pode usar `goto` para criar um loop.

```bat
@echo off
set /a contador=0

:loop
if %contador% GEQ 5 goto fim
echo Contador: %contador%
set /a contador=%contador%+1
goto loop

:fim
pause
```
- `:loop` e `goto loop`: Criam um loop enquanto a condição `if` não for atendida.

### ESTRUTURA DO-WHILE:
Não há uma estrutura `do-while` nativa, mas você pode simular uma.

```bat
@echo off
set /a contador=0

:loop
echo Contador: %contador%
set /a contador=%contador%+1
if %contador% LEQ 5 goto loop

pause
```
- Simula um `do-while` executando o bloco antes da verificação da condição.

## 4) VARIÁVEIS COMPOSTAS:
Batch script não suporta variáveis compostas (arrays) diretamente, mas você pode usar variáveis numeradas ou delimitadores.

```bat
@echo off
set frutas=maça,banana,laranja
for %%f in (%frutas%) do (
    echo %%f
)
pause
```
- Usa delimitadores para simular um array.

## 5) FUNÇÕES:
Batch script não tem suporte a funções diretamente, mas você pode usar rótulos (`:`) para criar sub-rotinas.

```bat
@echo off
call :diz_ola João
call :diz_ola Maria
goto fim

:diz_ola
echo Olá, %1!
goto :eof

:fim
pause
```
- `call :diz_ola João`: Chama a sub-rotina `diz_ola` com o argumento "João".
- `goto :eof`: Retorna do rótulo.

## 6) CLASS POO:
Batch script não suporta programação orientada a objetos (POO). Para funcionalidades avançadas como POO, recomenda-se usar linguagens como PowerShell ou Python.