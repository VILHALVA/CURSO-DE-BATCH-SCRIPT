# VARIÁVEIS STRING
No contexto dos scripts em Batch no Windows, variáveis de string são usadas para armazenar e manipular textos. Aqui está um guia detalhado sobre como trabalhar com variáveis de string no Prompt de Comando (CMD.EXE).

## 1. **Declaração e Atribuição**
- **Declaração e Atribuição Simples**:
  ```bat
  set variavel=valor
  ```
  - **Exemplo**:
    ```bat
    set nome=João
    echo %nome%
    ```
    - A variável `nome` é definida com o valor `João` e exibida com `echo`.

## 2. **Uso de Espaços e Aspas**
- Para lidar com espaços em valores de variáveis, use aspas:
  ```bat
  set "mensagem=Olá, Mundo!"
  echo %mensagem%
  ```
  - As aspas evitam problemas com espaços extras e garantem que o valor é tratado como uma string completa.

## 3. **Concatenação de Strings**
- Você pode concatenar strings diretamente:
  ```bat
  set parte1=Olá,
  set parte2=Mundo!
  set mensagem=%parte1% %parte2%
  echo %mensagem%
  ```
  - A variável `mensagem` será `Olá, Mundo!` após a concatenação.

## 4. **Manipulação de Strings**
- **Obter Substrings**:
  ```bat
  set texto=HelloWorld
  echo %texto:~0,5%
  ```
  - O comando acima exibe `Hello`, que é uma substring dos primeiros 5 caracteres.

- **Substituição de Substrings**:
  ```bat
  set texto=HelloWorld
  set texto=%texto:World=Universe%
  echo %texto%
  ```
  - Substitui `World` por `Universe`, resultando em `HelloUniverse`.

## 5. **Leitura de Entrada do Usuário**
- **Solicitar Entrada e Atribuir a Variável**:
  ```bat
  set /p nome=Digite seu nome: 
  echo Olá, %nome%!
  ```
  - Solicita ao usuário para digitar um nome e o armazena na variável `nome`, que é então usada na mensagem.

## 6. **Verificação de Variáveis**
- **Verificar se uma Variável Está Definida**:
  ```bat
  if defined nome (
      echo A variável nome está definida.
  ) else (
      echo A variável nome não está definida.
  )
  ```
  - Verifica se a variável `nome` está definida e exibe uma mensagem correspondente.

## 7. **Exemplos Práticos**
- **Exemplo Completo com Variáveis String**:
  ```bat
  @echo off
  :: Declaração e Atribuição
  set "nome=João"
  set "sobrenome=Silva"
  
  :: Concatenar Strings
  set "nome_completo=%nome% %sobrenome%"
  
  :: Exibir Nome Completo
  echo Nome completo: %nome_completo%
  
  :: Manipulação de Strings
  set "frase=Aprender Batch é divertido!"
  echo Frase original: %frase%
  echo Substring (primeiros 8 caracteres): %frase:~0,8%
  set "frase=%frase:divertido=legal%"
  echo Frase modificada: %frase%
  
  :: Leitura de Entrada do Usuário
  set /p resposta=Qual seu hobby favorito? 
  echo Seu hobby favorito é %resposta%.
  
  :: Verificar se a Variável está Definida
  if defined resposta (
      echo Variável resposta está definida.
  ) else (
      echo Variável resposta não está definida.
  )
  
  :: Finalizar o Script
  echo Script concluído.
  pause
  ```

# COMANDOS UTILIZADOS
Vou criar um exemplo de código em Batch que utiliza todos os comandos listados (`set`, `echo`, `color`, `mode`, `title`, `cls`, e `pause`). O script demonstrará como usar cada comando de forma prática e interativa.

## Código Batch Exemplo
```bat
@echo off
:: Desativa a exibição dos comandos para uma execução mais limpa.

:: 1. Definir o título da janela do prompt
title Exemplo de Comandos Batch

:: 2. Definir o modo da janela do prompt
mode con: cols=80 lines=25

:: 3. Alterar a cor do texto e fundo
color 0A
:: 0 = Preto (cor de fundo)
:: A = Verde (cor do texto)

:: 4. Limpar a tela
cls

:: 5. Exibir uma mensagem de boas-vindas
echo Bem-vindo ao exemplo de comandos Batch!

:: 6. Definir uma variável
set mensagem=Este é um script exemplo demonstrando vários comandos.

:: 7. Exibir o valor da variável
echo %mensagem%

:: 8. Exibir informações sobre a variável
echo Variável 'mensagem' definida como: %mensagem%

:: 9. Exibir uma mensagem interativa
echo Por favor, pressione qualquer tecla para continuar...
pause

:: 10. Alterar a cor do texto e fundo novamente
color 1F
:: 1 = Azul (cor de fundo)
:: F = Branco (cor do texto)

:: 11. Exibir uma mensagem informativa
echo A cor da janela foi alterada para azul com texto branco.

:: 12. Limpar a tela novamente
cls

:: 13. Exibir uma mensagem final
echo O script foi concluído.
pause
```

## Explicação dos Comandos:
1. **`@echo off`**:
   - Desativa a exibição dos comandos no prompt de comando para que apenas as mensagens especificadas sejam exibidas.

2. **`title`**:
   - Define o título da janela do prompt de comando.
   - Exemplo: `title Exemplo de Comandos Batch`.

3. **`mode`**:
   - Ajusta o modo da janela do prompt, como o número de colunas e linhas.
   - Exemplo: `mode con: cols=80 lines=25`.

4. **`color`**:
   - Altera a cor do texto e do fundo da janela do prompt de comando.
   - `color 0A` define o fundo como preto e o texto como verde.
   - `color 1F` define o fundo como azul e o texto como branco.

5. **`cls`**:
   - Limpa a tela do prompt de comando.
   - É útil para remover mensagens anteriores e fornecer uma tela limpa para novas informações.

6. **`echo`**:
   - Exibe uma mensagem na tela.
   - Exemplo: `echo Bem-vindo ao exemplo de comandos Batch!`.

7. **`set`**:
   - Define uma variável e seu valor.
   - Exemplo: `set mensagem=Este é um script exemplo demonstrando vários comandos.`.
   - As variáveis são referenciadas usando `%variavel%`.

8. **`pause`**:
   - Pausa a execução do script e exibe uma mensagem para pressionar qualquer tecla para continuar.
   - É útil para permitir que o usuário veja as mensagens antes que a janela do prompt se feche ou prossiga para o próximo comando.


