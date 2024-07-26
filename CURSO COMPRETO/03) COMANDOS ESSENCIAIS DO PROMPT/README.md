# COMANDOS ESSENCIAIS DO PROMPT
Aqui estão alguns comandos essenciais do Prompt de Comando (CMD.EXE) do Windows que são úteis para diversas tarefas administrativas e de automação:

## 1. **`dir`**
- **Descrição**: Lista os arquivos e diretórios no diretório atual.
- **Uso**:
  ```cmd
  dir
  ```
- **Exemplo**:
  ```cmd
  dir C:\Users\SeuUsuario\Documents
  ```
  - Lista arquivos e pastas no diretório `Documents`.

## 2. **`cd`**
- **Descrição**: Muda o diretório atual.
- **Uso**:
  ```cmd
  cd [caminho]
  ```
- **Exemplo**:
  ```cmd
  cd C:\Windows\System32
  ```
  - Muda o diretório atual para `System32`.

## 3. **`mkdir`**
- **Descrição**: Cria um novo diretório.
- **Uso**:
  ```cmd
  mkdir [nome_do_diretório]
  ```
- **Exemplo**:
  ```cmd
  mkdir C:\Users\SeuUsuario\NovaPasta
  ```
  - Cria uma nova pasta chamada `NovaPasta` no diretório especificado.

## 4. **`rmdir`**
- **Descrição**: Remove um diretório vazio.
- **Uso**:
  ```cmd
  rmdir [nome_do_diretório]
  ```
- **Exemplo**:
  ```cmd
  rmdir C:\Users\SeuUsuario\NovaPasta
  ```
  - Remove a pasta `NovaPasta`, se estiver vazia.

## 5. **`del`**
- **Descrição**: Exclui um ou mais arquivos.
- **Uso**:
  ```cmd
  del [arquivo]
  ```
- **Exemplo**:
  ```cmd
  del C:\Users\SeuUsuario\arquivo.txt
  ```
  - Exclui o arquivo `arquivo.txt`.

## 6. **`copy`**
- **Descrição**: Copia arquivos de um local para outro.
- **Uso**:
  ```cmd
  copy [origem] [destino]
  ```
- **Exemplo**:
  ```cmd
  copy C:\Users\SeuUsuario\arquivo.txt D:\Backup
  ```
  - Copia `arquivo.txt` para o diretório `Backup` no disco D:.

## 7. **`move`**
- **Descrição**: Move arquivos de um local para outro.
- **Uso**:
  ```cmd
  move [origem] [destino]
  ```
- **Exemplo**:
  ```cmd
  move C:\Users\SeuUsuario\arquivo.txt D:\Backup
  ```
  - Move `arquivo.txt` para o diretório `Backup` no disco D:.

## 8. **`rename`**
- **Descrição**: Renomeia arquivos ou diretórios.
- **Uso**:
  ```cmd
  rename [nome_antigo] [nome_novo]
  ```
- **Exemplo**:
  ```cmd
  rename C:\Users\SeuUsuario\arquivo.txt novo_arquivo.txt
  ```
  - Renomeia `arquivo.txt` para `novo_arquivo.txt`.

## 9. **`type`**
- **Descrição**: Exibe o conteúdo de um arquivo de texto.
- **Uso**:
  ```cmd
  type [arquivo]
  ```
- **Exemplo**:
  ```cmd
  type C:\Users\SeuUsuario\arquivo.txt
  ```
  - Mostra o conteúdo de `arquivo.txt`.

## 10. **`find`**
- **Descrição**: Pesquisa por uma string em arquivos.
- **Uso**:
  ```cmd
  find "texto" [arquivo]
  ```
- **Exemplo**:
  ```cmd
  find "erro" C:\Logs\logfile.txt
  ```
  - Pesquisa por "erro" no arquivo `logfile.txt`.

## 11. **`tasklist`**
- **Descrição**: Exibe uma lista de processos em execução.
- **Uso**:
  ```cmd
  tasklist
  ```
- **Exemplo**:
  ```cmd
  tasklist
  ```
  - Mostra todos os processos em execução.

