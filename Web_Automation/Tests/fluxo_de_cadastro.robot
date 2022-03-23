Documentation
... Suíte específica para testes de cadastro

*** Settings ***
Resource                  ../Shared/locators/login/variables_login.robot
Resource                  ../Shared/locators/login/keywords_login.robot
Resource                  ../Shared/locators/cadastro/variables_cadastro.robot
Resource                  ../Shared/locators/cadastro/keywords_cadastro.robot
Resource                  ../Shared/resources/resource_commom.robot
Test Setup                Abrir navegador
Test Teardown             Fechar navegador

*** Test Case ***
# Test Case 01: Usuário cadastrado com sucesso
#     DADO que eu esteja no site - VW
#     QUANDO acessar a página de cadastro do site - VW
#     ENTÃO devo realizar o cadastro no site com sucesso - VW

# Test Case 02: Cadastro de usuário sem sucesso por email invalido
#     DADO que eu esteja no site - VW
#     QUANDO acessar a página de cadastro do site - VW
#     ENTÃO devo realizar tentativa de cadastro com e-mail inválido - VW

#erro esperado porque o teste está realizando o cadastro indevidamente
# Test Case 03: Cadastro de usuário sem sucesso campo nome com um caractere
#     DADO que eu esteja no site - VW
#     QUANDO acessar a página de cadastro do site - VW
#     ENTÃO devo realizar uma tentativa de cadastro com apenas um caracter no campo nome - VW

# Test Case 04: Cadastro de usuário sem sucesso campo nome vazio
#     DADO que eu esteja no site - VW
#     QUANDO acessar a página de cadastro do site - VW
#     ENTÃO devo deixar campo nome vazio e realizar tentativa de cadastro - VW

# Test Case 05: Cadastro de usuário sem sucesso campo sobrenome vazio
#     DADO que eu esteja no site - VW
#     QUANDO acessar a página de cadastro do site - VW
#     ENTÃO devo deixar campo sobrenome vazio e realizar tentativa de cadastro - VW

# Test Case 06: Cadastro de usuário sem sucesso preenchimento invalido dos campos
#     DADO que eu esteja no site - VW
#     QUANDO acessar a página de cadastro do site - VW
#     ENTÃO devo deixar todos os campos vazios - VW

# Test Case 07: Usuário feminino cadastrado com sucesso
#     DADO que eu esteja no site - VW
#     QUANDO acessar a página de cadastro do site - VW
#     ENTÃO devo realizar o cadastro feminino - VW

# Test Case 08: Usuário masculino cadastrado com sucesso
#     DADO que eu esteja no site - VW
#     QUANDO acessar a página de cadastro do site - VW
#     ENTÃO devo realizar o cadastro masculino - VW

# Test Case 09: Usuário gênero não informado cadastrado com sucesso
#     DADO que eu esteja no site - VW
#     QUANDO acessar a página de cadastro do site - VW
#     ENTÃO devo realizar o cadastro genero nao informado - VW

#erro esperado porque o teste está realizando o cadastro indevidamente 
# Test Case 10: Cadastro de usuário sem sucesso com espaço no lugar do nome
#     DADO que eu esteja no site - VW
#     QUANDO acessar a página de cadastro do site - VW
#     ENTÃO devo realizar o cadastro com o campo nome vazio - VW

#erro esperado porque o teste está realizando o cadastro indevidamente
# Test Case 11: Cadastro de usuário sem sucesso com espaço no lugar do RG 
#     DADO que eu esteja no site - VW
#     QUANDO acessar a página de cadastro do site - VW
#     ENTÃO devo realizar o cadastro com o campo rg vazio - VW

# Test Case 12: Cadastro de usuário sem sucesso validação no campo obrigatório E-mail
#     DADO que eu esteja no site - VW
#     QUANDO acessar a página de cadastro do site - VW
#     ENTÃO devo realizar o cadastro com o campo e-mail vazio - VW

# Test Case 13: Cadastro de usuário sem sucesso por campo senha vazio
#     DADO que eu esteja no site - VW
#     QUANDO acessar a página de cadastro do site - VW
#     ENTÃO devo efetuar um tentativa de cadastro com o campo senha vazio - VW
