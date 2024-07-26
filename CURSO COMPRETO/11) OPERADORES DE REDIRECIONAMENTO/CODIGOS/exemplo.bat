@Echo off
echo Curso de Batch Script>i.txt & rem Redirecionamento de saída

set /p var=<i.txt & rem Redirecionamento de entrada

echo %var% & rem Mandando a saída do echo o identificador 1

pause > nul
