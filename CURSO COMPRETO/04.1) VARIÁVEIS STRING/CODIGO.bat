@echo off
:: Desativa a exibição dos comandos para uma execução mais limpa.

:: 1. Definir o título da janela do prompt
title Exemplo de Comandos Batch

:: 2. Definir o modo da janela do prompt
mode con: cols=80 lines=25

:: 3. Alterar a cor do texto e fundo
color 0A
:: 0 = Preto (cor de fundo)
:: A = Verde (cor do texto)

:: 4. Limpar a tela
cls

:: 5. Exibir uma mensagem de boas-vindas
echo Bem-vindo ao exemplo de comandos Batch!

:: 6. Definir uma variável
set mensagem=Este é um script exemplo demonstrando vários comandos.

:: 7. Exibir o valor da variável
echo %mensagem%

:: 8. Exibir informações sobre a variável
echo Variável 'mensagem' definida como: %mensagem%

:: 9. Exibir uma mensagem interativa
echo Por favor, pressione qualquer tecla para continuar...
pause

:: 10. Alterar a cor do texto e fundo novamente
color 1F
:: 1 = Azul (cor de fundo)
:: F = Branco (cor do texto)

:: 11. Exibir uma mensagem informativa
echo A cor da janela foi alterada para azul com texto branco.

:: 12. Limpar a tela novamente
cls

:: 13. Exibir uma mensagem final
echo O script foi concluído.
pause
