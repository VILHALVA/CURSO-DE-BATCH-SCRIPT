@echo off
mode con: lines=8 cols=30
color 02

:interface
cls  
echo.
echo 1) Calculadora
echo 2) Bloco de notas
echo 3) Sair
echo.

choice /c "123" /n /m "Digite a opi‡Æo: "
goto %errorlevel%

:1
start calc.exe
goto interface
:2
start notepad.exe
goto interface
:3
msg /w * "O script sera encerrado!"
exit