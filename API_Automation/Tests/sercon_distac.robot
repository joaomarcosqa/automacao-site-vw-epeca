Documentation
... Suíte específica para os testes de API

*** Settings ***
Resource                  ../Shared/resources/shared_sercon_distac/resources_sercon_distac.robot
Resource                  ../Shared/variables/variables_api.robot
#apenas sercon 
***Test Cases***

Test case 0: Limpar fila - SERCON_DISTAC
    DADO que eu me conecte ao WebService - SERCON_DISTAC
    QUANDO realizer conexão com sucesso - SERCON_DISTAC
    ENTÃO devo limpar a fila de itens - SERCON_DISTAC

Test case 1: Conexão - SERCON_DISTAC
    DADO que eu me conecte ao WebService - SERCON_DISTAC
    QUANDO realizer conexão com sucesso - SERCON_DISTAC
    ENTÃO verifico se estou conectado - SERCON_DISTAC
    
Test case 2: Token - SERCON_DISTAC
    DADO que eu me conecte ao WebService - SERCON_DISTAC 
    QUANDO realizer conexão com sucesso - SERCON_DISTAC
    ENTÃO eu devo verificar o token - SERCON_DISTAC

Test case 3: Ativar dois produtos - SERCON_DISTAC
    DADO que eu me conecte ao WebService - SERCON_DISTAC
    QUANDO realizer conexão com sucesso - SERCON_DISTAC
    ENTÃO devo ativar dois produtos - SERCON_DISTAC

Test case 4: Buscar os produtos que estão na fila - SERCON_DISTAC
    DADO que eu me conecte ao WebService - SERCON_DISTAC
    QUANDO realizer conexão com sucesso - SERCON_DISTAC
    ENTÃO verifico se há produtos na fila - SERCON_DISTAC

Test case 5: Retirar dois produtos - SERCON_DISTAC
    DADO que eu me conecte ao WebService - SERCON_DISTAC
    QUANDO realizer conexão com sucesso - SERCON_DISTAC
    ENTÃO eu retiro os produtos da fila - SERCON_DISTAC

Test case 6: Verifica se a fila está vazia - SERCON_DISTAC
    DADO que eu me conecte ao WebService - SERCON_DISTAC
    QUANDO realizer conexão com sucesso - SERCON_DISTAC
    ENTÃO verifico se não há produtos na fila - SERCON_DISTAC


Test case 7: Ativar dois produtos - SERCON_DISTAC
    DADO que eu me conecte ao WebService - SERCON_DISTAC
    QUANDO realizer conexão com sucesso - SERCON_DISTAC
    ENTÃO devo ativar dois produtos - SERCON_DISTAC

Test case 8: Buscar os produtos que estão na fila - SERCON_DISTAC
    DADO que eu me conecte ao WebService - SERCON_DISTAC
    QUANDO realizer conexão com sucesso - SERCON_DISTAC
    ENTÃO verifico se há produtos na fila - SERCON_DISTAC

Test case 9: Retirar dois produtos - SERCON_DISTAC
    DADO que eu me conecte ao WebService - SERCON_DISTAC
    QUANDO realizer conexão com sucesso - SERCON_DISTAC
    ENTÃO eu retiro os produtos da fila - SERCON_DISTAC

Test case 10: Buscar os produtos que estão na fila - SERCON_DISTAC
    DADO que eu me conecte ao WebService - SERCON_DISTAC
    QUANDO realizer conexão com sucesso - SERCON_DISTAC
    ENTÃO verifico se não há produtos na fila - SERCON_DISTAC

Test case 11: Ativar dois produtos - SERCON_DISTAC
    DADO que eu me conecte ao WebService - SERCON_DISTAC
    QUANDO realizer conexão com sucesso - SERCON_DISTAC
    ENTÃO devo ativar dois produtos - SERCON_DISTAC

