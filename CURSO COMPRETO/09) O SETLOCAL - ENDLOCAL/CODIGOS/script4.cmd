@echo off

setlocal enabledelayedexpansion
	set lista=
	for %%a in (*) do (set lista=!lista! %%a;)

	echo %lista%	
endlocal

pause>nul