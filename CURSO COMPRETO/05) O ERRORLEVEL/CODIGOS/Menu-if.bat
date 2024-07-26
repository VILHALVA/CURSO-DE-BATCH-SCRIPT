@Echo off
Mode Con: lines=23 Cols=61
title Menu Batch - Usando IF

:i
cls
Echo.
echo  ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo  บ                                                         บ
echo  บ Curso Batch Script por Bryann Henrique            Ûฒฑฐ  บ
echo  บ                                                         บ
echo  ฬอออออออออออออออออออออออออออออออออออออออออออออออออออออออออน
echo  บ                                                         บ
echo  บ Para iniciar um programa, digite seu numero:            บ
echo  ฬอออออออออออออออออออออออออออออออออออออออออออออออออออออออออน
echo  บ                                                         บ
echo  บ ษอออออออออออออออป ษอออออออออออออออป ษออออออออออออออออป  บ
echo  บ ฬอออออออออออออออน ฬอออออออออออออออน ฬออออออออออออออออน  บ
echo  บ บ1: Calculadora บ บ2: G. Tarefas  บ บ3: B. de notas  บ  บ
echo  บ ศอออออออออออออออผ ศอออออออออออออออผ ศออออออออออออออออผ  บ
echo  บ ษอออออออออออออออป ษอออออออออออออออป ษออออออออออออออออป  บ
echo  บ ฬอออออออออออออออน ฬอออออออออออออออน ฬออออออออออออออออน  บ
echo  บ บ4: W. Update   บ บ5: Paint       บ บ6: I. Explorer  บ  บ
echo  บ ศอออออออออออออออผ ศอออออออออออออออผ ศออออออออออออออออผ  บ
echo  บ                                                         บ
echo  ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
echo.
set /p "esc=ฤDigite> "

:dec
:: Bloco de decisใo
if "%esc%" == "1" (goto calc)
if "%esc%" == "2" (goto tare)
if "%esc%" == "3" (goto nota)
if "%esc%" == "4" (goto upda)
if "%esc%" == "5" (goto pain)
if "%esc%" == "6" (goto expl)

:: Tratamento de erro
if "%esc%" lss "1" (beep 1 & goto i)
if "%esc%" gtr "6" (beep 1 & goto i)

:calc
start calc.exe
goto i
:tare
start taskmgr.exe
goto i
:nota
start notepad.exe
goto i
:upda
start wuapp.exe
goto i
:pain
start mspaint.exe
goto i
:expl
start iexplore.exe
goto i