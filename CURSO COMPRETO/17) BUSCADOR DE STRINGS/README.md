# BUSCADOR DE STRINGS
Quando falamos em "buscador de strings" em Batch Script, geralmente estamos interessados em encontrar ocorrências específicas de texto dentro de arquivos. Isso pode ser útil para:

* **Pesquisar logs:** Encontrar mensagens de erro ou informações específicas em arquivos de log.
* **Validar dados:** Verificar se um determinado valor existe em um arquivo de configuração.
* **Substituir texto:** Trocar todas as ocorrências de uma string por outra.

**Ferramentas Principais:**

A ferramenta mais utilizada para buscar strings em Batch Script é o **`findstr`**. Ele permite a busca por expressões regulares, o que amplia bastante suas possibilidades.

**Exemplo Básico:**

```batch
findstr "texto_a_procurar" arquivo.txt
```

Este comando buscará a string "texto_a_procurar" no arquivo "arquivo.txt" e exibirá todas as linhas que a contenham.

**Opções Adicionais do `findstr`:**

* **`/C:"string"`:** Procura exatamente a string especificada.
* **`/I`:** Ignora maiúsculas e minúsculas.
* **`/V`:** Inverte a busca, mostrando as linhas que *não* contêm a string.
* **`/R`:** Interpreta a string de busca como uma expressão regular.
* **/S:** Inclui subpastas na busca.

**Exemplo com Expressão Regular:**

```batch
findstr /R "[0-9]{4}-[0-9]{2}-[0-9]{2}" arquivo.log
```

Este comando buscará todas as linhas que contenham datas no formato "AAAA-MM-DD" no arquivo "arquivo.log".

**Criando um Script Mais Completo:**

```batch
@echo off
set /p texto_a_procurar=Digite o texto a procurar: 
set /p arquivo=Digite o nome do arquivo: 

findstr /i "%texto_a_procurar%" "%arquivo%"

pause
```

Este script permite que o usuário digite o texto a ser procurado e o nome do arquivo.

