Documentation
... Suíte específica para os testes de API

*** Settings ***
Resource                  ../Shared/resources/shared_nbs/resources_nbs.robot
Resource                  ../Shared/variables/variables_api.robot

***Test Cases***
Test case 1: NBS - Token
    DADO que eu me conecte ao WebService - NBS
    QUANDO realizer conexão com sucesso - NBS
    ENTÃO eu devo verificar o token - NBS

Test case 2: NBS - Conexão
    DADO que eu me conecte ao WebService - NBS
    QUANDO realizer conexão com sucesso - NBS
    ENTÃO verifico se estou conectado - NBS

# Test case 3: NBS - Ativar produtos
#     DADO que eu me conecte ao WebService - NBS
#     QUANDO realizer conexão com sucesso - NBS
#     ENTÃO devo ativar os produtos - NBS

# Test case 4: NBS - Buscar produtos fila
#     DADO que eu me conecte ao WebService - NBS
#     QUANDO realizer conexão com sucesso - NBS
#     ENTÃO verifico produtos na fila - NBS

# Test case 5: NBS - Retirar produtos fila
#     DADO que eu me conecte ao WebService - NBS
#     QUANDO realizer conexão com sucesso - NBS
#     ENTÃO eu retiro produto da fila - NBS

# Test case 6: NBS - Buscar produtos fila
#     DADO que eu me conecte ao WebService - NBS 
#     QUANDO realizer conexão com sucesso - NBS  
#     ENTÃO verifico produtos na fila - NBS

# Test case 7: NBS - Ativar produtos
#     DADO que eu me conecte ao WebService - NBS 
#     QUANDO realizer conexão com sucesso - NBS  
#     ENTÃO devo ativar os produtos - NBS   

# Test case 8: NBS - Buscar produtos fila
#     DADO que eu me conecte ao WebService - NBS 
#     QUANDO realizer conexão com sucesso - NBS  
#     ENTÃO verifico produtos na fila - NBS   

# Test case 9: NBS - Retirar produtos fila
#     DADO que eu me conecte ao WebService - NBS 
#     QUANDO realizer conexão com sucesso - NBS  
#     ENTÃO eu retiro produto da fila - NBS

# Test case 10: NBS - Buscar produtos fila
#     DADO que eu me conecte ao WebService - NBS 
#     QUANDO realizer conexão com sucesso - NBS 
#     ENTÃO verifico produtos na fila - NBS  

# Test case 11: NBS - Pedido    
#     DADO que eu me conecte ao WebService - NBS 
#     QUANDO realizer conexão com sucesso - NBS  
#     ENTÃO deve verificar se há pedidos - NBS

# Test case 12: NBS - Nota fiscal   
#     DADO que eu me conecte ao WebService - NBS 
#     QUANDO realizer conexão com sucesso - NBS  
#     ENTÃO verifico a nota fiscal do pedido - NBS