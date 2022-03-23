Documentation
... Suíte com palavras chave de informacoes da conta do sistema

*** Settings ***
Library    SeleniumLibrary
Library    String


*** Keywords ***
# DADO que eu esteja no site - VW
#     Go To       ${home_inicio}

QUANDO eu fizer o login no site - VW
    Click Element                           ${perfil_entrar}
    Wait Until Element Is Visible           ${ponteiro_login}
    Input Text                              ${campo_email}                  ${email}
    Input Password                          ${campo_senha}                  ${senha}
    Click Button                            ${btn_entrar}

ENTAO devo acessar as informações da conta - VW
    Wait Until Element Is Visible           ${perfil_minha_conta}
    Sleep                                   5
    Click Element                           ${perfil_minha_conta}
    Sleep                                   8
    Wait Until Element Is Visible           ${ponteiro_minha_conta}

ENTAO devo alterar o endereço da conta - VW
    ${cep}                                  FakerLibrary.postcode
    Wait Until Element Is Visible           ${perfil_minha_conta}
    Sleep                                   5
    Click Element                           ${perfil_minha_conta}
    Sleep                                   8
    Wait Until Element Is Visible           ${ponteiro_minha_conta}
    Wait Until Element Is Visible           ${campo_cep}
    Input Text                              ${campo_cep}                            ${cep}
    Sleep                                   3
    Input Text                              ${campo_numero}                         ${numero}
    Click Element                           ${btn_gravar_cadastro}
    Sleep                                   3
    Wait Until Element Is Visible           ${campo_msg_alteracao_endereco}
    Should Contain                          ${campo_msg_alteracao_endereco}         ${msg_alteracao_endereco}

ENTAO devo alterar o cep por um inválido - VW
    Wait Until Element Is Visible           ${perfil_minha_conta}
    Sleep                                   5
    Click Element                           ${perfil_minha_conta}
    Sleep                                   8
    Wait Until Element Is Visible           ${ponteiro_minha_conta}
    Wait Until Element Is Visible           ${campo_cep}
    Input Text                              ${campo_cep}                            ${cep_invalido}
    Sleep                                   3
    Input Text                              ${campo_numero}                         ${numero}
    Click Element                           ${btn_gravar_cadastro}
    Sleep                                   3
    Wait Until Element Is Visible           ${campo_msg_erro_cep}
    Should Contain                          ${campo_msg_erro_cep}         ${msg_erro_alteracao_cep} 

ENTAO devo alterar o cep menor de 8 caracteres - VW
    Wait Until Element Is Visible           ${perfil_minha_conta}
    Sleep                                   5
    Click Element                           ${perfil_minha_conta}
    Sleep                                   8
    Wait Until Element Is Visible           ${ponteiro_minha_conta}
    Wait Until Element Is Visible           ${campo_cep}
    Input Text                              ${campo_cep}                            ${cep_curto_invalido}
    Sleep                                   3
    Wait Until Element Is Visible           ${cookie}
    Click Element                           ${cookie}
    Input Text                              ${campo_numero}                         ${numero}
    Click Element                           ${btn_gravar_cadastro}
    Sleep                                   3
    Wait Until Element Is Visible           ${campo_msg_erro_cep}
    Should Contain                          ${campo_msg_erro_cep}         ${msg_erro_alteracao_cep}

ENTAO devo alterar o cep e verificar se os campos são preenchidos - VW
    ${cep}=                                 Set Variable                        07950020
    Wait Until Element Is Visible           ${perfil_minha_conta}
    Sleep                                   5
    Click Element                           ${perfil_minha_conta}
    Sleep                                   8
    Wait Until Element Is Visible           ${ponteiro_minha_conta}
    Wait Until Element Is Visible           ${campo_cep}
    Input Text                              ${campo_cep}                        ${cep}
    Sleep                                   5
    Input Text                              ${campo_numero}                     ${numero}
    # Click Element                           ${btn_gravar_cadastro}
    Sleep                                   3
    Wait Until Element Is Visible           ${minha_conta_campo_rua}
    Should Contain                          ${minha_conta_campo_rua}            ${minha_conta_rua}
    # Wait Until Element Is Visible           ${minha_conta_campo_bairro}
    # Should Contain                          ${minha_conta_campo_bairro}         ${minha_conta_bairro}
    Wait Until Element Is Visible           ${minha_conta_campo_cidade}
    Should Contain                          ${minha_conta_campo_cidade}         ${minha_conta_cidade}
    Wait Until Element Is Visible           ${minha_conta_campo_estado}
    Should Contain                          ${minha_conta_campo_estado}         ${minha_conta_estado}

