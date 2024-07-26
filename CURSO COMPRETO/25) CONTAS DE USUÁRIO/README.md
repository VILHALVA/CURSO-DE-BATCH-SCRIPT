# CONTAS DE USUÁRIO
Gerenciar contas de usuário no Windows a partir de scripts Batch pode ser feito com o comando `net user` e o PowerShell. Esses comandos permitem que você crie, exclua, modifique e liste contas de usuário no sistema.

Aqui está um guia básico sobre como usar esses comandos e um exemplo de script Batch para gerenciar contas de usuário.

1. **Listar Contas de Usuário**
   - Exibe uma lista de todas as contas de usuário no sistema.
   ```bat
   net user
   ```

2. **Criar uma Conta de Usuário**
   - Cria uma nova conta de usuário com uma senha.
   ```bat
   net user nome_usuario senha /add
   ```

3. **Excluir uma Conta de Usuário**
   - Exclui uma conta de usuário.
   ```bat
   net user nome_usuario /delete
   ```

4. **Modificar uma Conta de Usuário**
   - Altera a senha de uma conta de usuário.
   ```bat
   net user nome_usuario nova_senha
   ```

5. **Adicionar um Usuário a um Grupo**
   - Adiciona um usuário a um grupo (por exemplo, administradores).
   ```bat
   net localgroup nome_grupo nome_usuario /add
   ```

6. **Remover um Usuário de um Grupo**
   - Remove um usuário de um grupo.
   ```bat
   net localgroup nome_grupo nome_usuario /delete
   ```

