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
