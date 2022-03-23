Documentation
... Suíte com palavras chave de busca do sistema

*** Settings ***
Library    SeleniumLibrary
Library    String


*** Keywords ***

DADO que eu esteja logado no site - VW
    Go To                               ${home_inicio}
    Click Element                       ${perfil_entrar}
    Wait Until Element Is Visible       ${ponteiro_login}
    Input Text                          ${campo_email}                      ${email}
    Input Text                          ${campo_senha}                      ${senha}
    Click button                        ${btn_entrar}
    Wait Until Element Is Visible       ${ponteiro_login}
    Sleep                               8
    # Wait Until Element Is Visible       ${ponteiro_prod_visualizado}
    # Should Contain                      ${ponteiro_prod_visualizado}        ${msg_prod_visualizado}

# DADO que eu esteja no site - VW
#     Go To                               ${home_inicio}

QUANDO eu procurar o produto VW 0C3315105A - VW
    Wait Until Element Is Visible           ${campo_pesquisa}
    Input Text                              ${campo_pesquisa}               ${produto_wishlist_01}
    Sleep                                   1
    Click Element                           ${campo_filtro_pesquisa}
    Wait Until Element Is Visible           ${cookie}
    Click Element                           ${cookie}

ENTAO devo solicitar cotação do produto 0C3315105A - VW
    Wait Until Element Is Visible           ${ponteiro_popup_cotacao}
    Should Contain                          ${ponteiro_popup_cotacao}       ${msg_popup_cotacao}
    Wait Until Element Is Visible           ${btn_solicitar_cotacao}
    Click Element                           ${btn_solicitar_cotacao}
    Input Text                              ${nome_popup_cotacao}           ${nome_sobrenome}
    Input Text                              ${email_popup_cotacao}          ${email}
    Input Text                              ${tel_popup_cotacao}            ${tel}
    Click Element                           ${btn_enviar_popup_cotacao}
    Wait Until Element Is Visible           ${popup_cotacao_sucess}
    Should Contain                          ${popup_cotacao_sucess}         ${msg_popup_cotacao_sucess}

QUANDO eu procurar o produto VW V04011010 - VW
    Wait Until Element Is Visible           ${campo_pesquisa}
    Input Text                              ${campo_pesquisa}               ${produto_wishlist_02}
    Sleep                                   1
    Click Element                           ${campo_filtro_pesquisa}
    Wait Until Element Is Visible           ${cookie}
    Click Element                           ${cookie}
    Wait Until Element Is Visible           ${ponteiro_popup_cotacao_2}

ENTAO devo solicitar cotação do produto V04011010 - VW
    Wait Until Element Is Visible           ${ponteiro_popup_cotacao_2}
    Should Contain                          ${ponteiro_popup_cotacao_2}       ${msg_popup_cotacao_2}
    Wait Until Element Is Visible           ${btn_solicitar_cotacao}
    Click Element                           ${btn_solicitar_cotacao}
    Input Text                              ${nome_popup_cotacao}           ${nome_sobrenome}
    Input Text                              ${email_popup_cotacao}          ${email}
    Input Text                              ${tel_popup_cotacao}            ${tel}
    Click Element                           ${btn_enviar_popup_cotacao}
    Wait Until Element Is Visible           ${popup_cotacao_sucess}
    Should Contain                          ${popup_cotacao_sucess}         ${msg_popup_cotacao_sucess}

QUANDO eu procurar o produto VW 6EA019900 - VW
    Wait Until Element Is Visible           ${campo_pesquisa}
    Input Text                              ${campo_pesquisa}               ${produto_wishlist_03}
    Sleep                                   1
    Click Element                           ${campo_filtro_pesquisa}
    # Wait Until Element Is Visible           ${cookie}
    # Click Element                           ${cookie}
    Wait Until Element Is Visible           ${ponteiro_popup_cotacao_3}

ENTAO devo solicitar cotação do produto 6EA019900 - VW
    Wait Until Element Is Visible           ${ponteiro_popup_cotacao_3}
    Should Contain                          ${ponteiro_popup_cotacao_3}       ${msg_popup_cotacao_3}
    Wait Until Element Is Visible           ${btn_solicitar_cotacao}
    Click Element                           ${btn_solicitar_cotacao}
    Input Text                              ${nome_popup_cotacao}           ${nome_sobrenome}
    Input Text                              ${email_popup_cotacao}          ${email}
    Input Text                              ${tel_popup_cotacao}            ${tel}
    Click Element                           ${btn_enviar_popup_cotacao}
    Wait Until Element Is Visible           ${popup_cotacao_sucess}
    Should Contain                          ${popup_cotacao_sucess}         ${msg_popup_cotacao_sucess}
    Sleep                                   5

