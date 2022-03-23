Documentation
... Suíte específica para os testes de API

*** Settings ***
Resource                  ../Shared/resources/shared_nbs_nasa/resources_nbs_nasa.robot
Resource                  ../Shared/variables/variables_api.robot

***Test Cases***
Test case 0: NBS_NASA - Limpar fila
    DADO que eu me conecte ao WebService - NBS_NASA
    QUANDO realizer conexão com sucesso - NBS_NASA
    ENTÃO devo limpar a fila de itens - NBS_NASA

Test case 1: NBS_NASA - Token
    DADO que eu me conecte ao WebService - NBS_NASA
    QUANDO realizer conexão com sucesso - NBS_NASA
    ENTÃO eu devo verificar o token - NBS_NASA

Test case 2: NBS_NASA - Conexão
    DADO que eu me conecte ao WebService - NBS_NASA
    QUANDO realizer conexão com sucesso - NBS_NASA
    ENTÃO verifico se estou conectado - NBS_NASA

Test case 3: NBS_NASA - Ativar cinco produtos
    DADO que eu me conecte ao WebService - NBS_NASA
    QUANDO realizer conexão com sucesso - NBS_NASA  
    ENTÃO devo ativar os 5 produtos - NBS_NASA   

Test case 4: NBS_NASA - Buscar produtos fila
    DADO que eu me conecte ao WebService - NBS_NASA 
    QUANDO realizer conexão com sucesso - NBS_NASA  
    ENTÃO verifico produtos na fila - NBS_NASA   

Test case 5: NBS_NASA - Retirar cinco produtos da fila
    DADO que eu me conecte ao WebService - NBS_NASA 
    QUANDO realizer conexão com sucesso - NBS_NASA  
    ENTÃO eu retiro 5 produtos da fila - NBS_NASA

Test case 6: NBS_NASA - Verifica se a fila está vazia
    DADO que eu me conecte ao WebService - NBS_NASA 
    QUANDO realizer conexão com sucesso - NBS_NASA  
    ENTÃO verifico se não há produtos na fila - NBS_NASA

Test case 7: NBS_NASA - Ativar dez produtos
    DADO que eu me conecte ao WebService - NBS_NASA 
    QUANDO realizer conexão com sucesso - NBS_NASA  
    ENTÃO devo ativar os 10 produtos - NBS_NASA

Test case 8: NBS_NASA - Buscar produtos na fila
    DADO que eu me conecte ao WebService - NBS_NASA 
    QUANDO realizer conexão com sucesso - NBS_NASA  
    ENTÃO verifico produtos na fila - NBS_NASA   

Test case 9: NBS_NASA - Retirar dez produtos da fila
    DADO que eu me conecte ao WebService - NBS_NASA 
    QUANDO realizer conexão com sucesso - NBS_NASA  
    ENTÃO eu retiro 10 produtos da fila - NBS_NASA

Test case 10: NBS_NASA - Verifica se a fila está vazia
    DADO que eu me conecte ao WebService - NBS_NASA 
    QUANDO realizer conexão com sucesso - NBS_NASA 
    ENTÃO verifico se não há produtos na fila - NBS_NASA

Test case 11: NBS_NASA - Ativar dez produtos
    DADO que eu me conecte ao WebService - NBS_NASA 
    QUANDO realizer conexão com sucesso - NBS_NASA  
    ENTÃO devo ativar os 10 produtos - NBS_NASA

Test case 12: NBS_NASA - Buscar produtos fila
    DADO que eu me conecte ao WebService - NBS_NASA
    QUANDO realizer conexão com sucesso - NBS_NASA
    ENTÃO verifico produtos na fila - NBS_NASA

Test case 13: NBS_NASA - Retirar cinco produtos da fila
    DADO que eu me conecte ao WebService - NBS_NASA 
    QUANDO realizer conexão com sucesso - NBS_NASA  
    ENTÃO eu retiro 5 produtos da fila - NBS_NASA

Test case 14: NBS_NASA - Verifica se há cinco produtos na fila
    DADO que eu me conecte ao WebService - NBS_NASA 
    QUANDO realizer conexão com sucesso - NBS_NASA 
    ENTÃO verifico se há 5 produtos na fila - NBS_NASA

Test case 15: NBS_NASA - Limpar fila
    DADO que eu me conecte ao WebService - NBS_NASA
    QUANDO realizer conexão com sucesso - NBS_NASA
    ENTÃO devo limpar a fila de itens - NBS_NASA    

Test case 16: NBS_NASA - Ativar 2 produtos
    DADO que eu me conecte ao WebService - NBS_NASA 
    QUANDO realizer conexão com sucesso - NBS_NASA  
    ENTÃO devo ativar os 2 produtos - NBS_NASA

Test case 17: NBS_NASA - Buscar produtos fila
    DADO que eu me conecte ao WebService - NBS_NASA
    QUANDO realizer conexão com sucesso - NBS_NASA
    ENTÃO verifico produtos na fila - NBS_NASA

Test case 18: NBS_NASA - Retirar um produto fila
    DADO que eu me conecte ao WebService - NBS_NASA 
    QUANDO realizer conexão com sucesso - NBS_NASA  
    ENTÃO eu retiro um produtos da fila - NBS_NASA

Test case 19: NBS_NASA - Buscar o produto que está na fila
    DADO que eu me conecte ao WebService - NBS_NASA 
    QUANDO realizer conexão com sucesso - NBS_NASA 
    ENTÃO verifico se há um produtos na fila - NBS_NASA

# Test case 20: NBS_NASA - Pedido    
#     DADO que eu me conecte ao WebService - NBS_NASA 
#     QUANDO realizer conexão com sucesso - NBS_NASA  
#     ENTÃO deve verificar se há pedidos - NBS_NASA

# Test case 21: NBS_NASA - Nota fiscal   
#     DADO que eu me conecte ao WebService - NBS_NASA 
#     QUANDO realizer conexão com sucesso - NBS_NASA  
#     ENTÃO verifico a nota fiscal do pedido - NBS_NASA