# ESTATÍSTICAS DE REDE
Estatísticas de rede são importantes para monitorar o desempenho e a integridade das conexões de rede de um sistema. Abaixo estão alguns dos comandos essenciais para obter estatísticas e informações sobre a rede no Windows, junto com exemplos de uso e como criar um script Batch que utiliza esses comandos.

1. **`ipconfig`**
   - Exibe informações sobre a configuração de IP do sistema.
   ```bat
   ipconfig
   ```
   - Para obter detalhes mais extensos, use:
   ```bat
   ipconfig /all
   ```

2. **`ping`**
   - Testa a conectividade com outro host na rede.
   ```bat
   ping www.google.com
   ```
   - Para testar a conectividade com um endereço IP específico:
   ```bat
   ping 8.8.8.8
   ```

3. **`tracert`**
   - Rastreia o caminho dos pacotes até um destino.
   ```bat
   tracert www.google.com
   ```

4. **`netstat`**
   - Exibe conexões de rede, tabelas de roteamento e estatísticas de interface.
   ```bat
   netstat
   ```
   - Para exibir informações detalhadas sobre conexões e portas abertas:
   ```bat
   netstat -an
   ```

5. **`nslookup`**
   - Realiza consultas DNS para resolver endereços IP para nomes de domínio e vice-versa.
   ```bat
   nslookup www.google.com
   ```

6. **`route`**
   - Exibe ou modifica a tabela de roteamento IP.
   ```bat
   route print
   ```
   - Para adicionar uma rota:
   ```bat
   route add 192.168.1.0 mask 255.255.255.0 192.168.0.1
   ```

7. **`arp`**
   - Exibe ou modifica a tabela ARP (Address Resolution Protocol).
   ```bat
   arp -a
   ```

