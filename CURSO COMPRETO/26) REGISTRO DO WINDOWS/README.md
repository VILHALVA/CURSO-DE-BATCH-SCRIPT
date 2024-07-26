# REGISTRO DO WINDOWS
O Registro do Windows (Windows Registry) é um banco de dados que armazena configurações e opções do sistema operacional, aplicativos e hardware. Ele é essencial para o funcionamento do Windows, permitindo que o sistema e os aplicativos leiam e gravem suas configurações.

Aqui está um guia básico sobre como manipular o Registro do Windows usando scripts Batch e ferramentas relacionadas, como o `reg.exe` e o PowerShell.

O comando `reg.exe` permite que você faça várias operações no Registro do Windows a partir da linha de comando. Os comandos básicos incluem:

1. **Exportar o Registro**
   - Exporta uma chave do Registro para um arquivo `.reg`.
   ```bat
   reg export "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion" "C:\backup_registro.reg"
   ```

2. **Importar o Registro**
   - Importa uma chave do Registro de um arquivo `.reg`.
   ```bat
   reg import "C:\backup_registro.reg"
   ```

3. **Adicionar uma Chave**
   - Adiciona uma nova chave ou valor ao Registro.
   ```bat
   reg add "HKEY_LOCAL_MACHINE\Software\MeuSoftware" /v "MinhaChave" /t REG_SZ /d "MeuValor"
   ```
   - `/v` especifica o nome do valor.
   - `/t` especifica o tipo de dado (por exemplo, `REG_SZ` para uma string).
   - `/d` especifica o dado a ser armazenado.

4. **Excluir uma Chave**
   - Exclui uma chave ou valor do Registro.
   ```bat
   reg delete "HKEY_LOCAL_MACHINE\Software\MeuSoftware" /v "MinhaChave" /f
   ```
   - `/f` força a exclusão sem confirmação.

5. **Mostrar o Conteúdo de uma Chave**
   - Exibe o conteúdo de uma chave do Registro.
   ```bat
   reg query "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion"
   ```

