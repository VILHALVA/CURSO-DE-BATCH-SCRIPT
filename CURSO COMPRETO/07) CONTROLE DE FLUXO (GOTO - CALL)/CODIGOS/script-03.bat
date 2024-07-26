@echo off
set nome=Bryann
set idade=19
set pais=Brasil
set ling=Batch

echo %nome%
echo %idade%
echo %pais%
echo %ling%
echo %nome% %idade% %pais% %ling%
echo.
pause>nul

call :var %nome% %idade% %pais% %ling% "Bryann Henrique"
:var
echo %1
echo %2
echo %3
echo %4
echo %~5
echo %*
pause>nul