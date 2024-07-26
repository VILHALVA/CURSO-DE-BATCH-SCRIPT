# MAIÚSCULO OU MINÚSCULO
Em Batch Script, a distinção entre maiúsculas e minúsculas (case sensitivity) é crucial para diversas operações, como:

* **Comparação de strings:** 
  * `if %variavel%==texto` compara exatamente "texto" (com as mesmas maiúsculas e minúsculas).
  * `if /i %variavel%==texto` ignora a diferença entre maiúsculas e minúsculas.
* **Nomes de arquivos e pastas:** 
  * O Windows, em geral, diferencia maiúsculas de minúsculas em nomes de arquivos e pastas.
* **Comandos:** 
  * A maioria dos comandos do Batch Script não diferencia maiúsculas de minúsculas, mas é recomendado usar letras minúsculas para melhor legibilidade.

**Quando usar maiúsculas e minúsculas:**

* **Seja consistente:** Escolha um padrão e siga-o em todo o seu script.
* **Use maiúsculas para constantes:** Isso pode ajudar a distinguir constantes de variáveis.
* **Use minúsculas para variáveis e comandos:** É a prática mais comum e facilita a leitura.
* **Utilize o parâmetro `/i` quando necessário:** Para comparar strings ignorando a case sensitivity.

**Exemplo:**

```batch
@echo off
set nome=João
if /i %nome%==joão (
  echo O nome é João, independente de maiúsculas e minúsculas.
)
```

**Manipulando o Case:**

* **Convertendo para maiúsculas:**
  ```batch
  set nome=joão
  set nome=%nome:a=A%
  echo %nome%  -- Saída: JOÃO
  ```
* **Convertendo para minúsculas:**
  É um pouco mais complexo e pode envolver a criação de uma tabela de conversão ou o uso de ferramentas externas.

