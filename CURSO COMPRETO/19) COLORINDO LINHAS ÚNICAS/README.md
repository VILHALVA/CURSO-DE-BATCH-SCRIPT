# COLORINDO LINHAS ÚNICAS
No Prompt de Comando do Windows, você pode usar o comando `color` para alterar a cor do texto e do fundo da janela do console. No entanto, o comando `color` afeta toda a janela e não permite a coloração de linhas individuais.

Para colorir linhas individuais, você pode usar um truque envolvendo a combinação de `echo` com caracteres de controle ANSI, que são suportados a partir do Windows 10. A coloração de texto em linhas individuais normalmente requer o uso de scripts mais avançados ou ferramentas adicionais.

## Usando Cores ANSI no Windows 10
A partir do Windows 10, a linha de comando suporta códigos de escape ANSI, que permitem colorir o texto individualmente. Você pode usar esses códigos de escape diretamente no console para obter diferentes cores.

## Códigos de Escape ANSI
Aqui estão alguns exemplos de códigos de escape ANSI para cores de texto e fundo:

- **Texto Vermelho**: `\x1b[31m`
- **Texto Verde**: `\x1b[32m`
- **Texto Amarelo**: `\x1b[33m`
- **Texto Azul**: `\x1b[34m`
- **Fundo Preto**: `\x1b[40m`
- **Fundo Branco**: `\x1b[47m`
- **Resetar Cor**: `\x1b[0m`

## Exemplo de Script Batch com Cores ANSI
Aqui está um exemplo de script Batch que usa códigos de escape ANSI para colorir linhas individuais:

```bat
@echo off
:: Habilitar a tradução de códigos de escape ANSI no console
:: Pode ser necessário para versões anteriores do Windows 10
:: O console do Windows 11 deve ter suporte nativo

:: Definir a variável para o código de escape ANSI
set "ESC=\x1b["
set "RESET=%ESC%0m"
set "RED=%ESC%31m"
set "GREEN=%ESC%32m"
set "YELLOW=%ESC%33m"
set "BLUE=%ESC%34m"
set "BLACK_BG=%ESC%40m"
set "WHITE_BG=%ESC%47m"

:: Exibir linhas coloridas
echo %RED%Esta linha está em vermelho.%RESET%
echo %GREEN%Esta linha está em verde.%RESET%
echo %YELLOW%Esta linha está em amarelo.%RESET%
echo %BLUE%Esta linha está em azul.%RESET%
echo %BLACK_BG%%WHITE_BG%Esta linha tem fundo branco e texto preto.%RESET%

:: Pausa para visualizar o resultado
pause
```

## Detalhes do Script
- **Códigos de Escape**: As variáveis como `RED`, `GREEN`, etc., definem os códigos de escape ANSI para cores.
- **Resetar Cor**: O código `\x1b[0m` é usado para resetar as cores de volta ao padrão após cada linha.
- **Fundo**: `BLACK_BG` e `WHITE_BG` demonstram como alterar a cor do fundo do texto.

## Considerações
1. **Versão do Windows**: Certifique-se de estar usando o Windows 10 (versão 1511 ou mais recente) ou Windows 11, pois as versões mais antigas do Windows não oferecem suporte completo para códigos de escape ANSI no Prompt de Comando.
2. **Alternativas**: Se o seu ambiente não suporta códigos de escape ANSI, você pode considerar usar PowerShell, que tem suporte mais robusto para coloração de texto e manipulação do console.

Esse método permite uma maior personalização na forma como o texto é exibido no Prompt de Comando, tornando a saída de informações mais visualmente distinta e fácil de interpretar.