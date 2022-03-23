Documentation
... Suíte específica para os testes de API

*** Settings ***
Resource                  ../Shared/resources/shared_ssr/resources_ssr.robot
Resource                  ../Shared/variables/variables_api.robot

***Test Cases***

Test case 1: SSR - Login com sucesso
    DADO que eu me conecte ao WebService - SSR
    QUANDO realizar conexão com sucesso - SSR
    ENTÃO realize o login - SSR

Test case 2: SSR - Login sem sucesso
    DADO que eu me conecte ao WebService - SSR
    QUANDO realizar conexão com sucesso - SSR
    ENTÃO realize o login sem sucesso - SSR

Test case 3: SSR - Login com e-mail válido e senha inválida
    DADO que eu me conecte ao WebService - SSR
    QUANDO realizar conexão com sucesso - SSR
    ENTÃO realize o login com e-mail válido e senha inválida - SSR

Test case 4: SSR - Login com e-mail inválido e senha válida
    DADO que eu me conecte ao WebService - SSR
    QUANDO realizar conexão com sucesso - SSR
    ENTÃO realize o login com e-mail inválido e senha válida - SSR

Test case 5: SSR - Login sem sucesso com senha inferior a seis caracteres e e-mail válido
    DADO que eu me conecte ao WebService - SSR
    QUANDO realizar conexão com sucesso - SSR
    ENTÃO realize o login com senha curta - SSR

Test case 6: SSR - Cotação de frete com sucesso
    DADO que eu me conecte ao WebService - SSR
    QUANDO realizar conexão com sucesso - SSR
    ENTÃO verifico o frete dos produtos - SSR

Test case 7: SSR - Frete com cep 00000-000 inválido
    DADO que eu me conecte ao WebService - SSR
    QUANDO realizar conexão com sucesso - SSR
    ENTÃO verifico se o frete 00000-000 é inválido - SSR

Test case 8: SSR - Frete com cep 12345-678 inválido
    DADO que eu me conecte ao WebService - SSR
    QUANDO realizar conexão com sucesso - SSR
    ENTÃO verifico se o frete 12345-678 é inválido - SSR

Test case 9: SSR - Frete com cep 22222-222 inválido
    DADO que eu me conecte ao WebService - SSR
    QUANDO realizar conexão com sucesso - SSR
    ENTÃO verifico se o frete 22222-222 é inválido - SSR

Test case 10: SSR - Frete com cep 88888-888 inválido
    DADO que eu me conecte ao WebService - SSR
    QUANDO realizar conexão com sucesso - SSR
    ENTÃO verifico se o frete 88888-888 é inválido - SSR

Test case 11: SSR - Frete com símbolos no cep
    DADO que eu me conecte ao WebService - SSR
    QUANDO realizar conexão com sucesso - SSR
    ENTÃO verifico se o frete é inválido com símbolos - SSR

Test case 12: SSR - Frete com cep incompleto
    DADO que eu me conecte ao WebService - SSR
    QUANDO realizar conexão com sucesso - SSR
    ENTÃO verifico se o frete é inválido quando é incompleto - SSR

Test case 13: SSR - Frete com cep São Paulo(SP)
    DADO que eu me conecte ao WebService - SSR
    QUANDO realizar conexão com sucesso - SSR
    ENTÃO verifico se o cep do estado do São Paulo é válido - SSR

Test case 14: SSR - Frete com cep Alagoas(AL)
    DADO que eu me conecte ao WebService - SSR
    QUANDO realizar conexão com sucesso - SSR
    ENTÃO verifico se o cep do estado de Alagoas é válido - SSR

Test case 15: SSR - Frete com cep Amapá(AP)
    DADO que eu me conecte ao WebService - SSR
    QUANDO realizar conexão com sucesso - SSR
    ENTÃO verifico se o cep do estado do Amapá é válido - SSR

Test case 16: SSR - Frete com cep Bahia(BA)
    DADO que eu me conecte ao WebService - SSR
    QUANDO realizar conexão com sucesso - SSR
    ENTÃO verifico se o cep do estado da Bahia é válido - SSR

