@echo off

setlocal enabledelayedexpansion

set var=antes
if %var% == antes (
		set var=depois
		if !var! == depois echo Se ler isso, o programa funcionou!
	) else (
		echo Se ler isso, o script nao funcionou!
	)
echo ^^!
endlocal

pause>nul