@echo off
setlocal
	setlocal enableextensions
		echo %date%
		echo %time%
		echo %random%
		echo %cd%
	endlocal

	setlocal disableextensions
		echo %date%
		echo %time%
		echo %random%
		echo %cd%
	endlocal
endlocal

pause>nul
