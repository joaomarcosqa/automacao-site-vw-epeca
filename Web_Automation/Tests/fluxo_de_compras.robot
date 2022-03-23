Documentation
... Suíte específica para testes de compra

*** Settings ***
Resource                  ../Shared/locators/login/variables_login.robot
Resource                  ../Shared/locators/login/keywords_login.robot
Resource                  ../Shared/locators/compras/variables_compras.robot
Resource                  ../Shared/locators/compras/keywords_compras.robot
Resource                  ../Shared/resources/resource_commom.robot
Test Setup                Abrir navegador
Test Teardown             Fechar navegador

*** Test Case ***
# Test case 01: Fluxo de compra com novo endereço cadastrado na tela de checkout
#     DADO que eu esteja logado no site - VW
#     QUANDO eu adicionar o produto VW JZZ115561A no carrinho - VW
#     ENTÃO devo realizar a compra do produto VW JZZ115561A - VW

# Test case 02: Fluxo de compra cartão de credito visa com sucesso
#     DADO que eu esteja logado no site - VW
#     QUANDO eu adicionar o produto VW JZZ819653 no carrinho - VW
#     ENTÃO devo realizar a compra do produto VW JZZ819653 - VW

# Test case 03: Fluxo de compra cartão de credito master com sucesso
#     DADO que eu esteja logado no site - VW
#     QUANDO eu adicionar o produto VW JZW201511 no carrinho - VW
#     ENTÃO devo realizar a compra do produto VW JZW201511 - VW

# Test case 04: Fluxo de compra cartão de credito elo com sucesso
#     DADO que eu esteja logado no site - VW
#     QUANDO eu adicionar o produto VW JZZ129620C no carrinho - VW
#     ENTÃO devo realizar a compra do produto VW JZZ129620C - VW

# Test case 05: Fluxo de compra cartão de crédito hipercard com sucesso
#     DADO que eu esteja logado no site - VW
#     QUANDO eu adicionar o produto VW GJZW012R2 no carrinho - VW
#     ENTÃO devo realizar a compra do produto VW GJZW012R2 - VW

# Test case 06: Fluxo de compra cartão de credito visa sem sucesso
#     DADO que eu esteja logado no site - VW
#     QUANDO eu adicionar o produto VW N90856001 no carrinho - VW
#     ENTÃO devo realizar a compra do produto VW N90856001 - VW

# Test case 07: Fluxo de compra cartão de credito master sem sucesso
#     DADO que eu esteja logado no site - VW
#     QUANDO eu adicionar o produto VW 000010006 no carrinho - VW
#     ENTÃO devo realizar a compra do produto VW 000010006 - VW

# Test case 08: Fluxo de compra cartão de credito elo sem sucesso
#     DADO que eu esteja logado no site - VW
#     QUANDO eu adicionar o produto VW JZZ698151AE no carrinho - VW
#     ENTÃO devo realizar a compra do produto VW JZZ698151AE - VW

# Test case 09: Fluxo de compra cartão de credito hipercard sem sucesso
#     DADO que eu esteja logado no site - VW
#     QUANDO eu adicionar o produto VW 5Z0807183A no carrinho - VW
#     ENTÃO devo realizar a compra do produto VW 5Z0807183A - VW

# Test case 10: Fluxo de compra endereço ja cadastrado
#     DADO que eu esteja logado no site - VW
#     QUANDO eu adicionar o produto VW WHT005263 no carrinho - VW
#     ENTÃO devo realizar a compra do produto VW WHT005263 - VW

# Test case 11: Fluxo de compra em 1 parcela com sucesso
#     DADO que eu esteja logado no site - VW
#     QUANDO eu adicionar o produto VW N0177382 no carrinho - VW
#     ENTÃO devo realizar a compra do produto VW N0177382 com uma parcela - VW

# Test case 12: Fluxo de compra em 2 parcelas com sucesso
#     DADO que eu esteja logado no site - VW
#     QUANDO eu adicionar o produto VW N0177382 no carrinho - VW
#     ENTÃO devo realizar a compra do produto VW N0177382 com duas parcelas - VW

# Test case 13: Fluxo de compra em 3 parcelas com sucesso
#     DADO que eu esteja logado no site - VW
#     QUANDO eu adicionar o produto VW N0177382 no carrinho - VW
#     ENTÃO devo realizar a compra do produto VW N0177382 com tres parcelas - VW

# Test case 14: Fluxo de compra em 4 parcelas com sucesso
#     DADO que eu esteja logado no site - VW
#     QUANDO eu adicionar o produto VW N0177382 no carrinho - VW
#     ENTÃO devo realizar a compra do produto VW N0177382 com quatro parcelas - VW

# Test case 15: Fluxo de compra em 5 parcelas com sucesso
#     DADO que eu esteja logado no site - VW
#     QUANDO eu adicionar o produto VW N0177382 no carrinho - VW
#     ENTÃO devo realizar a compra do produto VW N0177382 com cinco parcelas - VW

# Test case 16: Fluxo de compra em 6 parcelas com sucesso
#     DADO que eu esteja logado no site - VW
#     QUANDO eu adicionar o produto VW N0177382 no carrinho - VW
#     ENTÃO devo realizar a compra do produto VW N0177382 com seis parcelas - VW

# Test case 17: Fluxo de compra em 7 parcelas com sucesso
#     DADO que eu esteja logado no site - VW
#     QUANDO eu adicionar o produto VW N0177382 no carrinho - VW
#     ENTÃO devo realizar a compra do produto VW N0177382 com sete parcelas - VW

# Test case 18: Fluxo de compra em 8 parcelas com sucesso
#     DADO que eu esteja logado no site - VW
#     QUANDO eu adicionar o produto VW N0177382 no carrinho - VW
#     ENTÃO devo realizar a compra do produto VW N0177382 com oito parcelas - VW

# Test case 19: Fluxo de compra em 9 parcelas com sucesso
#     DADO que eu esteja logado no site - VW
#     QUANDO eu adicionar o produto VW N0177382 no carrinho - VW
#     ENTÃO devo realizar a compra do produto VW N0177382 com nove parcelas - VW

# Test case 20: Fluxo de compra em 10 parcelas com sucesso
#     DADO que eu esteja logado no site - VW
#     QUANDO eu adicionar o produto VW N0177382 no carrinho - VW
#     ENTÃO devo realizar a compra do produto VW N0177382 com dez parcelas - VW

# Test case 20: Fluxo de compra com cupom de desconto valido
#     DADO que eu esteja logado no site - VW
#     QUANDO eu adicionar o produto VW N0177382 no carrinho - VW
#     ENTÃO devo realizar a compra do produto VW N0177382 com dez parcelas - VW
