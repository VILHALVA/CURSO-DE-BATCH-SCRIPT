@Echo off
Mode Con: lines=23 Cols=61
title Menu Batch - Usando CHOICE

:i
cls
Echo.
echo  浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
echo  �                                                         �
echo  � Curso Batch Script por Bryann Henrique            朮碓  �
echo  �                                                         �
echo  麺様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
echo  �                                                         �
echo  � Para iniciar um programa, digite seu numero:            �
echo  麺様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
echo  �                                                         �
echo  � 浜様様様様様様様� 浜様様様様様様様� 浜様様様様様様様融  �
echo  � 麺様様様様様様様� 麺様様様様様様様� 麺様様様様様様様郵  �
echo  � �1: Calculadora � �2: G. Tarefas  � �3: B. de notas  �  �
echo  � 藩様様様様様様様� 藩様様様様様様様� 藩様様様様様様様夕  �
echo  � 浜様様様様様様様� 浜様様様様様様様� 浜様様様様様様様融  �
echo  � 麺様様様様様様様� 麺様様様様様様様� 麺様様様様様様様郵  �
echo  � �4: W. Update   � �5: Paint       � �6: I. Explorer  �  �
echo  � 藩様様様様様様様� 藩様様様様様様様� 藩様様様様様様様夕  �
echo  �                                                         �
echo  藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
echo.
choice /c "123456" /n /m "�Digite> "

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