ENTAO devo deixar nome da minha conta vazio - VW
    Wait Until Element Is Visible           ${perfil_minha_conta}
    Sleep                                   5
    Click Element                           ${perfil_minha_conta}
    Sleep                                   8
    Wait Until Element Is Visible           ${ponteiro_minha_conta}
    Wait Until Element Is Visible           ${cookie}
    Click Element                           ${cookie}
    Click Element                           ${campo_nome_minha_conta}
    FOR    ${index}    IN RANGE    15
    Press Keys          ${campo_nome_minha_conta}                     BACKSPACE
    END
    FOR    ${index}    IN RANGE    10
    Press Keys          ${campo_nome_minha_conta}                     SPACE
    Sleep               1
    END
    Click Element                           ${btn_gravar_cadastro}
    Sleep               1
    Wait Until Element Is Visible           ${campo_msg_alteracao_endereco}
    Should Contain                          ${campo_msg_alteracao_endereco}         ${msg_alteracao_endereco}

ENTAO devo deixar data de nascimento da minha conta vazio sem espaços - VW
    Wait Until Element Is Visible           ${perfil_minha_conta}
    Sleep                                   5
    Click Element                           ${perfil_minha_conta}
    Sleep                                   8
    Wait Until Element Is Visible           ${ponteiro_minha_conta}
    Wait Until Element Is Visible           ${cookie}
    Click Element                           ${cookie}
    FOR    ${index}    IN RANGE    15
    Press Keys          ${campo_minha_conta_dtnascimento}                    BACKSPACE
    END
    Sleep                                   1
    Click Element                           ${btn_gravar_cadastro}
    Wait Until Element Is Visible           ${erro_dtnascimento}
    Should Contain                          ${erro_dtnascimento}              ${msg_dtnascimento}

ENTAO devo deixar data de nascimento da minha conta vazio - VW
    Wait Until Element Is Visible           ${perfil_minha_conta}
    Sleep                                   5
    Click Element                           ${perfil_minha_conta}
    Sleep                                   8
    Wait Until Element Is Visible           ${ponteiro_minha_conta}
    Wait Until Element Is Visible           ${cookie}
    Click Element                           ${cookie}
    FOR    ${index}    IN RANGE    15
    Press Keys          ${campo_minha_conta_dtnascimento}                    BACKSPACE
    END
    Sleep                                   1
    Click Element                           ${btn_gravar_cadastro}
    Wait Until Element Is Visible           ${erro_dtnascimento}
    Should Contain                          ${erro_dtnascimento}              ${msg_dtnascimento}

ENTAO devo deixar o celular da minha conta vazio - VW
    Wait Until Element Is Visible           ${perfil_minha_conta}
    Sleep                                   5
    Click Element                           ${perfil_minha_conta}
    Sleep                                   8
    Wait Until Element Is Visible           ${ponteiro_minha_conta}
    Wait Until Element Is Visible           ${cookie}
    Click Element                           ${cookie}
    Wait Until Element Is Visible           ${campo_celular_minha_conta}
    Click Element                           ${campo_celular_minha_conta}
    FOR    ${index}    IN RANGE    15
    Wait Until Element Is Visible           ${campo_celular_minha_conta}
    Press Keys          ${campo_celular_minha_conta}                    BACKSPACE
    Sleep                                   1
    END
    
    Click Element                           ${btn_gravar_cadastro}
    Wait Until Element Is Visible           ${erro_celular}
    Should Contain                          ${erro_celular}              ${msg_celular}

ENTAO devo deixar o cep da minha conta vazio - VW
    Wait Until Element Is Visible           ${perfil_minha_conta}
    Sleep                                   5
    Click Element                           ${perfil_minha_conta}
    Sleep                                   8
    Wait Until Element Is Visible           ${ponteiro_minha_conta}
    Wait Until Element Is Visible           ${cookie}
    Click Element                           ${cookie}
    Wait Until Element Is Visible           ${campo_cep}
    FOR    ${index}    IN RANGE    15
    Wait Until Element Is Visible           ${campo_cep}
    Press Keys          ${campo_cep}        BACKSPACE
    END
    Sleep                                   1
    Click Element                           ${campo_numero}
    Click Element                           ${btn_gravar_cadastro}
    Sleep                                   3
    Wait Until Element Is Visible           ${campo_msg_erro_cep}
    Should Contain                          ${campo_msg_erro_cep}         ${msg_erro_alteracao_cep}

