@echo off

setlocal
	for /l %%a in (1,1,%1) do (call :f %%a)

	echo Par: %par:~2%
	echo Imp: %imp:~2%

	:f
	set /a x=%1 %% 2
	if %x% == 0 (set par=%par%, %1) else (set imp=%imp%, %1)
endlocal