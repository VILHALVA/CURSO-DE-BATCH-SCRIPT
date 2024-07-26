# MONITOR DE RAM EM TEMPO REAL
Para criar um monitor de RAM em tempo real usando um script Batch no Windows, você pode utilizar o comando `wmic` para coletar informações sobre a memória e exibi-las em um loop contínuo. Aqui está um exemplo de como criar um script que monitora o uso da RAM em tempo real:

```bat
@echo off
setlocal enabledelayedexpansion

:: Configuração inicial
set "interval=5"
set "title=Monitor de RAM em Tempo Real"

:: Configurar o título da janela do prompt de comando
title %title%

:: Loop para monitorar o uso de RAM
:loop
cls
echo %title%
echo.

:: Coletar informações de uso de RAM
for /f "tokens=2 delims==" %%A in ('wmic OS get FreePhysicalMemory /value') do set "freeMem=%%A"
for /f "tokens=2 delims==" %%A in ('wmic OS get TotalVisibleMemorySize /value') do set "totalMem=%%A"

:: Calcular o uso de RAM
set /a "usedMem=totalMem-freeMem"

:: Converter para MB
set /a "totalMemMB=totalMem/1024"
set /a "usedMemMB=usedMem/1024"
set /a "freeMemMB=freeMem/1024"

:: Exibir informações
echo Memória Total: %totalMemMB% MB
echo Memória Usada: %usedMemMB% MB
echo Memória Livre: %freeMemMB% MB

:: Aguardar o intervalo configurado
timeout /t %interval% >nul

goto loop
```

## Explicação do Código
1. **Configuração Inicial**
   - `@echo off`: Desativa a exibição dos comandos enquanto o script é executado.
   - `setlocal enabledelayedexpansion`: Habilita a expansão atrasada de variáveis, necessária para manipulação dinâmica de strings.

2. **Configuração do Intervalo e Título**
   - `set "interval=5"`: Define o intervalo entre as atualizações em segundos.
   - `set "title=Monitor de RAM em Tempo Real"`: Define o título da janela do Prompt de Comando.

3. **Configuração do Título da Janela**
   - `title %title%`: Altera o título da janela do Prompt de Comando para o valor definido.

4. **Loop de Monitoramento**
   - `:loop` e `goto loop`: Cria um loop contínuo para atualizar e exibir as informações de RAM.
   - `cls`: Limpa a tela a cada iteração do loop.

5. **Coleta de Informações de RAM**
   - `for /f "tokens=2 delims==" %%A in ('wmic OS get FreePhysicalMemory /value') do set "freeMem=%%A"`: Obtém a memória física livre em kilobytes.
   - `for /f "tokens=2 delims==" %%A in ('wmic OS get TotalVisibleMemorySize /value') do set "totalMem=%%A"`: Obtém a memória total visível em kilobytes.

6. **Cálculo e Conversão**
   - `set /a "usedMem=totalMem-freeMem"`: Calcula a memória usada.
   - `set /a "totalMemMB=totalMem/1024"`: Converte a memória total para megabytes.
   - `set /a "usedMemMB=usedMem/1024"`: Converte a memória usada para megabytes.
   - `set /a "freeMemMB=freeMem/1024"`: Converte a memória livre para megabytes.

7. **Exibição das Informações**
   - `echo Memória Total: %totalMemMB% MB`: Exibe a memória total em megabytes.
   - `echo Memória Usada: %usedMemMB% MB`: Exibe a memória usada em megabytes.
   - `echo Memória Livre: %freeMemMB% MB`: Exibe a memória livre em megabytes.

8. **Aguardar e Atualizar**
   - `timeout /t %interval% >nul`: Aguarda o intervalo definido antes de atualizar a exibição.