Test case 12: Buscar os produtos que estão na fila - SERCON_DISTAC
    DADO que eu me conecte ao WebService - SERCON_DISTAC
    QUANDO realizer conexão com sucesso - SERCON_DISTAC
    ENTÃO verifico se há produtos na fila - SERCON_DISTAC

Test case 13: Retirar um produtos - SERCON_DISTAC
    DADO que eu me conecte ao WebService - SERCON_DISTAC
    QUANDO realizer conexão com sucesso - SERCON_DISTAC
    ENTÃO eu retiro um produto da fila - SERCON_DISTAC

Test case 14: Buscar os produtos que estão na fila - SERCON_DISTAC
    DADO que eu me conecte ao WebService - SERCON_DISTAC
    QUANDO realizer conexão com sucesso - SERCON_DISTAC
    ENTÃO verifico o produto que está na fila - SERCON_DISTAC

Test case 15: Ativar cinco produtos - SERCON_DISTAC
    DADO que eu me conecte ao WebService - SERCON_DISTAC
    QUANDO realizer conexão com sucesso - SERCON_DISTAC
    ENTÃO devo ativar os cinco produtos - SERCON_DISTAC

Test case 16: Buscar os produtos que estão na fila - SERCON_DISTAC
    DADO que eu me conecte ao WebService - SERCON_DISTAC
    QUANDO realizer conexão com sucesso - SERCON_DISTAC
    ENTÃO verifico se há produtos na fila - SERCON_DISTAC

Test case 17: Retirar três produtos - SERCON_DISTAC
    DADO que eu me conecte ao WebService - SERCON_DISTAC
    QUANDO realizer conexão com sucesso - SERCON_DISTAC
    ENTÃO eu retiro três produtos da fila - SERCON_DISTAC

Test case 18: Buscar os produtos que estão na fila - SERCON_DISTAC
    DADO que eu me conecte ao WebService - SERCON_DISTAC
    QUANDO realizer conexão com sucesso - SERCON_DISTAC
    ENTÃO se há 2 produtos na fila - SERCON_DISTAC

Test case 19: Ativar cinco produtos - SERCON_DISTAC
    DADO que eu me conecte ao WebService - SERCON_DISTAC
    QUANDO realizer conexão com sucesso - SERCON_DISTAC
    ENTÃO devo ativar os cinco produtos - SERCON_DISTAC

Test case 20: Buscar os produtos que estão na fila - SERCON_DISTAC
    DADO que eu me conecte ao WebService - SERCON_DISTAC
    QUANDO realizer conexão com sucesso - SERCON_DISTAC
    ENTÃO verifico se há produtos na fila - SERCON_DISTAC

Test case 21: Retirar cinco produtos - SERCON_DISTAC
    DADO que eu me conecte ao WebService - SERCON_DISTAC
    QUANDO realizer conexão com sucesso - SERCON_DISTAC
    ENTÃO eu retiro cinco produtos da fila - SERCON_DISTAC

Test case 22: Buscar os produtos que estão na fila - SERCON_DISTAC
    DADO que eu me conecte ao WebService - SERCON_DISTAC
    QUANDO realizer conexão com sucesso - SERCON_DISTAC
    ENTÃO verifico se não há produtos na fila - SERCON_DISTAC

# Test case 23: Pedidos - SERCON_DISTAC
#     DADO que eu me conecte ao WebService - SERCON_DISTAC
#     QUANDO realizer conexão com sucesso - SERCON_DISTAC
#     ENTÃO devo verificar se há pedidos - SERCON_DISTAC

# Test case 24: Nota fiscal - SERCON_DISTAC
#     DADO que eu me conecte ao WebService - SERCON_DISTAC
#     QUANDO realizer conexão com sucesso - SERCON_DISTAC
#     ENTÃO verifico a nota fiscal do pedido - SERCON_DISTAC

Test case 25: Limpar fila - SERCON_DISTAC
    DADO que eu me conecte ao WebService - SERCON_DISTAC
    QUANDO realizer conexão com sucesso - SERCON_DISTAC
    ENTÃO devo limpar a fila de itens - SERCON_DISTAC  