# MANUAL
## 1) INSTALAÇÃO:
Batch script é nativo do Windows, então você não precisa instalar nada adicional para começar a usar.

1. **Verificar a Versão do Windows**:
   - Certifique-se de que você está usando uma versão do Windows que tenha suporte ao CMD (praticamente todas as versões do Windows desde o Windows 95 têm).

2. **Abrir o Prompt de Comando**:
   - Pressione `Win + R`, digite `cmd` e pressione `Enter`.
   - Alternativamente, você pode procurar por "Prompt de Comando" no menu Iniciar e abrir.

## 2) CONFIGURAÇÃO:
1. **Abrir um Editor de Texto**:
   - Você pode usar qualquer editor de texto simples, como o Bloco de Notas.
   - Para projetos mais avançados, você pode usar editores como Notepad++, VS Code, ou qualquer outro editor de sua preferência.

2. **Salvar um Arquivo Batch**:
   - Crie um novo arquivo no seu editor de texto.
   - Salve o arquivo com a extensão `.bat`. Exemplo: `meu_primeiro_script.bat`.

## 3) PRIMEIRO PROJETO:
Vamos criar um script batch simples que exibe uma mensagem e solicita uma entrada do usuário.

1. **Criar o Script**:
   - Abra seu editor de texto e digite o seguinte código:

   ```bat
   @echo off
   echo Olá, bem-vindo ao seu primeiro script batch!
   set /p nome=Por favor, digite seu nome: 
   echo Olá, %nome%!
   pause
   ```

   - `@echo off`: Desativa a exibição dos comandos na tela.
   - `echo Olá, bem-vindo ao seu primeiro script batch!`: Exibe uma mensagem de boas-vindas.
   - `set /p nome=Por favor, digite seu nome:`: Solicita ao usuário que digite seu nome e armazena na variável `nome`.
   - `echo Olá, %nome%!`: Exibe uma mensagem personalizada com o nome do usuário.
   - `pause`: Pausa a execução do script até que o usuário pressione uma tecla.

2. **Salvar o Arquivo**:
   - Salve o arquivo com a extensão `.bat`. Exemplo: `meu_primeiro_script.bat`.

3. **Executar o Script**:
   - Navegue até a pasta onde você salvou o arquivo `.bat`.
   - Clique duas vezes no arquivo ou abra o Prompt de Comando, navegue até a pasta com o comando `cd` e execute o script digitando o nome do arquivo: `meu_primeiro_script.bat`.

### EXEMPLO:
Se você salvou o arquivo na área de trabalho:
1. Abra o Prompt de Comando.
2. Navegue até a área de trabalho:
   ```bat
   cd %userprofile%\Desktop
   ```
3. Execute o script:
   ```bat
   meu_primeiro_script.bat
   ```

### RESULTADO ESPERADO:
Quando você executar o script, verá o seguinte:
```
Olá, bem-vindo ao seu primeiro script batch!
Por favor, digite seu nome: (Você digita seu nome aqui)
Olá, (Seu Nome)!
Pressione qualquer tecla para continuar . . .
```

Parabéns! Você criou e executou seu primeiro projeto em Batscript. A partir daqui, você pode explorar mais comandos e funcionalidades para criar scripts mais complexos e automatizar diversas tarefas no Windows.