## 12. **`taskkill`**
- **Descrição**: Finaliza um processo.
- **Uso**:
  ```cmd
  taskkill /PID [id_do_processo]
  ```
- **Exemplo**:
  ```cmd
  taskkill /PID 1234
  ```
  - Finaliza o processo com ID 1234.

## 13. **`systeminfo`**
- **Descrição**: Exibe informações detalhadas sobre o sistema.
- **Uso**:
  ```cmd
  systeminfo
  ```
- **Exemplo**:
  ```cmd
  systeminfo
  ```
  - Mostra informações detalhadas sobre o sistema, como versão do Windows e memória instalada.

## 14. **`chkdsk`**
- **Descrição**: Verifica a integridade do sistema de arquivos e corrige erros no disco.
- **Uso**:
  ```cmd
  chkdsk [letra_da_unidade:]
  ```
- **Exemplo**:
  ```cmd
  chkdsk C:
  ```
  - Verifica e corrige erros no disco C:.

## 15. **`diskpart`**
- **Descrição**: Utilitário para gerenciar discos, partições e volumes.
- **Uso**:
  ```cmd
  diskpart
  ```
- **Exemplo**:
  ```cmd
  diskpart
  ```
  - Inicia o utilitário `diskpart`. Após isso, você pode usar comandos internos como `list disk`, `select disk`, e `clean` para gerenciar discos.

## 16. **`netstat`**
- **Descrição**: Exibe as conexões de rede e estatísticas.
- **Uso**:
  ```cmd
  netstat
  ```
- **Exemplo**:
  ```cmd
  netstat
  ```
  - Mostra as conexões de rede ativas e suas portas.

## 17. **`ipconfig`**
- **Descrição**: Exibe informações sobre a configuração de rede IP.
- **Uso**:
  ```cmd
  ipconfig
  ```
- **Exemplo**:
  ```cmd
  ipconfig
  ```
  - Mostra as configurações de rede IP do computador.

## 18. **`ping`**
- **Descrição**: Verifica a conectividade com outro computador ou servidor na rede.
- **Uso**:
  ```cmd
  ping [endereço]
  ```
- **Exemplo**:
  ```cmd
  ping google.com
  ```
  - Verifica a conectividade com o servidor do Google.

## 19. **`shutdown`**
- **Descrição**: Desliga ou reinicia o computador.
- **Uso**:
  ```cmd
  shutdown /s /t [tempo]
  ```
- **Exemplo**:
  ```cmd
  shutdown /s /t 60
  ```
  - Desliga o computador após 60 segundos.

## 20. **`echo`**
- **Descrição**: Exibe uma mensagem ou status de configuração de eco.
- **Uso**:
  ```cmd
  echo [mensagem]
  ```
- **Exemplo**:
  ```cmd
  echo O sistema está funcionando corretamente.
  ```
  - Exibe a mensagem "O sistema está funcionando corretamente."

# COMANDOS UTILIZADOS
## 1. **CD (chdir)**
- **Descrição**: Muda o diretório atual de trabalho. `chdir` é um alias para `cd`.
- **Uso**:
  ```cmd
  cd [caminho]
  chdir [caminho]
  ```
- **Exemplo**:
  ```cmd
  cd C:\Windows\System32
  chdir C:\Users\SeuUsuario
  ```
  - Muda o diretório atual para `C:\Windows\System32` e `C:\Users\SeuUsuario`.

## 2. **ATTRIB**
- **Descrição**: Exibe ou altera os atributos de arquivos e diretórios.
- **Uso**:
  ```cmd
  attrib [atributos] [arquivo]
  ```
- **Exemplo**:
  ```cmd
  attrib +r C:\Users\SeuUsuario\documento.txt
  attrib -r C:\Users\SeuUsuario\documento.txt
  ```
  - `+r` adiciona o atributo somente leitura ao arquivo `documento.txt`.
  - `-r` remove o atributo somente leitura.

## 3. **DIR**
- **Descrição**: Lista os arquivos e diretórios no diretório atual.
- **Uso**:
  ```cmd
  dir [caminho]
  ```
