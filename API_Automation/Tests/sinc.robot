Documentation
... Suíte específica para os testes de API

*** Settings ***
Resource                  ../Shared/resources/shared_sinc/resources_sinc.robot
Resource                  ../Shared/variables/variables_api.robot

***Test Cases***
Test case 0: SINC Limpar fila
    DADO que eu me conecte ao WebService - SINC
    QUANDO realizer conexão com sucesso - SINC
    ENTÃO devo limpar a fila de itens - SINC

Test case 1: SINC - Conexão    
    DADO que eu me conecte ao WebService - SINC
    QUANDO realizer conexão com sucesso - SINC
    ENTÃO verifico se estou conectado - SINC

Test case 2: SINC - Token
    DADO que eu me conecte ao WebService - SINC
    QUANDO realizer conexão com sucesso - SINC
    ENTÃO eu devo verificar o token - SINC

Test case 3: SINC - Ativar produtos
    DADO que eu me conecte ao WebService - SINC
    QUANDO realizer conexão com sucesso - SINC
    ENTÃO devo ativar os produtos - SINC

Test case 4: SINC - Buscar produtos fila
    DADO que eu me conecte ao WebService - SINC
    QUANDO realizer conexão com sucesso - SINC      
    ENTÃO verifico se há produtos na fila - SINC

Test case 5: SINC - Retirar produtos fila
    DADO que eu me conecte ao WebService - SINC
    QUANDO realizer conexão com sucesso - SINC
    ENTÃO eu retiro os produtos da fila - SINC

# #primeiro teste
Test case 6: SINC Ativar produtos
    DADO que eu me conecte ao WebService - SINC
    QUANDO realizer conexão com sucesso - SINC
    ENTÃO devo ativar dois produtos - SINC

Test case 7: SINC Buscar produtos
    DADO que eu me conecte ao WebService - SINC
    QUANDO realizer conexão com sucesso - SINC
    ENTÃO verifico se há produtos na fila - SINC

Test case 8: SINC Retirar produtos
    DADO que eu me conecte ao WebService - SINC
    QUANDO realizer conexão com sucesso - SINC
    ENTÃO eu retiro os produtos da fila - SINC

Test case 9: SINC Buscar produtos
    DADO que eu me conecte ao WebService - SINC
    QUANDO realizer conexão com sucesso - SINC
    ENTÃO se não há produtos na fila - SINC

Test case 10: SINC - Pedidos
    DADO que eu me conecte ao WebService - SINC
    QUANDO realizer conexão com sucesso - SINC
    ENTÃO deve verificar se há pedidos - SINC

Test case 11: SINC - Nota fiscal
    DADO que eu me conecte ao WebService - SINC
    QUANDO realizer conexão com sucesso - SINC
    ENTÃO verifico a nota fiscal do pedido - SINC