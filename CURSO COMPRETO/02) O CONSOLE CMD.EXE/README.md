# O CONSOLE CMD.EXE
## O que é o CMD.EXE?
O CMD.EXE, também conhecido como Prompt de Comando ou Command Prompt, é o interpretador de comandos nativo dos sistemas operacionais Windows. Ele permite aos usuários executar comandos e scripts batch diretamente, fornecendo uma interface baseada em texto para interação com o sistema.

## Abrindo o CMD.EXE
### Métodos para abrir o CMD.EXE:
1. **Usando a caixa de diálogo "Executar"**:
   - Pressione `Win + R` no teclado.
   - Digite `cmd` e pressione `Enter`.

2. **Usando o Menu Iniciar**:
   - Clique no botão Iniciar.
   - Digite `cmd` ou `Prompt de Comando` na barra de pesquisa.
   - Clique em "Prompt de Comando" nos resultados da pesquisa.

3. **Usando o Gerenciador de Tarefas**:
   - Pressione `Ctrl + Shift + Esc` para abrir o Gerenciador de Tarefas.
   - Vá para "Arquivo" > "Executar nova tarefa".
   - Digite `cmd` e pressione `Enter`.

## Interface do CMD.EXE
### Elementos Principais:
- **Linha de Comando**: Onde você digita os comandos.
- **Cursor**: Indica a posição onde o próximo comando será digitado.
- **Saída**: Mostra os resultados dos comandos executados.

### Comandos Básicos:
- **`dir`**: Lista os arquivos e diretórios no diretório atual.
- **`cd`**: Muda o diretório atual.
- **`copy`**: Copia arquivos de um local para outro.
- **`del`**: Exclui um ou mais arquivos.
- **`exit`**: Fecha o prompt de comando.

### Exemplo de Comandos:
```cmd
cd C:\Users\SeuUsuario\Desktop
dir
```
- `cd C:\Users\SeuUsuario\Desktop`: Muda o diretório atual para a área de trabalho do usuário.
- `dir`: Lista todos os arquivos e pastas no diretório atual.

## Utilizando o CMD.EXE com Batch Scripts
### Executando um Arquivo Batch:
Para executar um arquivo batch (`.bat`), você pode simplesmente digitá-lo no CMD.EXE ou clicar duas vezes no arquivo no Windows Explorer.

### Exemplo de Execução:
1. Crie um arquivo chamado `meu_script.bat` com o seguinte conteúdo:

    ```bat
    @echo off
    echo Olá, isso é um script batch!
    pause
    ```

2. Abra o CMD.EXE.
3. Navegue até o diretório onde o arquivo `meu_script.bat` está localizado usando o comando `cd`.
4. Digite `meu_script.bat` e pressione `Enter`.

### Resultado Esperado:
Você verá a mensagem "Olá, isso é um script batch!" seguida por uma pausa até que você pressione uma tecla.

## Personalizando o CMD.EXE
### Mudando a Cor do Texto e do Fundo:
Você pode personalizar a cor do texto e do fundo do CMD.EXE usando o comando `color`.

```cmd
color 0A
```
- `0A`: Muda a cor do texto para verde (A) e o fundo para preto (0).

### Aumentando o Tamanho do Buffer:
Para aumentar o tamanho do buffer de tela, clique com o botão direito na barra de título do CMD.EXE, selecione "Propriedades", vá até a aba "Layout" e ajuste o "Tamanho do Buffer de Tela".

## Comandos Úteis no CMD.EXE
### Comandos para Navegação e Gestão de Arquivos:
- **`cd [caminho]`**: Muda o diretório atual.
- **`dir`**: Lista arquivos e diretórios.
- **`copy [fonte] [destino]`**: Copia arquivos de uma localização para outra.
- **`del [arquivo]`**: Exclui um arquivo.
- **`mkdir [diretório]`**: Cria um novo diretório.
- **`rmdir [diretório]`**: Remove um diretório vazio.

### Comandos de Sistema:
- **`tasklist`**: Exibe uma lista de processos em execução.
- **`taskkill /F /PID [pid]`**: Finaliza um processo especificado pelo ID do processo.
- **`shutdown /s /t [tempo]`**: Desliga o computador após um tempo especificado.

## Ajuda e Documentação
### Usando o comando de ajuda:
Para obter ajuda sobre qualquer comando, você pode usar o comando `help` seguido do nome do comando.

```cmd
help dir
```
- Mostra informações e opções disponíveis para o comando `dir`.

