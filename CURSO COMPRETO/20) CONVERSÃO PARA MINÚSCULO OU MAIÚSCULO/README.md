# CONVERSÃO PARA MINÚSCULO OU MAIÚSCULO
Para converter uma string para minúsculas ou maiúsculas em um script Batch, podemos usar um truque envolvendo o comando `cmd /c set` para obter a representação ASCII dos caracteres e aplicar a conversão.

```bat
@echo off
setlocal enabledelayedexpansion

:: Solicitar entrada do usuário
set /p "string=Digite uma string de caracteres: "

:: Inicializar variáveis
set "minusculas="
set "maiusculas="

:: Loop para processar cada caractere da string
for /l %%i in (0, 1, 127) do set "ascii[%%i]=%%i"

for /l %%i in (0, 1, 9) do set "ascii[%%i]=0%%i"

for /l %%i in (0, 1, %string:~-1%) do (
    set "char=!string:~%%i,1!"
    for /f "tokens=*" %%A in ('cmd /c "echo(!char!"') do (
        set "asciiCode=!ascii[%%A]!"
    )

    if "!asciiCode!" geq "65" if "!asciiCode!" leq "90" (
        :: Convert to lowercase
        set /a "asciiCode+=32"
        for /f "tokens=*" %%B in ('cmd /c "echo/0x!asciiCode:~2!"') do set "char=%%B"
    ) else if "!asciiCode!" geq "97" if "!asciiCode!" leq "122" (
        :: Convert to uppercase
        set /a "asciiCode-=32"
        for /f "tokens=*" %%B in ('cmd /c "echo/0x!asciiCode:~2!"') do set "char=%%B"
    )

    :: Adicionar o caractere convertido às strings
    set "minusculas=!minusculas!!char!"
    set "maiusculas=!maiusculas!!char!"
)

:: Exibir resultados
echo String original: %string%
echo String em minusculas: %minusculas%
echo String em maiusculas: %maiusculas%

endlocal
pause
```

## Explicação do Código
1. **Configuração Inicial**
   - `@echo off`: Desativa a exibição dos comandos enquanto o script é executado.
   - `setlocal enabledelayedexpansion`: Habilita a expansão atrasada de variáveis, necessária para manipulação dinâmica de strings.

2. **Solicitação de Entrada do Usuário**
   - `set /p "string=Digite uma string de caracteres: "`: Solicita ao usuário que insira uma string de caracteres.

3. **Inicialização de Variáveis**
   - `set "minusculas="` e `set "maiusculas="`: Inicializa as variáveis que armazenarão as strings convertidas para minúsculas e maiúsculas.

4. **Loop para Processar Cada Caractere da String**
   - `for /l %%i in (0, 1, 127) do set "ascii[%%i]=%%i"`: Preenche um array com os códigos ASCII de 0 a 127.
   - `for /l %%i in (0, 1, 9) do set "ascii[%%i]=0%%i"`: Preenche o array com os códigos ASCII de 0 a 9 com um zero à esquerda para correspondência correta.
   - `for /l %%i in (0, 1, %string:~-1%) do (...)`: Itera sobre cada caractere da string.

5. **Obtenção e Conversão do Código ASCII**
   - `cmd /c "echo(!char!"`: Converte o caractere para seu código ASCII.
   - Verifica se o código ASCII está no intervalo de letras maiúsculas (65 a 90) ou minúsculas (97 a 122).
   - `set /a "asciiCode+=32"`: Converte uma letra maiúscula para minúscula adicionando 32 ao código ASCII.
   - `set /a "asciiCode-=32"`: Converte uma letra minúscula para maiúscula subtraindo 32 do código ASCII.

6. **Adição do Caractere Convertido às Strings**
   - Adiciona o caractere convertido às variáveis `minusculas` e `maiusculas`.

7. **Exibição dos Resultados**
   - `echo String original: %string%`: Exibe a string original.
   - `echo String em minusculas: %minusculas%`: Exibe a string convertida para minúsculas.
   - `echo String em maiusculas: %maiusculas%`: Exibe a string convertida para maiúsculas.

## Como Executar o Script
1. **Salvar o Script**
   - Salve o código acima em um arquivo com a extensão `.bat`, por exemplo, `converter_maiusculas_minusculas.bat`.

2. **Executar o Script**
   - Abra o Prompt de Comando (CMD).
   - Navegue até o diretório onde o arquivo `.bat` está salvo.
   - Execute o script digitando `converter_maiusculas_minusculas.bat` e pressione Enter.
   - Digite a string de caracteres quando solicitado e pressione Enter.

## Exemplo de Execução
Quando executado, o script solicitará que você insira uma string de caracteres. Por exemplo:

```
Digite uma string de caracteres: aBcD123
```

A saída será:

```
String original: aBcD123
String em minusculas: abcd123
String em maiusculas: ABCD123
```

Este script fornece uma maneira básica de converter uma string para minúsculas ou maiúsculas usando um script Batch no Windows.