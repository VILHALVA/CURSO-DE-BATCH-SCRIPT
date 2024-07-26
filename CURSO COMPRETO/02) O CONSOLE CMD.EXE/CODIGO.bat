@echo off
:: Limpa a tela
cls

:: Exibe uma mensagem de boas-vindas
echo Bem-vindo ao script de exemplo!

:: Mostra o número de série e rótulo do volume do disco C
echo.
echo Informações do volume do disco C:
vol C:

:: Exibe a versão do sistema operacional
echo.
echo Versão do Windows:
ver

:: Copia a lista de arquivos e diretórios para a área de transferência
echo.
echo Copiando a lista de arquivos e diretórios para a área de transferência...
dir | clip
echo Lista copiada para a área de transferência!

:: Exibe a data atual e solicita uma nova data (pressione Enter para manter a atual)
echo.
echo Data atual:
date /t
set /p nova_data=Digite uma nova data (pressione Enter para manter a atual): 
date %nova_data%

:: Exibe a hora atual e solicita uma nova hora (pressione Enter para manter a atual)
echo.
echo Hora atual:
time /t
set /p nova_hora=Digite uma nova hora (pressione Enter para manter a atual): 
time %nova_hora%

:: Abre o Bloco de Notas
echo.
echo Abrindo o Bloco de Notas...
start notepad

:: Abre um site no navegador padrão
echo.
echo Abrindo Google no navegador padrão...
start https://www.google.com

:: Exibe a versão do Windows em uma janela de diálogo
echo.
echo Exibindo informações sobre a versão do Windows...
winver

:: Finaliza o script
echo.
echo O script foi concluído.
pause
exit
