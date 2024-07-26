# RUNDLL32
O **`RUNDLL32`** é uma ferramenta do Windows que permite executar funções exportadas de bibliotecas de links dinâmicos (DLLs). Ele é especialmente útil para chamar funções específicas em arquivos DLL que não possuem uma interface gráfica direta, facilitando a execução de várias operações do sistema.

## Sintaxe Básica
A sintaxe básica do `RUNDLL32` é:

```bat
rundll32.exe [nome_da_dll],[nome_da_função] [argumentos]
```

- **`nome_da_dll`**: O nome do arquivo DLL que contém a função que você deseja executar.
- **`nome_da_função`**: O nome da função exportada na DLL que você deseja chamar.
- **`argumentos`**: Parâmetros opcionais que podem ser passados para a função.

## Exemplos de Uso do `RUNDLL32`
Aqui estão alguns exemplos práticos do uso de `RUNDLL32`:

1. **Abrir a Caixa de Diálogo de Propriedades do Sistema**

   ```bat
   rundll32.exe shell32.dll,Control_RunDLL sysdm.cpl
   ```

   Esse comando abre a caixa de diálogo de propriedades do sistema.

2. **Abrir a Caixa de Diálogo de Configurações de Impressora**

   ```bat
   rundll32.exe shell32.dll,Control_RunDLL printers
   ```

   Abre a caixa de diálogo para configurar impressoras e dispositivos.

3. **Abrir a Caixa de Diálogo de Gerenciamento de Disco**

   ```bat
   rundll32.exe shell32.dll,Control_RunDLL diskmgmt.msc
   ```

   Abre a ferramenta de gerenciamento de discos do Windows.

4. **Desinstalar um Programa**

   ```bat
   rundll32.exe shell32.dll,Control_RunDLL appwiz.cpl
   ```

   Abre a caixa de diálogo para adicionar ou remover programas.

5. **Abrir a Caixa de Diálogo de Firewall do Windows**

   ```bat
   rundll32.exe firewall.cpl
   ```

   Abre a caixa de diálogo de configurações do Firewall do Windows.

6. **Abrir a Ferramenta de Limpeza de Disco**

   ```bat
   rundll32.exe shell32.dll,Control_RunDLL cleanmgr
   ```

   Inicia a ferramenta de limpeza de disco do Windows.


# O QUE É?
É um executável genérico do Windows NT/2000/XP que serve para carregar DLLs em memória para torná-las utilizáveis por outros programas. O comando `rundll32` (rundll32 significa "Run a DLL as a 32-bit application").

## LISTA COM ALGUMAS UTILIDADES

- **Informação do Windows**

  ```cmd
  rundll32 shell32.dll,ShellAboutA Info-Box
  ```

- **Painel de Controle**

  ```cmd
  rundll32 shell32.dll,Control_RunDLL
  ```

- **Propriedades de Data/Hora**

  ```cmd
  rundll32 shell32.dll,Control_RunDLL timedate.cpl @0 (0,0..1)
  ```

- **Propriedades de Áudio**

  ```cmd
  rundll32 shell32.dll,Control_RunDLL mmsys.cpl,,0 (0,1,2,3)
  ```

- **Propriedades de Vídeo**

  ```cmd
  rundll32 shell32.dll,Control_RunDLL desk.cpl,,0 (0,1,2,3)
  ```

- **Opções Regionais de Idioma**

  ```cmd
  rundll32 shell32.dll,Control_RunDLL Intl.cpl @0 (0,0..2)
  ```

- **Mapeamento de Unidades**

  ```cmd
  rundll32 shell32.dll,SHHelpShortcuts_RunDLL Connect
  ```

- **Gerenciador de Dispositivos**

  ```cmd
  rundll32 devmgr.dll DeviceManager_Execute
  ```

- **Opções da Barra de Tarefas**

  ```cmd
  rundll32 shell32.dll,Options_RunDLL 1 (1,6)
  ```

- **Opções de Pasta: Geral**

  ```cmd
  rundll32 shell32.dll,Options_RunDLL 0 (0,2,7)
  ```

- **Opções do Menu Iniciar**

  ```cmd
  rundll32 shell32.dll,Options_RunDLL 3
  ```

- **Opções de Notificações do Windows**

  ```cmd
  rundll32 shell32.dll,Options_RunDLL 4 (4,5)
  ```

- **Senhas e Usuários Armazenados**

  ```cmd
  rundll32 keymgr.dll, KRShowKeyMgr
  ```

- **Assistente de Adição de Rede Local**

  ```cmd
  rundll32 shwebsvc.dll,AddNetPlaceRunDll
  ```

- **Localizar Usuários, Contatos e Grupos**

  ```cmd
  rundll32 dsquery,OpenQueryWindow
  ```

- **Bloquear a Tela**

  ```cmd
  rundll32 user32.dll,LockWorkStation
  ```

- **Suspender o PC**

  ```cmd
  rundll32 PowrProf.dll, SetSuspendState
  ```

- **Programas e Recursos**

  ```cmd
  rundll32 shell32.dll,Control_RunDLL appwiz.cpl @0 (0,0..3)
  ```

- **Propriedades do Mouse**

  ```cmd
  rundll32 shell32.dll,Control_RunDLL main.cpl @0 (0,1..4)
  ```

- **Propriedades do Teclado**

  ```cmd
  rundll32 shell32.dll,Control_RunDLL main.cpl @1 (0,0..1)
  ```

- **Conexões de Rede**

  ```cmd
  rundll32 shell32.dll,Control_RunDLL ncpa.cpl
  ```

- **Interface de Usuário da Impressora**

  ```cmd
  rundll32 Printui.dll,PrintUIEntry /?
  ```

- **Opções de Energia**

  ```cmd
  rundll32 shell32.dll,Control_RunDLL powercfg.cpl
  ```

- **Remover Hardware com Segurança**

  ```cmd
  rundll32 shell32.dll,Control_RunDLL HotPlug.dll
  ```

- **Propriedades do Sistema**

  ```cmd
  rundll32 shell32.dll,Control_RunDLL sysdm.cpl,,1
  ```

- **Contas de Usuário**

  ```cmd
  rundll32 shell32.dll,Control_RunDLL nusrmgr.cpl
  ```

- **Central de Segurança e Manutenção**

  ```cmd
  rundll32 shell32.dll,Control_RunDLL wscui.cpl
  ```

- **Pasta de Fontes Instaladas**

  ```cmd
  rundll32 shell32.dll,SHHelpShortcuts_RunDLL FontsFolder
  ```

- **Windows Firewall**

  ```cmd
  rundll32 shell32.dll,Control_RunDLL firewall.cpl
  ```

- **Configurar uma Rede WiFi**

  ```cmd
  rundll32 shell32.dll,Control_RunDLL NetSetup.cpl
  ```