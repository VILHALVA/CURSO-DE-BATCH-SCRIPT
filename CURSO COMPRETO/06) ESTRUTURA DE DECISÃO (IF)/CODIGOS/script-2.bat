@echo off

cd C:\Users\%username%\Desktop\python

if exist "C:\Windows\Temp\ood_stream.x64.x-none.dat" (Echo Existe!) else (echo Nao existe!)

pause