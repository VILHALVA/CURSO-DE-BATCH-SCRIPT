# WMI
O **Windows Management Instrumentation (WMI)** é um framework da Microsoft para gerenciamento e monitoramento de recursos de hardware e software em sistemas operacionais Windows. Ele permite acessar informações do sistema e realizar operações de gerenciamento através de uma interface de script.

Abaixo estão alguns dos comandos e consultas WMI mais comuns que você pode usar a partir da linha de comando com `wmic` ou PowerShell.

## 1. **Comando `wmic`**
O `wmic` é uma ferramenta de linha de comando que fornece uma interface para WMI.

- **Exibir Informações do Sistema**

  ```bat
  wmic computersystem get name, manufacturer, model, systemtype
  ```

  Exibe informações sobre o nome do computador, fabricante, modelo e tipo de sistema.

- **Informações do Processador**

  ```bat
  wmic cpu get name, numberofcores, numberoflogicalprocessors, maxclockspeed
  ```

  Mostra o nome do processador, número de núcleos, processadores lógicos e a velocidade máxima do clock.

- **Informações da Memória**

  ```bat
  wmic memorychip get capacity, speed, manufacturer
  ```

  Exibe a capacidade, velocidade e fabricante dos módulos de memória.

- **Informações de Disco**

  ```bat
  wmic diskdrive get model, size, caption
  ```

  Mostra o modelo, tamanho e descrição dos discos rígidos.

- **Serviços em Execução**

  ```bat
  wmic service list brief
  ```

  Lista todos os serviços em execução com uma visão resumida.

- **Listar Processos**

  ```bat
  wmic process list brief
  ```

  Lista todos os processos em execução com uma visão resumida.

## 2. **Consultas WMI com PowerShell**
O PowerShell fornece um método mais robusto para trabalhar com WMI, utilizando o cmdlet `Get-WmiObject` ou `Get-CimInstance`.

- **Exibir Informações do Sistema**

  ```powershell
  Get-WmiObject Win32_ComputerSystem | Select-Object Name, Manufacturer, Model, SystemType
  ```

  Exibe informações sobre o nome do computador, fabricante, modelo e tipo de sistema.

- **Informações do Processador**

  ```powershell
  Get-WmiObject Win32_Processor | Select-Object Name, NumberOfCores, NumberOfLogicalProcessors, MaxClockSpeed
  ```

  Mostra o nome do processador, número de núcleos, processadores lógicos e a velocidade máxima do clock.

- **Informações da Memória**

  ```powershell
  Get-WmiObject Win32_PhysicalMemory | Select-Object Capacity, Speed, Manufacturer
  ```

  Exibe a capacidade, velocidade e fabricante dos módulos de memória.

- **Informações de Disco**

  ```powershell
  Get-WmiObject Win32_DiskDrive | Select-Object Model, Size, DeviceID
  ```

  Mostra o modelo, tamanho e ID do dispositivo dos discos rígidos.

- **Serviços em Execução**

  ```powershell
  Get-WmiObject Win32_Service | Select-Object Name, State, StartMode
  ```

  Lista todos os serviços em execução com o nome, estado e modo de início.

- **Listar Processos**

  ```powershell
  Get-WmiObject Win32_Process | Select-Object Name, ProcessId, @{Name="CPU";Expression={[math]::Round($_.WorkingSetSize / 1MB, 2)}}
  ```

  Lista todos os processos em execução com o nome, ID do processo e uso de memória em MB.

