Documentation
... Suíte específica para testes da funcionalidade informações da conta

*** Settings ***
Resource                  ../Shared/locators/login/variables_login.robot
Resource                  ../Shared/locators/login/keywords_login.robot
Resource                  ../Shared/locators/info_conta/variables_info_conta.robot
Resource                  ../Shared/locators/info_conta/keywords_info_conta.robot
Resource                  ../Shared/resources/resource_commom.robot
Test Setup                Abrir navegador
Test Teardown             Fechar navegador

*** Test Case ***
Test case 01: Acessar as informações da conta
    DADO que eu esteja no site - VW
    QUANDO eu fizer o login no site - VW
    ENTAO devo acessar as informações da conta - VW

Test case 02: Alterar endereço com sucesso
    DADO que eu esteja no site - VW
    QUANDO eu fizer o login no site - VW
    ENTAO devo alterar o endereço da conta - VW

erro esperado porque o teste está realizando o cadastro indevidamente
Test case 03: Inserir cep invalido 00000-000
    DADO que eu esteja no site - VW
    QUANDO eu fizer o login no site - VW
    ENTAO devo alterar o cep por um inválido - VW

Test case 04: Inserir cep com formato menor de 8 caracteres
    DADO que eu esteja no site - VW
    QUANDO eu fizer o login no site - VW
    ENTAO devo alterar o cep menor de 8 caracteres - VW

Test case 05: Alterar Cep verificar se os campos bairro rua e cidade são preenchidos automaticamente
    DADO que eu esteja no site - VW
    QUANDO eu fizer o login no site - VW
    ENTAO devo alterar o cep e verificar se os campos são preenchidos - VW

Test case 06: Deixar nome vazio da minha conta
    DADO que eu esteja no site - VW
    QUANDO eu fizer o login no site - VW
    ENTAO devo deixar nome da minha conta vazio - VW

Test case 07: Deixar data de nascimento vazio da minha conta
    DADO que eu esteja no site - VW
    QUANDO eu fizer o login no site - VW
    ENTAO devo deixar data de nascimento da minha conta vazio sem espaços - VW

Test case 08: Deixar celular vazio da minha conta
    DADO que eu esteja no site - VW
    QUANDO eu fizer o login no site - VW
    ENTAO devo deixar o celular da minha conta vazio - VW

Test case 09: Deixar Cep vazio da minha conta
    DADO que eu esteja no site - VW
    QUANDO eu fizer o login no site - VW
    ENTAO devo deixar o cep da minha conta vazio - VW

Test case 10: Deixar o campo da rua vazio da minha conta
    DADO que eu esteja no site - VW
    QUANDO eu fizer o login no site - VW
    ENTAO devo deixar o campo da rua vazio minha conta - VW

# Test case 11: Deixar bairro vazio da minha conta
#     DADO que eu esteja no site - VW
#     QUANDO eu fizer o login no site - VW
#     ENTAO devo deixar o campo bairro vazio da minha conta - VW

# Test case 12: Deixar número vazio da minha conta
#     DADO que eu esteja no site - VW
#     QUANDO eu fizer o login no site - VW
#     ENTAO devo deixar o campo número vazio da minha conta - VW

# aguardando retirarem os espaços do campo 
# Test case 13: Recuperar senha com sucesso
#     DADO que eu esteja no site - VW
#     QUANDO eu fizer o login no site - VW
#     ENTAO devo recuperar senha com sucesso da minha conta - VW

#Com erro, não dá para colocar nada no campo e-mail para simular erro
# Test case 14: Recuperar senha sem sucesso
#     DADO que eu esteja no site - VW
#     QUANDO eu fizer o login no site - VW
#     ENTAO devo recuperar senha sem sucesso da minha conta - VW