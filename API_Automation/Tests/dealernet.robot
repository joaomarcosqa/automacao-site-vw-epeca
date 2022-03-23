Documentation
... Suíte específica para os testes de API

*** Settings ***
Resource                  ../Shared/resources/shared_dealernet/resources_dealernet.robot
Resource                  ../Shared/variables/variables_api.robot

***Test Cases***
Test case 1: Dealernet - Token
    DADO que eu me conecte ao WebService - DEALERNET
    QUANDO realizer conexão com sucesso - DEALERNET
    ENTÃO verifico se estou conectado - DEALERNET

Test case 2: Dealernet - Conexão
    DADO que eu me conecte ao WebService - DEALERNET
    QUANDO realizer conexão com sucesso - DEALERNET
    ENTÃO eu verifico se há conexão - DEALERNET

Test case 3: Dealernet - Ativar produtos
    DADO que eu me conecte ao WebService - DEALERNET
    QUANDO realizer conexão com sucesso - DEALERNET
    ENTÃO eu ativo o produto - DEALERNET

Test case 4: Dealernet - Buscar produtos fila
    DADO que eu me conecte ao WebService - DEALERNET
    QUANDO realizer conexão com sucesso - DEALERNET
    ENTÃO verifico se há produtos na fila - DEALERNET

Test case 5: Dealernet - Retirar produtos fila
    DADO que eu me conecte ao WebService - DEALERNET
    QUANDO realizer conexão com sucesso - DEALERNET
    ENTÃO devo retirar os produtos da fila - DEALERNET

Test case 6: Dealernet - Pedidos
    DADO que eu me conecte ao WebService - DEALERNET
    QUANDO realizer conexão com sucesso - DEALERNET
    ENTÃO deve verificar se há pedidos - DEALERNET

Test case 7: Dealernet - Pedidos string
    DADO que eu me conecte ao WebService - DEALERNET
    QUANDO realizer conexão com sucesso - DEALERNET
    ENTÃO deve verificar se há pedidos string - DEALERNET

Test case 8: Dealernet - Nota fiscal
    DADO que eu me conecte ao WebService - DEALERNET
    QUANDO realizer conexão com sucesso - DEALERNET
    ENTÃO verifico a nota fiscal do pedido - SERCON