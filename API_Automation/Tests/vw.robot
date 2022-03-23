Documentation
... Suíte específica para os testes de API

*** Settings ***
Resource                  ../Shared/resources/shared_vw/resources_vw.robot
Resource                  ../Shared/variables/variables_api.robot

***Test Cases***
# Test case 1: SSR - Login com sucesso
#     DADO que eu me conecte ao WebService - VW
#     QUANDO realizar conexão com sucesso - VW
#     ENTÃO realize o login - VW

# Test case 2: VW - Login sem sucesso
#     DADO que eu me conecte ao WebService - VW
#     QUANDO realizar conexão com sucesso - VW
#     ENTÃO realize o login sem sucesso - VW

# Test case 3: VW - Login com e-mail válido e senha inválida
#     DADO que eu me conecte ao WebService - VW
#     QUANDO realizar conexão com sucesso - VW
#     ENTÃO realize o login com e-mail válido e senha inválida - VW

# Test case 4: VW - Login com e-mail inválido e senha válida
#     DADO que eu me conecte ao WebService - VW
#     QUANDO realizar conexão com sucesso - VW
#     ENTÃO realize o login com e-mail inválido e senha válida - VW

# Test case 5: VW - Login sem sucesso com senha inferior a seis caracteres e e-mail válido
#     DADO que eu me conecte ao WebService - VW
#     QUANDO realizar conexão com sucesso - VW
#     ENTÃO realize o login com senha curta - VW

Test case 6: VW - Cadastro cliente - VW
    DADO que eu me conecte ao WebService - VW
    QUANDO realizar conexão com sucesso - VW
    ENTÃO realize o cadastro com sucesso - VW

Test case 7: VW - Cadastro cliente usuário já existente - VW
    DADO que eu me conecte ao WebService - VW
    QUANDO realizar conexão com sucesso - VW
    ENTÃO não realiza o cadastro com sucesso - VW

Test case 8: VW - Cadastro sem sucesso CPF vazio - VW
    DADO que eu me conecte ao WebService - VW
    QUANDO realizar conexão com sucesso - VW
    ENTÃO não realiza o cadastro com sucesso CPF vazio - VW

# Test case 7: VW - Frete com cep 00000-000 inválido
#     DADO que eu me conecte ao WebService - VW
#     QUANDO realizar conexão com sucesso - VW
#     ENTÃO verifico se o frete 00000-000 é inválido - VW

# Test case 8: VW - Frete com cep 12345-678 inválido
#     DADO que eu me conecte ao WebService - VW
#     QUANDO realizar conexão com sucesso - VW
#     ENTÃO verifico se o frete 12345-678 é inválido - VW

# Test case 9: VW - Frete com cep 22222-222 inválido
#     DADO que eu me conecte ao WebService - VW
#     QUANDO realizar conexão com sucesso - VW
#     ENTÃO verifico se o frete 22222-222 é inválido - VW

# Test case 10: VW - Frete com cep 88888-888 inválido
#     DADO que eu me conecte ao WebService - VW
#     QUANDO realizar conexão com sucesso - VW
#     ENTÃO verifico se o frete 88888-888 é inválido - VW

# Test case 11: VW - Frete com símbolos no cep
#     DADO que eu me conecte ao WebService - VW
#     QUANDO realizar conexão com sucesso - VW
#     ENTÃO verifico se o frete é inválido com símbolos - VW

# Test case 12: VW - Frete com cep incompleto
#     DADO que eu me conecte ao WebService - VW
#     QUANDO realizar conexão com sucesso - VW
#     ENTÃO verifico se o frete é inválido quando é incompleto - VW

# Test case 13: VW - Frete com cep válido São Paulo(SP) 
#     DADO que eu me conecte ao WebService - VW
#     QUANDO realizar conexão com sucesso - VW
#     ENTÃO verifico se o cep do estado do São Paulo é válido - VW

# Test case 14: VW - Frete com cep válido Alagoas(AL)
#     DADO que eu me conecte ao WebService - VW
#     QUANDO realizar conexão com sucesso - VW
#     ENTÃO verifico se o cep do estado de Alagoas é válido - VW

# Test case 15: VW - Frete com cep válido Amapá(AP)
#     DADO que eu me conecte ao WebService - VW
#     QUANDO realizar conexão com sucesso - VW
#     ENTÃO verifico se o cep do estado do Amapá é válido - VW

# Test case 16: VW - Frete com cep válido Bahia(BA)
#     DADO que eu me conecte ao WebService - VW
#     QUANDO realizar conexão com sucesso - VW
#     ENTÃO verifico se o cep do estado da Bahia é válido - VW

