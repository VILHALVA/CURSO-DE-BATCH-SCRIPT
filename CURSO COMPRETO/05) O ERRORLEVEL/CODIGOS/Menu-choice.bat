@Echo off
Mode Con: lines=23 Cols=61
title Menu Batch - Usando CHOICE

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
choice /c "123456" /n /m "ฤDigite> "

:dec
echo Resultado: %errorlevel%
pause >nul
goto %errorlevel%

:1
start calc.exe
goto i
:2
start taskmgr.exe
goto i
:3
start notepad.exe
goto i
:4
start wuapp.exe
goto i
:5
start mspaint.exe
goto i
:6
start iexplore.exe
goto i