- **Exemplo**:
  ```cmd
  dir C:\Users\SeuUsuario
  ```
  - Lista os arquivos e pastas no diretório `C:\Users\SeuUsuario`.

## 4. **COPY**
- **Descrição**: Copia arquivos de um local para outro.
- **Uso**:
  ```cmd
  copy [origem] [destino]
  ```
- **Exemplo**:
  ```cmd
  copy C:\Users\SeuUsuario\arquivo.txt D:\Backup
  ```
  - Copia `arquivo.txt` do diretório `C:\Users\SeuUsuario` para `D:\Backup`.

## 5. **REPLACE**
- **Descrição**: Substitui arquivos em um diretório por outros de uma fonte.
- **Uso**:
  ```cmd
  replace [origem] [destino]
  ```
- **Exemplo**:
  ```cmd
  replace C:\Users\SeuUsuario\documento.txt D:\Backup\documento.txt
  ```
  - Substitui `documento.txt` no diretório `D:\Backup` com o arquivo `documento.txt` do diretório `C:\Users\SeuUsuario`.

## 6. **MOVE**
- **Descrição**: Move arquivos de um local para outro.
- **Uso**:
  ```cmd
  move [origem] [destino]
  ```
- **Exemplo**:
  ```cmd
  move C:\Users\SeuUsuario\arquivo.txt D:\Backup
  ```
  - Move `arquivo.txt` do diretório `C:\Users\SeuUsuario` para `D:\Backup`.

## 7. **PATH**
- **Descrição**: Exibe ou define a variável de ambiente PATH, que especifica os diretórios onde o sistema busca executáveis.
- **Uso**:
  ```cmd
  path
  path [novo_caminho]
  ```
- **Exemplo**:
  ```cmd
  path
  ```
  - Exibe o valor atual da variável PATH.
  ```cmd
  path C:\Windows\System32
  ```
  - Adiciona `C:\Windows\System32` ao PATH.

## 8. **MD (mkdir)**
- **Descrição**: Cria um novo diretório. `mkdir` é um alias para `md`.
- **Uso**:
  ```cmd
  md [nome_do_diretório]
  mkdir [nome_do_diretório]
  ```
- **Exemplo**:
  ```cmd
  md C:\Users\SeuUsuario\NovaPasta
  mkdir C:\Users\SeuUsuario\NovaPasta
  ```
  - Cria um novo diretório chamado `NovaPasta` no diretório `C:\Users\SeuUsuario`.

## 9. **DEL (erase)**
- **Descrição**: Exclui um ou mais arquivos. `erase` é um alias para `del`.
- **Uso**:
  ```cmd
  del [arquivo]
  erase [arquivo]
  ```
- **Exemplo**:
  ```cmd
  del C:\Users\SeuUsuario\arquivo.txt
  erase C:\Users\SeuUsuario\arquivo.txt
  ```
  - Exclui `arquivo.txt` do diretório `C:\Users\SeuUsuario`.

## 10. **RENAME (ren)**
- **Descrição**: Renomeia um arquivo ou diretório.
- **Uso**:
  ```cmd
  rename [nome_antigo] [nome_novo]
  ren [nome_antigo] [nome_novo]
  ```
- **Exemplo**:
  ```cmd
  rename C:\Users\SeuUsuario\arquivo.txt novo_arquivo.txt
  ren C:\Users\SeuUsuario\arquivo.txt novo_arquivo.txt
  ```
  - Renomeia `arquivo.txt` para `novo_arquivo.txt`.

## 11. **RD (rmdir)**
- **Descrição**: Remove um diretório vazio. `rmdir` é um alias para `rd`.
- **Uso**:
  ```cmd
  rd [nome_do_diretório]
  rmdir [nome_do_diretório]
  ```
- **Exemplo**:
  ```cmd
  rd C:\Users\SeuUsuario\NovaPasta
  rmdir C:\Users\SeuUsuario\NovaPasta
  ```
  - Remove o diretório `NovaPasta` se estiver vazio.

