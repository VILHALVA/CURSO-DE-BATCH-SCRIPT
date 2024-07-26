tasklist /fi "imagename eq chrome.exe" | find "chrome.exe"

if %errorlevel% == 0 (msg /w * O chrome esta aberto!) else (msg /w * "Chrome nao esta aberto!")

exit