### Documentação Online:
A Microsoft fornece documentação extensa sobre o CMD.EXE e comandos batch no site oficial, que pode ser acessado para aprender mais sobre o uso avançado do CMD.EXE e criação de scripts batch.

O CMD.EXE é uma ferramenta poderosa para administração e automação no ambiente Windows, e entender como utilizá-lo eficientemente pode aumentar significativamente a sua produtividade e capacidade de gerenciar sistemas Windows.

# COMANDOS BÁSICOS
## 1. **CLS**
- **Descrição**: Limpa a tela do console, removendo todo o texto exibido anteriormente.
- **Uso**: 
  ```cmd
  cls
  ```
- **Exemplo**: Se você estiver executando um script e deseja limpar a tela para que o output fique mais visível, use `cls` para remover o texto antigo.

## 2. **ECHO**
- **Descrição**: Exibe uma mensagem ou o status de uma configuração de eco no console. Pode ser usado para imprimir texto ou variáveis.
- **Uso**:
  ```cmd
  echo [mensagem]
  echo [variável]
  ```
- **Exemplo**:
  ```cmd
  echo Olá, Mundo!
  ```
  - Exibe "Olá, Mundo!" no console.
  ```cmd
  set nome=João
  echo Olá, %nome%!
  ```
  - Exibe "Olá, João!" usando a variável `nome`.

## 3. **VOL**
- **Descrição**: Exibe o número de série do volume e o rótulo (se houver) do disco atual.
- **Uso**:
  ```cmd
  vol
  ```
- **Exemplo**: 
  ```cmd
  vol C:
  ```
  - Exibe o número de série e o rótulo do volume do disco C:.

## 4. **VER**
- **Descrição**: Mostra a versão do sistema operacional Windows em execução.
- **Uso**:
  ```cmd
  ver
  ```
- **Exemplo**:
  ```cmd
  ver
  ```
  - Exibe a versão do Windows, como "Microsoft Windows [Versão 10.0.19042.0]".

## 5. **CLIP**
- **Descrição**: Redireciona a saída de um comando para a área de transferência, permitindo que você cole o texto em outros aplicativos.
- **Uso**:
  ```cmd
  [comando] | clip
  ```
- **Exemplo**:
  ```cmd
  dir | clip
  ```
  - Copia a listagem de diretórios para a área de transferência.

## 6. **DATE**
- **Descrição**: Exibe ou altera a data do sistema. Se usado sem parâmetros, mostra a data atual e solicita a entrada de uma nova data.
- **Uso**:
  ```cmd
  date
  date [data]
  ```
- **Exemplo**:
  ```cmd
  date
  ```
  - Mostra a data atual e solicita uma nova data.
  ```cmd
  date 25-12-2024
  ```
  - Altera a data do sistema para 25 de dezembro de 2024.

## 7. **TIME**
- **Descrição**: Exibe ou altera a hora do sistema. Se usado sem parâmetros, mostra a hora atual e solicita a entrada de uma nova hora.
- **Uso**:
  ```cmd
  time
  time [hora]
  ```
- **Exemplo**:
  ```cmd
  time
  ```
  - Mostra a hora atual e solicita uma nova hora.
  ```cmd
  time 14:30:00
  ```
  - Altera a hora do sistema para 14:30:00.

## 8. **START**
- **Descrição**: Inicia um programa, comando, ou script em uma nova janela do console. Também pode ser usado para abrir arquivos ou URLs no navegador padrão.
- **Uso**:
  ```cmd
  start [programa]
  start [arquivo]
  start [url]
  ```
- **Exemplo**:
  ```cmd
  start notepad
  ```
  - Abre o Bloco de Notas em uma nova janela.
  ```cmd
  start https://www.google.com
  ```
  - Abre o site Google no navegador padrão.

## 9. **WINVER**
- **Descrição**: Exibe a janela de informações sobre a versão do Windows em execução, fornecendo detalhes sobre a versão e a edição do sistema operacional.
- **Uso**:
  ```cmd
  winver
  ```
- **Exemplo**:
  ```cmd
  winver
  ```
  - Exibe uma caixa de diálogo com a versão do Windows e informações de edição.

## 10. **EXIT**
- **Descrição**: Fecha a janela do CMD.EXE ou encerra um script batch.
- **Uso**:
  ```cmd
  exit
  ```
- **Exemplo**:
  ```cmd
  exit
  ```
  - Fecha a janela do prompt de comando atual ou encerra a execução de um script batch.

Esses comandos básicos fornecem ferramentas essenciais para a interação com o sistema operacional e podem ser usados tanto no prompt de comando quanto em scripts batch para automatizar tarefas e gerenciar o sistema.