ENTAO devo deixar o campo da rua vazio minha conta - VW
    Wait Until Element Is Visible               ${perfil_minha_conta}
    Sleep                                       5
    Click Element                               ${perfil_minha_conta}
    Sleep                                       8
    Wait Until Element Is Visible               ${ponteiro_minha_conta}
    Wait Until Element Is Visible               ${cookie}
    Click Element                               ${cookie}
    Wait Until Element Is Visible               ${campo_minha_conta_rua}
    Click Element                               ${campo_minha_conta_rua}
    FOR    ${index}    IN RANGE    30
    Wait Until Element Is Visible               ${campo_minha_conta_rua}
    Press Keys                                  ${campo_minha_conta_rua}        BACKSPACE
    END
    Click Element                               ${btn_gravar_cadastro}
    Sleep                                       3
    Wait Until Element Is Visible               ${erro_logradouro}
    Should Contain                              ${erro_logradouro}              ${msg_logradouro}

ENTAO devo deixar o campo bairro vazio da minha conta - VW
    Wait Until Element Is Visible               ${perfil_minha_conta}
    Sleep                                       5
    Click Element                               ${perfil_minha_conta}
    Sleep                                       8
    Wait Until Element Is Visible               ${ponteiro_minha_conta}
    Wait Until Element Is Visible               ${cookie}
    Click Element                               ${cookie}
    Click Element                               ${campo_bairro_minha_conta}
    FOR    ${index}    IN RANGE    15
    Wait Until Element Is Visible               ${campo_bairro_minha_conta}
    Press Keys                                  ${campo_bairro_minha_conta}        BACKSPACE
    END
    Click Element                               ${btn_gravar_cadastro}
    Sleep                                       3
    Wait Until Element Is Visible               ${erro_bairro}
    Should Contain                              ${erro_bairro}              ${msg_bairro}

ENTAO devo deixar o campo número vazio da minha conta - VW
    Wait Until Element Is Visible               ${perfil_minha_conta}
    Sleep                                       5
    Click Element                               ${perfil_minha_conta}
    Sleep                                       8
    Wait Until Element Is Visible               ${ponteiro_minha_conta}
    Wait Until Element Is Visible               ${cookie}
    Click Element                               ${cookie}
    Click Element                               ${campo_numero}
    FOR    ${index}    IN RANGE    15
    Wait Until Element Is Visible               ${campo_numero}
    Press Keys                                  ${campo_numero}        BACKSPACE
    END
    Click Element                               ${btn_gravar_cadastro}
    Sleep                                       3
    Wait Until Element Is Visible               ${erro_numero}
    Should Contain                              ${erro_numero}              ${msg_numero}

ENTAO devo recuperar senha com sucesso da minha conta - VW
    Wait Until Element Is Visible               ${perfil_minha_conta}
    Sleep                                       5
    Click Element                               ${perfil_minha_conta}
    Sleep                                       8
    Wait Until Element Is Visible               ${ponteiro_minha_conta}
    Wait Until Element Is Visible               ${cookie}
    Click Element                               ${cookie}
    Wait Until Element Is Visible               ${btn_recuperar_minha_conta}
    Click Element                               ${btn_recuperar_minha_conta}
    Wait Until Element Is Visible               ${campo_email_recupecao}

    #Input Text                                  ${campo_email_recupecao}                ${email}                              
    Click Element                               ${btn_enviar_codigo} 
    Wait Until Element Is Visible               ${campo_mensagem_codigo}
    Should Contain                              ${campo_mensagem_codigo}                ${mensagem_codigo_recuperacao}
    
ENTAO devo recuperar senha sem sucesso da minha conta - VW
    Wait Until Element Is Visible               ${perfil_minha_conta}
    Sleep                                       5
    Click Element                               ${perfil_minha_conta}
    Sleep                                       8
    Wait Until Element Is Visible               ${ponteiro_minha_conta}
    Wait Until Element Is Visible               ${cookie}
    Click Element                               ${cookie}
    Wait Until Element Is Visible               ${btn_recuperar_minha_conta}
    Click Element                               ${btn_recuperar_minha_conta}
    Wait Until Element Is Visible               ${campo_email_recupecao}

    Input Text                                  ${campo_email_recupecao}                ${email_invalido}                              
    Click Element                               ${btn_enviar_codigo} 
    Wait Until Element Is Visible               ${campo_mensagem_codigo}
    Should Contain                              ${campo_mensagem_codigo}                ${mensagem_erro_cod_recuperacao}