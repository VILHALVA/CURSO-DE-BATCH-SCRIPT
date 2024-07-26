@echo off

echo. & echo Carregando lista de atualizacoes...
wmic qfe get hotfixid | find /i "kb3035583" & cls

if %errorlevel% == 0 (
	choice /c SN /n /m "A msg de atualizacao do Windows 10 esta no seu PC. Deseja desinstalar [S,N]?"
	if errorlevel 2 (exit /b)
	
) else (
	cls & echo.
	echo A atualizacao do Windows 10 nao foi encontrada neste computador!
	pause >nul
	exit /b
)

if %errorlevel% == 1 (
	taskkill /f /t /im "GWX.exe"
	wusa /uninstall /kb:3035583
	
	msg /w %username% "Para que o problema nao retorne, leia as instrucoes na tela do prompt!"
	cls & echo.
	echo Para que a atualizacao nao seja instalada novamente, va em:
	echo Painel de Controle ^> Windows Update ^> Atualizacoes Importantes Disponiveis.
	echo.
	echo Em seguida, coloque o Win Update para buscar atualizações e quando finalizada,
	echo na lista que aparece procure a atualização "kb3035583", click com o botão
	echo direito sobre ela e seleciona "OCULTAR".
	pause>nul
)