QUANDO eu procurar o produto VW V04011033B - VW
    Wait Until Element Is Visible           ${campo_pesquisa}
    Input Text                              ${campo_pesquisa}               ${produto_wishlist_04}
    Sleep                                   1
    Click Element                           ${campo_filtro_pesquisa}
    Wait Until Element Is Visible           ${cookie}
    Click Element                           ${cookie}

ENTAO devo solicitar cotação do produto V04011033B - VW
    Wait Until Element Is Visible           ${ponteiro_popup_cotacao_4}
    Should Contain                          ${ponteiro_popup_cotacao_4}       ${msg_popup_cotacao_4}
    Wait Until Element Is Visible           ${btn_solicitar_cotacao}
    Click Element                           ${btn_solicitar_cotacao}
    FOR    ${index}    IN RANGE    15
    Press Keys                              ${nome_popup_cotacao}           BACKSPACE
    END

    FOR    ${index}    IN RANGE    10
    Press Keys                              ${nome_popup_cotacao}           SPACE
    Sleep               1
    END
    Input Text                              ${email_popup_cotacao}          ${email}
    Input Text                              ${tel_popup_cotacao}            ${tel}
    Click Element                           ${btn_enviar_popup_cotacao}
    Wait Until Element Is Visible           ${popup_cotacao_error}
    Should Contain                          ${popup_cotacao_error}          ${msg_popup_cotacao_error}
    Sleep                                   10

QUANDO eu procurar o produto VW 000071200AF - VW
    Wait Until Element Is Visible           ${campo_pesquisa}
    Input Text                              ${campo_pesquisa}               ${produto_wishlist_05}
    Sleep                                   1
    Click Element                           ${campo_filtro_pesquisa}
    Wait Until Element Is Visible           ${cookie}
    Click Element                           ${cookie}

ENTAO devo solicitar cotação do produto 000071200AF - VW
    Wait Until Element Is Visible           ${ponteiro_popup_cotacao_5}
    Should Contain                          ${ponteiro_popup_cotacao_5}       ${msg_popup_cotacao_5}
    Wait Until Element Is Visible           ${btn_solicitar_cotacao}
    Click Element                           ${btn_solicitar_cotacao}
    Input Text                              ${nome_popup_cotacao}           ${nome_sobrenome}
    FOR    ${index}    IN RANGE    15
    Press Keys                              ${email_popup_cotacao}           BACKSPACE
    END
    Input Text                              ${email_popup_cotacao}          ${email_invalido}
    Input Text                              ${tel_popup_cotacao}            ${tel}
    Click Element                           ${btn_enviar_popup_cotacao}
    Wait Until Element Is Visible           ${popup_cotacao_error}
    Should Contain                          ${popup_cotacao_error}          ${msg_popup_cotacao_error}
    Sleep                                   10

QUANDO eu procurar o produto VW 000071120HA - VW
    Wait Until Element Is Visible           ${campo_pesquisa}
    Input Text                              ${campo_pesquisa}               ${produto_wishlist_06}
    Sleep                                   1
    Click Element                           ${campo_filtro_pesquisa}
    Wait Until Element Is Visible           ${cookie}
    Click Element                           ${cookie}

ENTAO devo solicitar cotação do produto 000071120HA - VW
    Wait Until Element Is Visible           ${ponteiro_popup_cotacao_6}
    Should Contain                          ${ponteiro_popup_cotacao_6}       ${msg_popup_cotacao_6}
    Wait Until Element Is Visible           ${btn_solicitar_cotacao}
    Click Element                           ${btn_solicitar_cotacao}
    Input Text                              ${nome_popup_cotacao}           ${nome_sobrenome}
    FOR    ${index}    IN RANGE    15
    Press Keys                              ${email_popup_cotacao}           BACKSPACE
    END
    FOR    ${index}    IN RANGE    10
    Press Keys                              ${email_popup_cotacao}           SPACE
    Sleep                                   1
    END
    Input Text                              ${tel_popup_cotacao}            ${tel}
    Click Element                           ${btn_enviar_popup_cotacao}
    Wait Until Element Is Visible           ${popup_cotacao_error}
    Should Contain                          ${popup_cotacao_error}          ${msg_popup_cotacao_error}
    Sleep                                   10

