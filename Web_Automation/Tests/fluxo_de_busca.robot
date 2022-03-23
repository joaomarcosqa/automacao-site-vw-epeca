Documentation
... Suíte específica para testes da funcionalidade busca

*** Settings ***
Resource                  ../Shared/locators/login/variables_login.robot
Resource                  ../Shared/locators/login/keywords_login.robot
Resource                  ../Shared/locators/busca/variables_busca.robot
Resource                  ../Shared/locators/busca/keywords_busca.robot
Resource                  ../Shared/resources/resource_commom.robot
Test Setup                Abrir navegador
Test Teardown             Fechar navegador


*** Test Case ***

Test case 01: solicitar cotação com sucesso Wishlist "produto sem estoque clicar em solicitar cotação"
    DADO que eu esteja logado no site - VW
    QUANDO eu procurar o produto VW 0C3315105A - VW
    ENTAO devo solicitar cotação do produto 0C3315105A - VW

# Test case 02: solicitar cotação com sucesso Wishlist cliente logado os dados sao preenchidos automaticamente
#     DADO que eu esteja logado no site - VW
#     QUANDO eu procurar o produto VW V04011010 - VW
#     ENTAO devo solicitar cotação do produto V04011010 - VW

# Test case 03: solicitar cotação com sucesso Wishlist cliente deslogado
#     DADO que eu esteja no site - VW
#     QUANDO eu procurar o produto VW 6EA019900 - VW
#     ENTAO devo solicitar cotação do produto 6EA019900 - VW

# Test case 04: solicitar cotação sem sucesso Wishlist nome apenas com espaços
#     DADO que eu esteja logado no site - VW
#     QUANDO eu procurar o produto VW V04011033B - VW
#     ENTAO devo solicitar cotação do produto V04011033B - VW

# Test case 05: solicitar cotação sem sucesso Wishlist email invalido
#     DADO que eu esteja logado no site - VW
#     QUANDO eu procurar o produto VW 000071200AF - VW
#     ENTAO devo solicitar cotação do produto 000071200AF - VW

# # pendente, não libera botão com e-mail vazio 
# # Test case 06: solicitar cotação sem sucesso Wishlist email vazio
# #     DADO que eu esteja logado no site - VW
# #     QUANDO eu procurar o produto VW 000071120HA - VW
# #     ENTAO devo solicitar cotação do produto 000071120HA - VW

# # pendente, não libera botão com telefone vazio 
# # Test case 07: solicitar cotação sem sucesso Wishlist telefone vazio
# #     DADO que eu esteja logado no site - VW
# #     QUANDO eu procurar o produto VW 000071120HA - VW
# #     ENTAO devo solicitar cotação do produto 000071120HA - VW

# Test case 08: Busca por termo que retorne diversos produtos
#     DADO que eu esteja logado no site - VW
#     QUANDO eu procurar por bomba - VW
#     ENTAO devo analisar se foi retornado diversos produtos - VW

# Test case 09: Busca por termo que retorne uma categoria de produtos
#     DADO que eu esteja logado no site - VW
#     QUANDO eu procurar por Acessórios VW - VW
#     ENTAO devo analisar se foi retornado uma categoria com diversos produtos - VW

# Test case 10: Busca por nome de produto específico
#     DADO que eu esteja logado no site - VW
#     QUANDO eu procurar por Pino de Pistão VW 030107411L - VW
#     ENTAO devo analisar se foi retornado o produto específico - VW

# Test case 11: Busca por produto não existente
#     DADO que eu esteja logado no site - VW
#     QUANDO eu procurar por blouse - VW
#     ENTAO devo analisar se o produto blouse não existe - VW

# Test case 12: Busca por produto específico pela sugestão
#     DADO que eu esteja logado no site - VW
#     QUANDO eu procurar por VW 5U7827793B - VW
#     ENTAO devo analisar se o produto VW 5U7827793B foi retornado - VW

# Test case 13: Busca por categoria gol específica pela sugestão
#     DADO que eu esteja logado no site - VW
#     QUANDO eu procurar pela categoria gol - VW
#     ENTAO devo selecionar um produto da categoria gol - VW
