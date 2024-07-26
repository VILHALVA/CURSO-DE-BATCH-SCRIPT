@echo off
setlocal

:: Exibir todas as associações de extensão
echo Listando todas as associações de extensões:
assoc
pause

:: Exibir a associação da extensão .txt
echo.
echo Associacao da extensao .txt:
assoc .txt
pause

:: Associar a extensão .xyz a um tipo fictício xyzfile
echo.
echo Associando a extensao .xyz ao tipo xyzfile:
assoc .xyz=xyzfile

:: Definir o comando para abrir o tipo xyzfile
echo.
echo Definindo o comando para o tipo xyzfile:
ftype xyzfile="C:\Caminho\Para\Programa.exe" "%%1"
pause

:: Exibir as associações atualizadas
echo.
echo Listando as associações atualizadas:
assoc
pause

:: Desassociar a extensão .xyz
echo.
echo Desassociando a extensao .xyz:
assoc .xyz=
pause

endlocal