QUANDO eu procurar por bomba - VW
    Wait Until Element Is Visible           ${campo_pesquisa}
    Input Text                              ${campo_pesquisa}               ${titulo_bomba}
    Sleep                                   1
    Press Keys                              ${campo_pesquisa}               ENTER
    Sleep                                   3

ENTAO devo analisar se foi retornado diversos produtos - VW
    Title Should Be                         ${titulo_produtos}
    Wait Until Element Is Visible           ${campo_filtrar_produtos}       
    Should Contain                          ${campo_filtrar_produtos}       ${titulo_filtrar_produtos}
    Should Contain                          ${campo_filtro_bomba}           ${titulo_bomba}
    Should Contain                          ${campo_pag_2}                  ${numeracao_pag_2}
    Should Contain                          ${campo_pag_3}                  ${numeracao_pag_3}

QUANDO eu procurar por Acessórios VW - VW
    Wait Until Element Is Visible           ${campo_pesquisa}
    Input Text                              ${campo_pesquisa}               ${titulo_acessorios_vw}
    Sleep                                   1
    Press Keys                              ${campo_pesquisa}               ENTER
    Sleep                                   3

ENTAO devo analisar se foi retornado uma categoria com diversos produtos - VW
    Title Should Be                         ${titulo_produtos}
    Wait Until Element Is Visible           ${campo_filtrar_produtos}       
    Should Contain                          ${campo_filtrar_produtos}       ${titulo_filtrar_produtos}
    Should Contain                          ${campo_filtro_acessorios}      ${titulo_acessorios_vw}
    Should Contain                          ${campo_pag_2}                  ${numeracao_pag_2}
    Should Contain                          ${campo_pag_3}                  ${numeracao_pag_3}

QUANDO eu procurar por Pino de Pistão VW 030107411L - VW
    Wait Until Element Is Visible           ${campo_pesquisa}
    Input Text                              ${campo_pesquisa}               ${nome_prod_especifico}
    Sleep                                   1
    Press Keys                              ${campo_pesquisa}               ENTER
    Sleep                                   3

ENTAO devo analisar se foi retornado o produto específico - VW
    Wait Until Element Is Visible           ${campo_prod_especifico}
    Click Element                           ${campo_prod_especifico}
    Wait Until Element Is Visible           ${campo_nome_prod_especifico}
    Should Contain                          ${campo_nome_prod_especifico}       ${nome_prod_especifico}

QUANDO eu procurar por blouse - VW
    Wait Until Element Is Visible           ${campo_pesquisa}
    Input Text                              ${campo_pesquisa}               ${produto_inexistente}
    Sleep                                   1
    Press Keys                              ${campo_pesquisa}               ENTER
    Sleep                                   3

ENTAO devo analisar se o produto blouse não existe - VW
    Title Should Be                         ${titulo_produtos}
    Wait Until Element Is Visible           ${campo_filtrar_produtos}       
    Should Contain                          ${campo_filtrar_produtos}       ${titulo_filtrar_produtos}
    Should Contain                          ${campo_filtro_blouse}          ${produto_inexistente}
    Should Contain                          ${campo_prod_inexistente}       ${msg_prod_inexistente}

QUANDO eu procurar por VW 5U7827793B - VW
    Wait Until Element Is Visible           ${campo_pesquisa}
    Input Text                              ${campo_pesquisa}               ${VW_5U7827793B}
    Sleep                                   3

ENTAO devo analisar se o produto VW 5U7827793B foi retornado - VW
    Click Element                           ${campo_filtro_pesquisa}
    Wait Until Element Is Visible           ${cookie}
    Click Element                           ${cookie}
    Wait Until Element Is Visible           ${ponteiro_popup_cotacao_7}
    Should Contain                          ${ponteiro_popup_cotacao_7}     ${VW_5U7827793B}

QUANDO eu procurar pela categoria gol - VW
    Wait Until Element Is Visible           ${campo_pesquisa}
    Input Text                              ${campo_pesquisa}               ${categoria_gol}
    Sleep                                   3
    Press Keys                              ${campo_pesquisa}               ENTER

ENTAO devo selecionar um produto da categoria gol - VW
    Wait Until Element Is Visible           ${campo_selecao_prod}
    Title Should Be                         ${titulo_produtos}
    Click Element                           ${campo_selecao_prod}
    Wait Until Element Is Visible           ${ponteiro_popup_cotacao_8}
    Should Contain                          ${ponteiro_popup_cotacao_8}     ${msg_popup_cotacao_7}