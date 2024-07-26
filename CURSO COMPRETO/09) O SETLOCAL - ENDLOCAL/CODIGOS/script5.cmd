@echo off

setlocal enabledelayedexpansion
	set curso=Batch-Script
	for /l %%a in (0,1,11) do (echo !curso:~%%a,1!)
endlocal

pause>nul