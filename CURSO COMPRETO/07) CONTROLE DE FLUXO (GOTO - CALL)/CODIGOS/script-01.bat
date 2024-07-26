@echo off
     
:inicio
set /p "nome=Digite seu nome> "
if /i "%nome%" == "Bryann" (goto final) else (
                                              echo Nome invalido.
                                              pause>nul
                                              cls 
                                              goto inicio

                                              )

:final
echo Ola, Bryann!   
pause>nul 