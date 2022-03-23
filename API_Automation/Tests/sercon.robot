Documentation
... Suíte específica para os testes de API

*** Settings ***
Resource                  ../Shared/resources/shared_sercon/resources_sercon.robot
Resource                  ../Shared/variables/variables_api.robot

***Test Cases***

Test case 0: SERCON Limpar fila
    DADO que eu me conecte ao WebService - SERCON
    QUANDO realizer conexão com sucesso - SERCON
    ENTÃO devo limpar a fila de itens - SERCON

# Test case 1: SERCON Conexão
#     DADO que eu me conecte ao WebService - SERCON
#     QUANDO realizer conexão com sucesso - SERCON
#     ENTÃO verifico se estou conectado - SERCON
    
# Test case 2: SERCON Token
#     DADO que eu me conecte ao WebService - SERCON 
#     QUANDO realizer conexão com sucesso - SERCON
#     ENTÃO eu devo verificar o token - SERCON

# Test case 3: SERCON Ativar dois produtos
#     DADO que eu me conecte ao WebService - SERCON
#     QUANDO realizer conexão com sucesso - SERCON
#     ENTÃO devo ativar dois produtos - SERCON

# Test case 4: SERCON Buscar os produtos que estão na fila
#     DADO que eu me conecte ao WebService - SERCON
#     QUANDO realizer conexão com sucesso - SERCON
#     ENTÃO verifico se há produtos na fila - SERCON

# Test case 5: SERCON Retirar dois produtos
#     DADO que eu me conecte ao WebService - SERCON
#     QUANDO realizer conexão com sucesso - SERCON
#     ENTÃO eu retiro os produtos da fila - SERCON

# Test case 6: SERCON Verifica se a fila está vazia
#     DADO que eu me conecte ao WebService - SERCON
#     QUANDO realizer conexão com sucesso - SERCON
#     ENTÃO se não há produtos na fila - SERCON

# Test case 7: SERCON Ativar cinco produtos
#     DADO que eu me conecte ao WebService - SERCON
#     QUANDO realizer conexão com sucesso - SERCON
#     ENTÃO devo ativar cinco produtos - SERCON

# Test case 8: SERCON Buscar produtos na fila
#     DADO que eu me conecte ao WebService - SERCON
#     QUANDO realizer conexão com sucesso - SERCON
#     ENTÃO verifico se há os produtos na fila - SERCON

# Test case 9: SERCON Retirar quatro produtos
#     DADO que eu me conecte ao WebService - SERCON
#     QUANDO realizer conexão com sucesso - SERCON
#     ENTÃO eu retiro quatro produtos da fila - SERCON

# Test case 10: SERCON Verifica se há um produto na fila
#     DADO que eu me conecte ao WebService - SERCON
#     QUANDO realizer conexão com sucesso - SERCON
#     ENTÃO verifico se há um produto na fila - SERCON

# Test case 11: SERCON Ativar dois produtos
#     DADO que eu me conecte ao WebService - SERCON
#     QUANDO realizer conexão com sucesso - SERCON
#     ENTÃO devo ativar dois produtos - SERCON

# Test case 12: SERCON Buscar produtos
#     DADO que eu me conecte ao WebService - SERCON
#     QUANDO realizer conexão com sucesso - SERCON
#     ENTÃO verifico se há produtos na fila - SERCON

# Test case 13: SERCON Retirar um produtos
#     DADO que eu me conecte ao WebService - SERCON
#     QUANDO realizer conexão com sucesso - SERCON
#     ENTÃO eu retiro um produto da fila - SERCON

# Test case 14: SERCON Verifica se há um produto na fila
#     DADO que eu me conecte ao WebService - SERCON
#     QUANDO realizer conexão com sucesso - SERCON
#     ENTÃO verifico o produto que está na fila - SERCON


# Test case 15: SERCON Ativar quinze produtos
#     DADO que eu me conecte ao WebService - SERCON
#     QUANDO realizer conexão com sucesso - SERCON
#     ENTÃO devo ativar os quize produtos - SERCON

# Test case 16: SERCON Buscar produtos
#     DADO que eu me conecte ao WebService - SERCON
#     QUANDO realizer conexão com sucesso - SERCON
#     ENTÃO verifico se há quinze produtos na fila - SERCON

# Test case 17: SERCON Retira quinze produtos
#     DADO que eu me conecte ao WebService - SERCON
#     QUANDO realizer conexão com sucesso - SERCON
#     ENTÃO eu retiro quinze produtos da fila - SERCON

# Test case 18: SERCON Verifica se a fila está vazia
#     DADO que eu me conecte ao WebService - SERCON
#     QUANDO realizer conexão com sucesso - SERCON
#     ENTÃO se não há produtos na fila - SERCON

Test case 19: SERCON Ativar quinze produtos
    DADO que eu me conecte ao WebService - SERCON
    QUANDO realizer conexão com sucesso - SERCON
    ENTÃO devo ativar os quize produtos - SERCON

Test case 20: SERCON Buscar produtos
    DADO que eu me conecte ao WebService - SERCON
    QUANDO realizer conexão com sucesso - SERCON
    ENTÃO verifico se há quinze produtos na fila - SERCON

Test case 21: SERCON Retirar dez produtos
    DADO que eu me conecte ao WebService - SERCON
    QUANDO realizer conexão com sucesso - SERCON
    ENTÃO eu retiro dez produtos da fila - SERCON

Test case 22: SERCON Buscar produtos que estão na fila
    DADO que eu me conecte ao WebService - SERCON
    QUANDO realizer conexão com sucesso - SERCON
    ENTÃO verifico os itens que estão na fila - SERCON

# Test case 23: SERCON Pedido
#     DADO que eu me conecte ao WebService - SERCON
#     QUANDO realizer conexão com sucesso - SERCON
#     ENTÃO deve verificar se há pedidos - SERCON

# Test case 24: SERCON Nota fiscal
#     DADO que eu me conecte ao WebService - SERCON
#     QUANDO realizer conexão com sucesso - SERCON
#     ENTÃO verifico a nota fiscal do pedido - SERCON