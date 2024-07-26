@echo off
if exist config.bat (call config.bat) else (goto cria)
color %cor_fundo%%cor_letra%
title %titulo%

Echo Estee o resultado final!
pause>nul
:cria
echo PAINEL DE PROPRIEDADES:
echo.
set /p "cor_letra=Digite uma cor de letra de 1-9, A-F> "
echo.
set /p "cor_fundo=Digite uma cor de fundo de 1-9, A-F> "
echo.
set /p "titulo=Digite o titulo da janela> "

msg /w * "Abra esse script novamente para ver o resultado!" 
(
echo set cor_letra=%cor_letra%
echo set cor_fundo=%cor_fundo%
echo set titulo=%titulo%
)>config.bat