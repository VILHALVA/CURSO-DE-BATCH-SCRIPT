# ASSOCIAÇÕES DE EXTENSÕES DE ARQUIVOS (ASSOC)
O comando `ASSOC` é usado no Prompt de Comando do Windows para exibir ou modificar as associações de extensões de arquivos. Essas associações determinam qual programa é usado para abrir arquivos com uma extensão específica.

## Sintaxe do Comando `ASSOC`
```cmd
assoc [extensão=tipo]
assoc
```

- **`[extensão=tipo]`**: Associa a extensão de arquivo especificada ao tipo de arquivo. Se omitido, exibe a associação atual.
- **`assoc`**: Sem parâmetros, exibe todas as associações de extensões de arquivos.

## Exemplos de Uso do Comando `ASSOC`
### 1. Exibir Todas as Associações de Extensões
Para listar todas as associações de extensões de arquivos atuais:

```cmd
assoc
```

Isso retornará uma lista de extensões de arquivos e seus tipos associados, como:

```
.txt=txtfile
.doc=Word.Document.8
```

### 2. Exibir a Associação de uma Extensão Específica
Para exibir a associação de uma extensão específica, por exemplo, `.txt`:

```cmd
assoc .txt
```

Isso retornará algo como:

```
.txt=txtfile
```

### 3. Associar uma Extensão a um Tipo de Arquivo
Para associar a extensão `.myext` ao tipo `myfiletype`:

```cmd
assoc .myext=myfiletype
```

### 4. Desassociar uma Extensão de um Tipo de Arquivo
Para remover a associação de uma extensão específica (por exemplo, `.myext`):

```cmd
assoc .myext=
```

### 5. Associar um Tipo de Arquivo a um Programa
Depois de associar uma extensão a um tipo, você pode associar esse tipo a um programa usando o comando `ftype`. Por exemplo:

1. **Definir o Tipo de Arquivo**

   ```cmd
   assoc .myext=myfiletype
   ```

2. **Associar o Tipo de Arquivo a um Programa**

   ```cmd
   ftype myfiletype="C:\Caminho\Para\Programa.exe" "%1"
   ```

O comando `ASSOC` é uma ferramenta poderosa para gerenciar como o Windows lida com diferentes tipos de arquivos, permitindo que você ajuste o comportamento padrão do sistema para atender às suas necessidades específicas.