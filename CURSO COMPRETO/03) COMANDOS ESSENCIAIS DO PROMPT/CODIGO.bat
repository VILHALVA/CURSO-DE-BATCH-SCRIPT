@echo off
:: Desativa a exibição dos comandos na tela para uma execução mais limpa.

:: 1. Exibir uma mensagem inicial
echo Iniciando o script de exemplo...

:: 2. Criar um diretório de exemplo
echo Criando diretório de exemplo...
md C:\Exemplo\Diretorio1

:: 3. Mudar para o diretório criado
cd C:\Exemplo\Diretorio1

:: 4. Criar um arquivo de exemplo
echo Criando arquivo de exemplo...
echo Este é um arquivo de exemplo. > arquivo.txt

:: 5. Listar arquivos no diretório atual
echo Listando arquivos no diretório atual...
dir

:: 6. Mudar o atributo do arquivo para somente leitura
echo Alterando atributo para somente leitura...
attrib +r arquivo.txt

:: 7. Copiar o arquivo para um novo diretório
echo Copiando arquivo para o diretório de destino...
md C:\Exemplo\Diretorio2
copy arquivo.txt C:\Exemplo\Diretorio2

:: 8. Substituir o arquivo no diretório de destino (se houver)
echo Substituindo arquivo no diretório de destino...
replace C:\Exemplo\Diretorio1\arquivo.txt C:\Exemplo\Diretorio2\arquivo.txt

:: 9. Mover o arquivo para outro diretório
echo Movendo arquivo para o diretório de destino...
move C:\Exemplo\Diretorio2\arquivo.txt C:\Exemplo\Diretorio1

:: 10. Renomear o arquivo
echo Renomeando o arquivo...
rename C:\Exemplo\Diretorio1\arquivo.txt arquivo_renomeado.txt

:: 11. Excluir o arquivo renomeado
echo Excluindo o arquivo renomeado...
del C:\Exemplo\Diretorio1\arquivo_renomeado.txt

:: 12. Voltar ao diretório pai e remover diretórios vazios
cd C:\Exemplo
echo Removendo diretórios...
rd Diretorio1
rd Diretorio2

:: 13. Exibir o caminho atual
echo Caminho atual:
path

:: 14. Exibir uma mensagem final e pausar o script
echo O script foi concluído com sucesso!
pause