# Test case 17: VW - Frete com cep válido Ceará(CE)
#     DADO que eu me conecte ao WebService - VW
#     QUANDO realizar conexão com sucesso - VW
#     ENTÃO verifico se o cep do estado do Ceará é válido - VW

# Test case 18: VW - Cotação de frete com sucesso do produto Aditivo de Radiador VW GJZW012R
#     DADO que eu me conecte ao WebService - VW
#     QUANDO realizar conexão com sucesso - VW
#     ENTÃO verifico o frete do produto Aditivo de Radiador - VW

# Test case 19: VW - Cálculo do produto Aditivo de Radiador VW GJZW012R
#     DADO que eu me conecte ao WebService - VW
#     QUANDO realizar conexão com sucesso - VW
#     ENTÃO verifico o cálculo do produto Aditivo de Radiador - VW

# Test case 20: VW - Pedido Aditivo de Radiador VW GJZW012R
#     DADO que eu me conecte ao WebService - VW
#     QUANDO realizar conexão com sucesso - VW
#     ENTÃO faça um pedido válido de Aditivo de Radiador - VW

# Test case 21: VW - Cotação de frete do produto Filtro de Ar de Motor JZZ129620C - VW
#     DADO que eu me conecte ao WebService - VW
#     QUANDO realizar conexão com sucesso - VW
#     ENTÃO verifico o frete do produto Filtro de Ar de Motor - VW

# Test case 22: VW - Cálculo do frete do produto Filtro de Ar de Motor JZZ129620C - VW
#     DADO que eu me conecte ao WebService - VW
#     QUANDO realizar conexão com sucesso - VW
#     ENTÃO verifico o frete do produto Filtro de Ar de Motor foi cálculado - VW

# Test case 23: VW - Pedido de Filtro de Ar de Motor JZZ129620C - VW
#     DADO que eu me conecte ao WebService - VW
#     QUANDO realizar conexão com sucesso - VW
#     ENTÃO faça um pedido válido de Filtro de Ar de Motor com Visa - VW

# Test case 24: VW - Cotação de frete do produto Bateria VW JZZ915105B
#     DADO que eu me conecte ao WebService - VW
#     QUANDO realizar conexão com sucesso - VW
#     ENTÃO verifico o frete do produto Bateria VW JZZ915105B - VW

# Test case 25: VW - Cálculo do frete do produto Bateria VW JZZ915105B
#     DADO que eu me conecte ao WebService - VW
#     QUANDO realizar conexão com sucesso - VW
#     ENTÃO verifico o frete do produto Bateria VW JZZ915105B foi cálculado - VW

# Test case 26: VW - Pedido de Bateria VW JZZ915105B
#     DADO que eu me conecte ao WebService - VW
#     QUANDO realizar conexão com sucesso - VW
#     ENTÃO faça um pedido válido de Bateria VW JZZ915105B com Mastercard - VW

# Test case 27: VW - Cotação de frete do produto Pastilha de Freio VW JZZ698451AB
#     DADO que eu me conecte ao WebService - VW
#     QUANDO realizar conexão com sucesso - VW
#     ENTÃO verifico o frete do produto Pastilha de Freio VW JZZ698451AB - VW

# Test case 28: VW - Cálculo do frete do produto Pastilha de Freio VW JZZ698451AB
#     DADO que eu me conecte ao WebService - VW
#     QUANDO realizar conexão com sucesso - VW
#     ENTÃO verifico o frete do produto Pastilha de Freio VW JZZ698451AB foi cálculado - VW

# Test case 29: VW - Pedido de Pastilha de Freio VW JZZ698451AB
#     DADO que eu me conecte ao WebService - VW
#     QUANDO realizar conexão com sucesso - VW
#     ENTÃO faça um pedido válido de Pastilha de Freio VW JZZ698451AB com Mastercard - VW

# Test case 30: VW - Cotação de frete do produto Disco de Freio VW JZW615301
#     DADO que eu me conecte ao WebService - VW
#     QUANDO realizar conexão com sucesso - VW
#     ENTÃO verifico o frete do produto Disco de Freio - VW

# Test case 31: VW - Cálculo do frete do produto Disco de Freio JZW615301
#     DADO que eu me conecte ao WebService - VW
#     QUANDO realizar conexão com sucesso - VW
#     ENTÃO verifico o frete do produto Disco de Freio foi cálculado - VW

# Test case 32: VW - Pedido de Disco de Freio JZW615301
#     DADO que eu me conecte ao WebService - VW
#     QUANDO realizar conexão com sucesso - VW
#     ENTÃO faça um pedido válido de Disco de Freio com Visa - VW

# Test case 33: VW - Pedido estoque Disco de Freio JZW615301
#     DADO que eu me conecte ao WebService - VW
#     QUANDO realizar conexão com sucesso - VW
#     ENTÃO devo verificar se há itens em estoque - VW