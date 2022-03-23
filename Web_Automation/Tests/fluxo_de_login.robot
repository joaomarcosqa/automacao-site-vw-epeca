Documentation
... Suíte específica para testes de login

*** Settings ***
Resource                  ../Shared/locators/login/keywords_login.robot
Resource                  ../Shared/locators/login/variables_login.robot
Resource                  ../Shared/resources/resource_commom.robot
Test Setup                Abrir navegador
Test Teardown             Fechar navegador

*** Test Case ***
# erro
# Test Case 01: Login com sucesso e-mail
#     DADO que eu esteja no site - VW
#     QUANDO acessar a página de login do site - VW
#     ENTÃO devo efetuar o login com sucesso - VW

# Test Case 02: Login sem sucesso - validação genérica
#     DADO que eu esteja no site - VW
#     QUANDO acessar a página de login do site - VW
#     ENTÃO devo efetuar o login sem sucesso - VW

# Test Case 03: Login sem sucesso - e-mail com inválido
#     DADO que eu esteja no site - VW
#     QUANDO acessar a página de login do site - VW
#     ENTÃO devo efetuar o login sem sucesso e-mail inválido - VW

# Test Case 04: Login sem sucesso - senha inválida
#     DADO que eu esteja no site - VW
#     QUANDO acessar a página de login do site - VW
#     ENTÃO devo efetuar o login sem sucesso senha inválida - VW

# Test Case 05: Login sem sucesso - e-mail não existente na base de dados
#     DADO que eu esteja no site - VW
#     QUANDO acessar a página de login do site - VW
#     ENTÃO devo efetuar o login sem sucesso e-mail inválido - VW

# incompleto
# Test Case 06: Recuperar senha com sucesso - e-mail válido
#     DADO que eu esteja no site - VW
#     QUANDO acessar a página de login do site - VW
#     ENTÃO devo recuperar senha com sucesso - VW

# incompleto
# Test Case 07: Recuperar senha sem sucesso - e-mail inválido
#     DADO que eu esteja no site - VW
#     QUANDO acessar a página de login do site - VW
#     ENTÃO devo recuperar senha sem sucesso - VW

# Test Case 08: Login sem sucesso - e-mail e senha inválidos
#     DADO que eu esteja no site - VW
#     QUANDO acessar a página de login do site - VW
#     ENTÃO devo efetuar o login sem sucesso e-mail e senha inválida - VW



