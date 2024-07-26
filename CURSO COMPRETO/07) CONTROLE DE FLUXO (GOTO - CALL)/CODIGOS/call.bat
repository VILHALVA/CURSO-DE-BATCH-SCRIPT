@Echo off
:i
set /a x+=1
echo %x%>call.txt

call :i