# CONTROLE DE FLUXO (GOTO - CALL)
No ambiente de scripts Batch do Windows, o controle de fluxo pode ser gerenciado usando os comandos `GOTO` e `CALL`. Esses comandos ajudam a direcionar a execução do script para diferentes seções ou sub-rotinas, permitindo uma maior modularidade e controle sobre o fluxo do programa.

## Comando `GOTO`
O comando `GOTO` é utilizado para desviar a execução para um rótulo específico dentro do script. Rótulos são identificadores precedidos por dois pontos (`:`) e servem como pontos de referência para onde o fluxo do script deve ser direcionado.

### Sintaxe Básica
```bat
goto :label
```

### Exemplo de Uso
```bat
@echo off
echo Início do script.
goto :fim

:continua
echo Isto não será exibido, pois o script pula para :fim.
goto :eof

:fim
echo Fim do script.
pause
```

- **Explicação**:
  - O comando `goto :fim` desvia a execução para o rótulo `:fim`.
  - O bloco de código após o rótulo `:continua` não será executado.
  - `goto :eof` é usado para retornar ao final do script (EOF = End Of File).

## Comando `CALL`
O comando `CALL` é utilizado para chamar outros scripts Batch ou sub-rotinas dentro do mesmo script. Isso permite que você modularize seu código e reutilize scripts e funções.

### Sintaxe Básica
```bat
call script.bat [argumentos]
```

### Exemplo de Uso
```bat
@echo off
echo Chamando o sub-rotina...
call :subrotina "Olá, mundo!"
echo Retornando ao script principal.
pause
goto :eof

:subrotina
echo Mensagem da sub-rotina: %1
goto :eof
```

- **Explicação**:
  - `call :subrotina "Olá, mundo!"` chama a sub-rotina `:subrotina` e passa `"Olá, mundo!"` como argumento.
  - `%1` na sub-rotina representa o primeiro argumento passado para `call`.
  - `goto :eof` retorna ao final do script após a execução da sub-rotina.

## Controle de Fluxo com `GOTO` e `CALL`
Aqui está um exemplo mais complexo que demonstra como usar `GOTO` e `CALL` juntos para controlar o fluxo do script:

```bat
@echo off
:: Definir título da janela
title Controle de Fluxo com GOTO e CALL

:: Início do script principal
echo Início do script principal
goto :menu

:menu
echo 1. Mostrar data
echo 2. Mostrar hora
echo 3. Sair
set /p escolha=Escolha uma opção:

if "%escolha%"=="1" (
    call :mostrar_data
    goto :menu
) else if "%escolha%"=="2" (
    call :mostrar_hora
    goto :menu
) else if "%escolha%"=="3" (
    goto :sair
) else (
    echo Opção inválida.
    goto :menu
)

:mostrar_data
echo Data atual:
date /t
goto :eof

:mostrar_hora
echo Hora atual:
time /t
goto :eof

:sair
echo Saindo do script...
pause
```

- **Explicação**:
  - O script exibe um menu com três opções: mostrar a data, mostrar a hora ou sair.
  - Dependendo da escolha do usuário, o script chama uma sub-rotina (`:mostrar_data` ou `:mostrar_hora`) usando `call` e então retorna ao menu.
  - Se a opção for sair, o fluxo é desviado para o rótulo `:sair`, que encerra o script.

## Considerações Adicionais
- **`goto :eof`**: Utilizado para retornar ao final do script ou ao ponto de onde foi chamado. É uma prática comum para retornar ao fluxo principal após a execução de uma sub-rotina.

- **Argumentos em Sub-Rotinas**: Ao usar `call`, você pode passar argumentos para sub-rotinas e acessar esses argumentos usando `%1`, `%2`, etc.

- **Modularidade e Reutilização**: Utilizar `CALL` para scripts externos ou sub-rotinas permite modularizar o código e melhorar a reutilização e manutenção do código Batch.

