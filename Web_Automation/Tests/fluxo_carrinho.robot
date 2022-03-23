Documentation
... Suíte específica para testes de carrinho

*** Settings ***
Resource                  ../Shared/locators/login/variables_login.robot
Resource                  ../Shared/locators/login/keywords_login.robot
Resource                  ../Shared/locators/carrinho/variables_carrinho.robot
Resource                  ../Shared/locators/carrinho/keywords_carrinho.robot
Resource                  ../Shared/resources/resource_commom.robot
Test Setup                Abrir navegador
Test Teardown             Fechar navegador

*** Test Case ***

Test case 01: Validar quantidade e preço do produto Filtro de Óleo VW JZZ115561A
    DADO que eu esteja logado no site - VW
    QUANDO eu procurar o produto VW JZZ115561A - VW
    ENTAO devo validar a quantidade e preço do produto JZZ115561A - VW

Test case 02: Excluir o produto Filtro de Óleo VW JZZ115561A do carrinho
    DADO que eu esteja logado no site - VW
    QUANDO eu adicionar o produto VW JZZ115561A no carrinho - VW
    ENTAO devo retirar o produto VW JZZ115561A do carrinho - VW

Test case 03: Aumentar quantidade do produto Filtro de Óleo VW JZZ115561A do carrinho
    DADO que eu esteja logado no site - VW
    QUANDO eu adicionar o produto VW JZZ115561A no carrinho - VW
    ENTAO devo aumentar a quantidade do produto VW JZZ115561A - VW

# Test case 04: Diminuir quantidade do produto Filtro de Óleo VW JZZ115561A do carrinho
#     DADO que eu esteja logado no site - VW
#     QUANDO eu adicionar o produto VW JZZ115561A no carrinho com cinco itens - VW
#     ENTAO devo diminuir a quantidade do produto VW JZZ115561A - VW

# Test case 05: Produto VW 5Z0807183A está no carrinho deve ser o mesmo que está no checkout 
#     DADO que eu esteja logado no site - VW
#     QUANDO eu procurar o produto VW 5Z0807183A - VW
#     ENTAO devo validar o preço do carrinho e checkout do produto VW 5Z0807183A - VW

# Test case 06: Informar CEP invalido na simulação de frete Filtro de Óleo VW JZZ115561A
#     DADO que eu esteja logado no site - VW
#     QUANDO eu procurar o produto VW JZZ115561A - VW
#     ENTAO devo validar a simulação de frete do produto JZZ115561A - VW

# Test case 07: frete retirada na loja do produto Filtro de Óleo VW JZZ115561A
#     DADO que eu esteja logado no site - VW
#     QUANDO eu procurar o produto VW JZZ115561A - VW
#     ENTAO devo validar o frete retirar na loja do produto JZZ115561A - VW

# Test case 08: frete correios pac do produto Filtro de Óleo VW JZZ115561A
#     DADO que eu esteja logado no site - VW
#     QUANDO eu procurar o produto VW JZZ115561A - VW
#     ENTAO devo validar o frete correios pac do produto JZZ115561A - VW

# Test case 09: frete correios sedex do produto Filtro de Óleo VW JZZ115561A
#     DADO que eu esteja logado no site - VW
#     QUANDO eu procurar o produto VW JZZ115561A - VW
#     ENTAO devo validar o frete correios sedex do produto JZZ115561A - VW

# Test case 10: frete jadlog stand do produto Filtro de Óleo VW JZZ115561A
#     DADO que eu esteja logado no site - VW
#     QUANDO eu procurar o produto VW JZZ115561A - VW
#     ENTAO devo validar o frete jadlog stand do produto JZZ115561A - VW

# Test case 11: frete jadlog express do produto Filtro de Óleo VW JZZ115561A
#     DADO que eu esteja logado no site - VW
#     QUANDO eu procurar o produto VW JZZ115561A - VW
#     ENTAO devo validar o frete jadlog express do produto JZZ115561A - VW

Test case 12: excluir endereço
    DADO que eu esteja logado no site - VW
    QUANDO acessar a minha conta - VW
    ENTAO devo excluir os endereços cadastrados - VW

Test case 13: Validação preço majorado Rio de Janeiro
    DADO que eu esteja logado no site - VW
    QUANDO eu procurar o produto VW 2H0807183A - VW
    ENTAO devo validar o preço majorado do produto rio de janeiro - VW

Test case 12: excluir endereço
    DADO que eu esteja logado no site - VW
    QUANDO acessar a minha conta - VW
    ENTAO devo excluir os endereços cadastrados - VW

Test case 14: Validação preço majorado Bahia
    DADO que eu esteja logado no site - VW
    QUANDO eu procurar o produto VW JZZ698151AK - VW
    ENTAO devo validar o preço majorado do produto bahia - VW

Test case 12: excluir endereço
    DADO que eu esteja logado no site - VW
    QUANDO acessar a minha conta - VW
    ENTAO devo excluir os endereços cadastrados - VW

Test case 15: Validação preço majorado Parana
    DADO que eu esteja logado no site - VW
    QUANDO eu procurar o produto VW JZZ698151AK - VW
    ENTAO devo validar o preço majorado do produto parana - VW

Test case 12: excluir endereço
    DADO que eu esteja logado no site - VW
    QUANDO acessar a minha conta - VW
    ENTAO devo excluir os endereços cadastrados - VW

Test case 16: Validação preço majorado São Paulo
    DADO que eu esteja logado no site - VW
    QUANDO eu procurar o produto VW JZZ698151AK - VW
    ENTAO devo validar o preço majorado do produto sao paulo - VW

Test case 17: excluir endereço
    DADO que eu esteja logado no site - VW
    QUANDO acessar a minha conta - VW
    ENTAO devo excluir os endereços cadastrados - VW

Test case 18: Validação preço majorado Santa Catarina
    DADO que eu esteja logado no site - VW
    QUANDO eu procurar o produto VW JZZ698151AK - VW
    ENTAO devo validar o preço majorado do produto santa catarina - VW
