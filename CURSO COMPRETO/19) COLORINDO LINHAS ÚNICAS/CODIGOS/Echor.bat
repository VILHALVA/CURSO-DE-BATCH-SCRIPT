@echo off

if "%*"=="" goto :eof

call :cor %1 "%2 %3 %4 %5 %6 %7 %8 %9"
exit /b

:cor
>%2 set /p=.<&1
findstr /a:%1 "." %2 con
del %2
for /f "tokens=*" %%a in ('cmd /k prompt $h$h ^<^&1') do echo %%a