Test case 17: SSR - Frete com cep Ceará(CE)
    DADO que eu me conecte ao WebService - SSR
    QUANDO realizar conexão com sucesso - SSR
    ENTÃO verifico se o cep do estado do Ceará é válido - SSR

Test case 18: SSR - Calculo de frete do pedido pastilhas de freio  
    DADO que eu me conecte ao WebService - SSR
    QUANDO realizar conexão com sucesso - SSR
    ENTÃO devo analisar o calculo do frete - SSR

Test case 19: SSR - Pedido Tampas de Manopla
    DADO que eu me conecte ao WebService - SSR
    QUANDO realizar conexão com sucesso - SSR
    ENTÃO faça um pedido válido - SSR

Test case 20: SSR - Cotação de frete do produto Mesa de Garfo
    DADO que eu me conecte ao WebService - SSR
    QUANDO realizar conexão com sucesso - SSR
    ENTÃO verifico o frete do produto Mesa de Garfo - SSR

Test case 21: SSR - Cálculo do frete do produto Mesa de Garfo
    DADO que eu me conecte ao WebService - SSR
    QUANDO realizar conexão com sucesso - SSR
    ENTÃO verifico o frete do produto Mesa de Garfo foi cálculado - SSR

Test case 22: SSR - Pedido de Mesa de Garfo
    DADO que eu me conecte ao WebService - SSR
    QUANDO realizar conexão com sucesso - SSR
    ENTÃO faça um pedido válido de Mesa de Garfo com Visa - SSR

Test case 23: SSR - Cotação de frete do produto Farol Harley-Davidson
    DADO que eu me conecte ao WebService - SSR
    QUANDO realizar conexão com sucesso - SSR
    ENTÃO verifico o frete do produto Farol Harley-Davidson - SSR

Test case 24: SSR - Cálculo do frete do produto Farol Harley-Davidson
    DADO que eu me conecte ao WebService - SSR
    QUANDO realizar conexão com sucesso - SSR
    ENTÃO verifico o frete do produto Farol Harley-Davidson foi cálculado - SSR

Test case 25: SSR - Pedido de Farol Harley-Davidson
    DADO que eu me conecte ao WebService - SSR
    QUANDO realizar conexão com sucesso - SSR
    ENTÃO faça um pedido válido de Farol Harley-Davidson com Mastercard - SSR

Test case 26: SSR - Cotação de frete do produto Pastilha de Freio
    DADO que eu me conecte ao WebService - SSR
    QUANDO realizar conexão com sucesso - SSR
    ENTÃO verifico o frete do produto Pastilha de Freio - SSR

Test case 27: SSR - Cálculo do frete do produto Pastilha de Freio
    DADO que eu me conecte ao WebService - SSR
    QUANDO realizar conexão com sucesso - SSR
    ENTÃO verifico o frete do produto Pastilha de Freio foi cálculado - SSR

Test case 28: SSR - Pedido de Pastilha de Freio
    DADO que eu me conecte ao WebService - SSR
    QUANDO realizar conexão com sucesso - SSR
    ENTÃO faça um pedido válido de Pastilha de Freio com Mastercard - SSR

Test case 29: SSR - Cotação de frete do produto Parafuso
    DADO que eu me conecte ao WebService - SSR
    QUANDO realizar conexão com sucesso - SSR
    ENTÃO verifico o frete do produto Parafuso - SSR

Test case 30: SSR - Cálculo do frete do produto Parafuso
    DADO que eu me conecte ao WebService - SSR
    QUANDO realizar conexão com sucesso - SSR
    ENTÃO verifico o frete do produto Parafuso foi cálculado - SSR

Test case 31: SSR - Pedido de Parafuso
    DADO que eu me conecte ao WebService - SSR
    QUANDO realizar conexão com sucesso - SSR
    ENTÃO faça um pedido válido de Parafuso com Visa - SSR

Test case 32: SSR - Pedido estoque
    DADO que eu me conecte ao WebService - SSR
    QUANDO realizar conexão com sucesso - SSR
    ENTÃO devo verificar se há itens em estoque - SSR