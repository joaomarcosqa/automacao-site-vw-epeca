Documentation
... Suíte com palavras chave de carrinho do sistema

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

QUANDO eu procurar o produto VW JZZ115561A - VW
    Wait Until Element Is Visible           ${campo_pesquisa}
    Input Text                              ${campo_pesquisa}               ${produto_01}
    Sleep                                   1
    Click Element                           ${campo_filtro_pesquisa}
    Wait Until Element Is Visible           ${cookie}
    Click Element                           ${cookie}

QUANDO eu adicionar o produto VW JZZ115561A no carrinho - VW
    Wait Until Element Is Visible           ${campo_pesquisa}
    Input Text                              ${campo_pesquisa}               ${produto_01}
    Sleep                                   1
    Click Element                           ${campo_filtro_pesquisa}
    Wait Until Element Is Visible           ${cookie}
    Click Element                           ${cookie}
    Wait Until Element Is Visible           ${comprar}
    Click Button                            ${comprar}
    Wait Until Element Is Visible           ${informe_cep}
    Input Text                              ${informe_cep}                  ${cep}
    Wait Until Element Is Visible           ${confirma_cep}
    Click Element                           ${confirma_cep}
    Sleep                                   2
    Wait Until Element Is Visible           ${carrinho}
    Should Contain                          ${carrinho}                     ${nome_carrinho}

ENTAO devo validar a quantidade e preço do produto JZZ115561A - VW
    Wait Until Element Is Visible           ${ponteiro_produto_01}
    Should Contain                          ${ponteiro_produto_01}          ${produto_01}
    Wait Until Element Is Visible           ${comprar}
    Click Button                            ${comprar}
    Wait Until Element Is Visible           ${informe_cep}
    Input Text                              ${informe_cep}                  ${cep}
    Wait Until Element Is Visible           ${confirma_cep}
    Click Element                           ${confirma_cep}
    Sleep                                   2
    Wait Until Element Is Visible           ${carrinho}
    Should Contain                          ${carrinho}                     ${nome_carrinho}
    Wait Until Element Is Visible           ${qtd}
    ${qtd_valor}                            Convert To String               ${1}
    Should Contain                          ${qtd}                          ${qtd_valor}
    Wait Until Element Is Visible           ${preco_carrinho}
    Should Contain                          ${preco_carrinho}               ${preco_valor}

ENTAO devo retirar o produto VW JZZ115561A do carrinho - VW
    Wait Until Element Is Visible           ${x}
    Click Element                           ${x}

ENTAO devo aumentar a quantidade do produto VW JZZ115561A - VW
    Wait Until Element Is Visible           ${+}
    FOR     ${index}  IN RANGE    4
    Click Element                           ${+}
    Sleep                                   8
    END

    Wait Until Element Is Visible           ${qtd_4}
    ${qtd_valor}                            Convert To String               ${5}
    Should Contain                          ${qtd_4}                        ${qtd_valor}

QUANDO eu adicionar o produto VW JZZ115561A no carrinho com cinco itens - VW
    Wait Until Element Is Visible           ${campo_pesquisa}
    Input Text                              ${campo_pesquisa}               ${produto_01}
    Sleep                                   1
    Click Element                           ${campo_filtro_pesquisa}
    Wait Until Element Is Visible           ${cookie}
    Click Element                           ${cookie}
    Wait Until Element Is Visible           ${comprar}
    Click Button                            ${comprar}
    Wait Until Element Is Visible           ${informe_cep}
    Input Text                              ${informe_cep}                  ${cep}
    Wait Until Element Is Visible           ${confirma_cep}
    Click Element                           ${confirma_cep}
    Sleep                                   2
    Wait Until Element Is Visible           ${carrinho}
    Should Contain                          ${carrinho}                     ${nome_carrinho}
    Wait Until Element Is Visible           ${+}
    FOR     ${index}  IN RANGE    4
    Click Element                           ${+}
    Sleep                                   8
    END

    Wait Until Element Is Visible           ${qtd_4}
    ${qtd_valor}                            Convert To String               ${5}
    Should Contain                          ${qtd_4}                        ${qtd_valor}

ENTAO devo diminuir a quantidade do produto VW JZZ115561A - VW
    Wait Until Element Is Visible           ${-}
    FOR     ${index}  IN RANGE    4
    Click Element                           ${-}
    Sleep                                   8
    END

    Wait Until Element Is Visible           ${qtd}
    ${qtd_valor}                            Convert To String               ${1}
    Should Contain                          ${qtd}                        ${qtd_valor}

ENTAO devo validar a simulação de frete do produto JZZ115561A - VW
    Wait Until Element Is Visible           ${ponteiro_produto_01}
    Should Contain                          ${ponteiro_produto_01}          ${produto_01}
    Wait Until Element Is Visible           ${comprar}
    Click Button                            ${comprar}
    Wait Until Element Is Visible           ${informe_cep}
    Input Text                              ${informe_cep}                  ${cep}
    Wait Until Element Is Visible           ${confirma_cep}
    Click Element                           ${confirma_cep}
    Sleep                                   2
    Wait Until Element Is Visible           ${carrinho}
    Should Contain                          ${carrinho}                     ${nome_carrinho}
    Wait Until Element Is Visible           ${informe_cep_carrinho}
    FOR     ${index}  IN RANGE    10
    Press Keys                              ${informe_cep_carrinho}         BACKSPACE
    END 
    Input Text                              ${informe_cep_carrinho}         ${cep_invalido}
    Wait Until Element Is Visible           ${campo_cep_msg_invalida}
    Should Contain                          ${campo_cep_msg_invalida}       ${cep_msg_invalida}

ENTAO devo validar o frete retirar na loja do produto JZZ115561A - VW
    Wait Until Element Is Visible           ${ponteiro_produto_01}
    Should Contain                          ${ponteiro_produto_01}          ${produto_01}
    Wait Until Element Is Visible           ${comprar}
    Click Button                            ${comprar}
    Wait Until Element Is Visible           ${informe_cep}
    Input Text                              ${informe_cep}                  ${cep}
    Wait Until Element Is Visible           ${confirma_cep}
    Click Element                           ${confirma_cep}
    Sleep                                   2
    Wait Until Element Is Visible           ${carrinho}
    Should Contain                          ${carrinho}                     ${nome_carrinho}
    FOR     ${index}  IN RANGE    10
    Press Keys                              ${informe_cep_carrinho}         BACKSPACE
    END 
    Input Text                              ${informe_cep_carrinho}         ${cep_valido}
    Wait Until Element Is Visible           ${campo_selecao_tipo_frete}
    Click Element                           ${campo_selecao_tipo_frete}
    Wait Until Element Is Visible           ${opcao_retirar_loja}
    Click Element                           ${opcao_retirar_loja}
    Wait Until Element Is Visible           ${prosseguir}
    Click Element                           ${prosseguir}
    Wait Until Element Is Visible           ${total_frete}
    Should Contain                          ${total_frete}                  ${total_frete_valor_retirar_loja}

ENTAO devo validar o frete correios pac do produto JZZ115561A - VW
    Wait Until Element Is Visible           ${ponteiro_produto_01}
    Should Contain                          ${ponteiro_produto_01}          ${produto_01}
    Wait Until Element Is Visible           ${comprar}
    Click Button                            ${comprar}
    Wait Until Element Is Visible           ${informe_cep}
    Input Text                              ${informe_cep}                  ${cep}
    Wait Until Element Is Visible           ${confirma_cep}
    Click Element                           ${confirma_cep}
    Sleep                                   2
    Wait Until Element Is Visible           ${carrinho}
    Should Contain                          ${carrinho}                     ${nome_carrinho}
    FOR     ${index}  IN RANGE    10
    Press Keys                              ${informe_cep_carrinho}         BACKSPACE
    END 
    Input Text                              ${informe_cep_carrinho}         ${cep_valido}
    Wait Until Element Is Visible           ${campo_selecao_tipo_frete}
    Click Element                           ${campo_selecao_tipo_frete}
    Wait Until Element Is Visible           ${opcao_correios_pac}
    Click Element                           ${opcao_correios_pac}
    Wait Until Element Is Visible           ${total_frete_1}
    Should Contain                          ${total_frete_1}                  ${total_frete_valor_correios_pac}

ENTAO devo validar o frete correios sedex do produto JZZ115561A - VW
    Wait Until Element Is Visible           ${ponteiro_produto_01}
    Should Contain                          ${ponteiro_produto_01}          ${produto_01}
    Wait Until Element Is Visible           ${comprar}
    Click Button                            ${comprar}
    Wait Until Element Is Visible           ${informe_cep}
    Input Text                              ${informe_cep}                  ${cep}
    Wait Until Element Is Visible           ${confirma_cep}
    Click Element                           ${confirma_cep}
    Sleep                                   2
    Wait Until Element Is Visible           ${carrinho}
    Should Contain                          ${carrinho}                     ${nome_carrinho}
    FOR     ${index}  IN RANGE    10
    Press Keys                              ${informe_cep_carrinho}         BACKSPACE
    END 
    Input Text                              ${informe_cep_carrinho}         ${cep_valido}
    Wait Until Element Is Visible           ${campo_selecao_tipo_frete}
    Click Element                           ${campo_selecao_tipo_frete}
    Wait Until Element Is Visible           ${opcao_correios_sedex}
    Click Element                           ${opcao_correios_sedex}
    Wait Until Element Is Visible           ${total_frete_2}
    Should Contain                          ${total_frete_2}                  ${total_frete_valor_correios_sedex}

ENTAO devo validar o frete jadlog stand do produto JZZ115561A - VW
    Wait Until Element Is Visible           ${ponteiro_produto_01}
    Should Contain                          ${ponteiro_produto_01}          ${produto_01}
    Wait Until Element Is Visible           ${comprar}
    Click Button                            ${comprar}
    Wait Until Element Is Visible           ${informe_cep}
    Input Text                              ${informe_cep}                  ${cep}
    Wait Until Element Is Visible           ${confirma_cep}
    Click Element                           ${confirma_cep}
    Sleep                                   2
    Wait Until Element Is Visible           ${carrinho}
    Should Contain                          ${carrinho}                     ${nome_carrinho}
    FOR     ${index}  IN RANGE    10
    Press Keys                              ${informe_cep_carrinho}         BACKSPACE
    END 
    Input Text                              ${informe_cep_carrinho}         ${cep_valido}
    Wait Until Element Is Visible           ${campo_selecao_tipo_frete}
    Click Element                           ${campo_selecao_tipo_frete}
    Wait Until Element Is Visible           ${opcao_jadlog_stand}
    Click Element                           ${opcao_jadlog_stand}
    Wait Until Element Is Visible           ${total_frete_3}
    Should Contain                          ${total_frete_3}                  ${total_frete_valor_jadlog_stand}

ENTAO devo validar o frete jadlog express do produto JZZ115561A - VW
    Wait Until Element Is Visible           ${ponteiro_produto_01}
    Should Contain                          ${ponteiro_produto_01}          ${produto_01}
    Wait Until Element Is Visible           ${comprar}
    Click Button                            ${comprar}
    Wait Until Element Is Visible           ${informe_cep}
    Input Text                              ${informe_cep}                  ${cep}
    Wait Until Element Is Visible           ${confirma_cep}
    Click Element                           ${confirma_cep}
    Sleep                                   2
    Wait Until Element Is Visible           ${carrinho}
    Should Contain                          ${carrinho}                     ${nome_carrinho}
    FOR     ${index}  IN RANGE    10
    Press Keys                              ${informe_cep_carrinho}         BACKSPACE
    END 
    Input Text                              ${informe_cep_carrinho}         ${cep_valido}
    Wait Until Element Is Visible           ${campo_selecao_tipo_frete}
    Click Element                           ${campo_selecao_tipo_frete}
    Wait Until Element Is Visible           ${opcao_jadlog_express}
    Click Element                           ${opcao_jadlog_express}
    Wait Until Element Is Visible           ${total_frete_4}
    Should Contain                          ${total_frete_4}                  ${total_frete_valor_jadlog_express}

QUANDO eu procurar o produto VW 2H0807183A - VW
    Wait Until Element Is Visible           ${campo_pesquisa}
    Input Text                              ${campo_pesquisa}               ${produto_02}
    Sleep                                   1
    Click Element                           ${campo_filtro_pesquisa}
    Wait Until Element Is Visible           ${cookie}
    Click Element                           ${cookie}

ENTAO devo validar o preço majorado do produto rio de janeiro - VW
    Wait Until Element Is Visible           ${ponteiro_produto_02}
    Should Contain                          ${ponteiro_produto_02}          ${produto_02}
    Wait Until Element Is Visible           ${comprar}
    Click Button                            ${comprar}
    Wait Until Element Is Visible           ${informe_cep}
    Input Text                              ${informe_cep}                  ${cep_goias}
    Wait Until Element Is Visible           ${confirma_cep}
    Click Element                           ${confirma_cep}
    Sleep                                   6
    Wait Until Element Is Visible           ${carrinho}
    Should Contain                          ${carrinho}                     ${nome_carrinho}
    Wait Until Element Is Visible           ${total_pagamento_0}
    Should Contain                          ${total_pagamento_0}            ${valor_total_carrinho_01}
    Wait Until Element Is Visible           ${finalizar_pedido}
    Click Element                           ${finalizar_pedido}
    Sleep                                   8
    Wait Until Element Is Visible           ${dados_de_entrega}
    Click Element                           ${dados_de_entrega}
    Wait Until Element Is Visible           ${cadastrar_endereco}
    Click Element                           ${cadastrar_endereco}
    Wait Until Element Is Visible           ${campo_cep_pagamento}
    Press Keys                              ${campo_cep_pagamento}          7
    Sleep                                   2
    Press Keys                              ${campo_cep_pagamento}          4
    Sleep                                   2
    Press Keys                              ${campo_cep_pagamento}          0
    Sleep                                   2
    Press Keys                              ${campo_cep_pagamento}          6
    Sleep                                   2
    Press Keys                              ${campo_cep_pagamento}          3
    Sleep                                   2
    Press Keys                              ${campo_cep_pagamento}          9
    Sleep                                   2
    Press Keys                              ${campo_cep_pagamento}          0
    Sleep                                   2
    Press Keys                              ${campo_cep_pagamento}          0
    Sleep                                   8
    Wait Until Element Is Visible           ${campo_numero_pagamento}
    Press Keys                              ${campo_numero_pagamento}       ${numero}
    Sleep                                   2
    Click Element                           ${salvar_endereco}
    Wait Until Element Is Visible           ${campo_endereco_goias}
    Click Element                           ${campo_endereco_goias}
    Wait Until Element Is Visible           ${total_pagamento_0}
    Click Element                           ${total_pagamento_0}
    Should Contain                          ${total_pagamento_0}              ${valor_total_pagamento_01}
    
    #segunda parte
    Wait Until Element Is Visible           ${dados_de_entrega}
    Click Element                           ${dados_de_entrega}
    Wait Until Element Is Visible           ${cadastrar_endereco}
    Click Element                           ${cadastrar_endereco}
    Wait Until Element Is Visible           ${campo_cep_pagamento}
    Press Keys                              ${campo_cep_pagamento}          2
    Sleep                                   2
    Press Keys                              ${campo_cep_pagamento}          0
    Sleep                                   2
    Press Keys                              ${campo_cep_pagamento}          0
    Sleep                                   2
    Press Keys                              ${campo_cep_pagamento}          5
    Sleep                                   2
    Press Keys                              ${campo_cep_pagamento}          0
    Sleep                                   2
    Press Keys                              ${campo_cep_pagamento}          0
    Sleep                                   2
    Press Keys                              ${campo_cep_pagamento}          0
    Sleep                                   2
    Press Keys                              ${campo_cep_pagamento}          0
    Sleep                                   8
    Wait Until Element Is Visible           ${campo_numero_pagamento}
    Press Keys                              ${campo_numero_pagamento}       ${numero}
    Sleep                                   2
    Click Element                           ${salvar_endereco}
    Wait Until Element Is Visible           ${campo_endereco_rio_de_janeiro}
    Click Element                           ${campo_endereco_rio_de_janeiro}
    Wait Until Element Is Visible           ${total_pagamento_00}
    Click Element                           ${total_pagamento_00}
    Should Contain                          ${total_pagamento_00}              ${valor_total_pagamento_001}

QUANDO eu procurar o produto VW JZZ698151AK - VW
    Wait Until Element Is Visible           ${campo_pesquisa}
    Input Text                              ${campo_pesquisa}               ${produto_03}
    Sleep                                   1
    Click Element                           ${campo_filtro_pesquisa}
    Wait Until Element Is Visible           ${cookie}
    Click Element                           ${cookie}

ENTAO devo validar o preço majorado do produto bahia - VW
    Wait Until Element Is Visible           ${ponteiro_produto_03}
    Should Contain                          ${ponteiro_produto_03}          ${produto_03}
    Wait Until Element Is Visible           ${comprar}
    Click Button                            ${comprar}
    Wait Until Element Is Visible           ${informe_cep}
    Input Text                              ${informe_cep}                  ${cep_anapolis}
    Wait Until Element Is Visible           ${confirma_cep}
    Click Element                           ${confirma_cep}
    Sleep                                   2
    Wait Until Element Is Visible           ${carrinho}
    Should Contain                          ${carrinho}                     ${nome_carrinho}
    Wait Until Element Is Visible           ${total_pagamento_1}
    Should Contain                          ${total_pagamento_1}            ${valor_total_carrinho_04}
    Wait Until Element Is Visible           ${finalizar_pedido}
    Click Element                           ${finalizar_pedido}
    Sleep                                   8
    Wait Until Element Is Visible           ${dados_de_entrega}
    Click Element                           ${dados_de_entrega}
    Wait Until Element Is Visible           ${cadastrar_endereco}
    Click Element                           ${cadastrar_endereco}
    Wait Until Element Is Visible           ${campo_cep_pagamento}
    Press Keys                              ${campo_cep_pagamento}          7
    Sleep                                   1
    Press Keys                              ${campo_cep_pagamento}          5
    Sleep                                   1
    Press Keys                              ${campo_cep_pagamento}          1
    Sleep                                   1
    Press Keys                              ${campo_cep_pagamento}          2
    Sleep                                   1
    Press Keys                              ${campo_cep_pagamento}          4
    Sleep                                   1
    Press Keys                              ${campo_cep_pagamento}          8
    Sleep                                   1
    Press Keys                              ${campo_cep_pagamento}          2
    Sleep                                   1
    Press Keys                              ${campo_cep_pagamento}          0
    Sleep                                   8
    Wait Until Element Is Visible           ${campo_numero_pagamento}
    Press Keys                              ${campo_numero_pagamento}       ${numero}
    Sleep                                   2
    Click Element                           ${salvar_endereco}
    Wait Until Element Is Visible           ${campo_endereco_anapolis}
    Click Element                           ${campo_endereco_anapolis}
    Wait Until Element Is Visible           ${total_pagamento_1}
    Click Element                           ${total_pagamento_1}
    Should Contain                          ${total_pagamento_1}              ${valor_total_carrinho_02}
    
    #segunda parte
    Wait Until Element Is Visible           ${dados_de_entrega}
    Click Element                           ${dados_de_entrega}
    Wait Until Element Is Visible           ${cadastrar_endereco}
    Click Element                           ${cadastrar_endereco}
    Wait Until Element Is Visible           ${campo_cep_pagamento}
    Press Keys                              ${campo_cep_pagamento}          4
    Sleep                                   1
    Press Keys                              ${campo_cep_pagamento}          0
    Sleep                                   1
    Press Keys                              ${campo_cep_pagamento}          0
    Sleep                                   1
    Press Keys                              ${campo_cep_pagamento}          1
    Sleep                                   1
    Press Keys                              ${campo_cep_pagamento}          5
    Sleep                                   1
    Press Keys                              ${campo_cep_pagamento}          9
    Sleep                                   1
    Press Keys                              ${campo_cep_pagamento}          7
    Sleep                                   1
    Press Keys                              ${campo_cep_pagamento}          0
    Sleep                                   8
    Wait Until Element Is Visible           ${campo_numero_pagamento}
    Press Keys                              ${campo_numero_pagamento}       ${numero}
    Sleep                                   1
    Click Element                           ${salvar_endereco}
    Wait Until Element Is Visible           ${campo_endereco_bahia}
    Click Element                           ${campo_endereco_bahia}
    Wait Until Element Is Visible           ${total_pagamento_5}
    Click Element                           ${total_pagamento_5}
    Should Contain                          ${total_pagamento_5}              ${valor_total_pagamento_02}

QUANDO eu procurar o produto VW JZZ129620C - VW
    Wait Until Element Is Visible           ${campo_pesquisa}
    Input Text                              ${campo_pesquisa}               ${produto_04}
    Sleep                                   1
    Click Element                           ${campo_filtro_pesquisa}
    Wait Until Element Is Visible           ${cookie}
    Click Element                           ${cookie}

ENTAO devo validar o preço majorado do produto parana - VW
    Wait Until Element Is Visible           ${ponteiro_produto_03}
    Should Contain                          ${ponteiro_produto_03}          ${produto_03}
    Wait Until Element Is Visible           ${comprar}
    Click Button                            ${comprar}
    Wait Until Element Is Visible           ${informe_cep}
    Input Text                              ${informe_cep}                  ${cep_anapolis}
    Wait Until Element Is Visible           ${confirma_cep}
    Click Element                           ${confirma_cep}
    Sleep                                   2
    Wait Until Element Is Visible           ${carrinho}
    Should Contain                          ${carrinho}                     ${nome_carrinho}
    Wait Until Element Is Visible           ${total_pagamento_1}
    Should Contain                          ${total_pagamento_1}            ${valor_total_carrinho_04}
    Wait Until Element Is Visible           ${finalizar_pedido}
    Click Element                           ${finalizar_pedido}
    Sleep                                   8
    Wait Until Element Is Visible           ${dados_de_entrega}
    Click Element                           ${dados_de_entrega}
    Wait Until Element Is Visible           ${cadastrar_endereco}
    Click Element                           ${cadastrar_endereco}
    Wait Until Element Is Visible           ${campo_cep_pagamento}
    Press Keys                              ${campo_cep_pagamento}          7
    Sleep                                   1
    Press Keys                              ${campo_cep_pagamento}          5
    Sleep                                   1
    Press Keys                              ${campo_cep_pagamento}          1
    Sleep                                   1
    Press Keys                              ${campo_cep_pagamento}          2
    Sleep                                   1
    Press Keys                              ${campo_cep_pagamento}          4
    Sleep                                   1
    Press Keys                              ${campo_cep_pagamento}          8
    Sleep                                   1
    Press Keys                              ${campo_cep_pagamento}          2
    Sleep                                   1
    Press Keys                              ${campo_cep_pagamento}          0
    Sleep                                   8
    Wait Until Element Is Visible           ${campo_numero_pagamento}
    Press Keys                              ${campo_numero_pagamento}       ${numero}
    Sleep                                   2
    Click Element                           ${salvar_endereco}
    Wait Until Element Is Visible           ${campo_endereco_anapolis}
    Click Element                           ${campo_endereco_anapolis}
    Wait Until Element Is Visible           ${total_pagamento_1}
    Click Element                           ${total_pagamento_1}
    Should Contain                          ${total_pagamento_1}              ${valor_total_carrinho_02}
    
    #segunda parte
    Wait Until Element Is Visible           ${dados_de_entrega}
    Click Element                           ${dados_de_entrega}
    Wait Until Element Is Visible           ${cadastrar_endereco}
    Click Element                           ${cadastrar_endereco}
    Wait Until Element Is Visible           ${campo_cep_pagamento}
    Press Keys                              ${campo_cep_pagamento}          8
    Sleep                                   1
    Press Keys                              ${campo_cep_pagamento}          0
    Sleep                                   1
    Press Keys                              ${campo_cep_pagamento}          2
    Sleep                                   1
    Press Keys                              ${campo_cep_pagamento}          4
    Sleep                                   1
    Press Keys                              ${campo_cep_pagamento}          0
    Sleep                                   1
    Press Keys                              ${campo_cep_pagamento}          2
    Sleep                                   1
    Press Keys                              ${campo_cep_pagamento}          1
    Sleep                                   1
    Press Keys                              ${campo_cep_pagamento}          0
    Sleep                                   8
    Wait Until Element Is Visible           ${campo_numero_pagamento}
    Press Keys                              ${campo_numero_pagamento}       ${numero}
    Sleep                                   1
    Click Element                           ${salvar_endereco}
    Wait Until Element Is Visible           ${campo_endereco_parana}
    Click Element                           ${campo_endereco_parana}
    Wait Until Element Is Visible           ${total_pagamento_5}
    Click Element                           ${total_pagamento_5}
    Should Contain                          ${total_pagamento_5}              ${valor_total_pagamento_02}

QUANDO eu procurar o produto VW WHT005263 - VW
    Wait Until Element Is Visible           ${campo_pesquisa}
    Input Text                              ${campo_pesquisa}               ${produto_05}
    Sleep                                   2
    Click Element                           ${campo_filtro_pesquisa}
    Wait Until Element Is Visible           ${cookie}
    Click Element                           ${cookie}

ENTAO devo validar o preço majorado do produto sao paulo - VW
    Wait Until Element Is Visible           ${ponteiro_produto_03}
    Should Contain                          ${ponteiro_produto_03}          ${produto_03}
    Wait Until Element Is Visible           ${comprar}
    Click Button                            ${comprar}
    Wait Until Element Is Visible           ${informe_cep}
    Input Text                              ${informe_cep}                  ${cep_anapolis}
    Wait Until Element Is Visible           ${confirma_cep}
    Click Element                           ${confirma_cep}
    Sleep                                   2
    Wait Until Element Is Visible           ${carrinho}
    Should Contain                          ${carrinho}                     ${nome_carrinho}
    Wait Until Element Is Visible           ${total_pagamento_1}
    Should Contain                          ${total_pagamento_1}            ${valor_total_carrinho_04}
    Wait Until Element Is Visible           ${finalizar_pedido}
    Click Element                           ${finalizar_pedido}
    Sleep                                   8
    Wait Until Element Is Visible           ${dados_de_entrega}
    Click Element                           ${dados_de_entrega}
    Wait Until Element Is Visible           ${cadastrar_endereco}
    Click Element                           ${cadastrar_endereco}
    Wait Until Element Is Visible           ${campo_cep_pagamento}
    Press Keys                              ${campo_cep_pagamento}          7
    Sleep                                   1
    Press Keys                              ${campo_cep_pagamento}          5
    Sleep                                   1
    Press Keys                              ${campo_cep_pagamento}          1
    Sleep                                   1
    Press Keys                              ${campo_cep_pagamento}          2
    Sleep                                   1
    Press Keys                              ${campo_cep_pagamento}          4
    Sleep                                   1
    Press Keys                              ${campo_cep_pagamento}          8
    Sleep                                   1
    Press Keys                              ${campo_cep_pagamento}          2
    Sleep                                   1
    Press Keys                              ${campo_cep_pagamento}          0
    Sleep                                   8
    Wait Until Element Is Visible           ${campo_numero_pagamento}
    Press Keys                              ${campo_numero_pagamento}       ${numero}
    Sleep                                   2
    Click Element                           ${salvar_endereco}
    Wait Until Element Is Visible           ${campo_endereco_anapolis}
    Click Element                           ${campo_endereco_anapolis}
    Wait Until Element Is Visible           ${total_pagamento_1}
    Click Element                           ${total_pagamento_1}
    Should Contain                          ${total_pagamento_1}              ${valor_total_carrinho_02}
    
    #segunda parte
    Wait Until Element Is Visible           ${dados_de_entrega}
    Click Element                           ${dados_de_entrega}
    Wait Until Element Is Visible           ${cadastrar_endereco}
    Click Element                           ${cadastrar_endereco}
    Wait Until Element Is Visible           ${campo_cep_pagamento}
    Press Keys                              ${campo_cep_pagamento}          8
    Sleep                                   1
    Press Keys                              ${campo_cep_pagamento}          0
    Sleep                                   1
    Press Keys                              ${campo_cep_pagamento}          2
    Sleep                                   1
    Press Keys                              ${campo_cep_pagamento}          4
    Sleep                                   1
    Press Keys                              ${campo_cep_pagamento}          0
    Sleep                                   1
    Press Keys                              ${campo_cep_pagamento}          2
    Sleep                                   1
    Press Keys                              ${campo_cep_pagamento}          1
    Sleep                                   1
    Press Keys                              ${campo_cep_pagamento}          0
    Sleep                                   8
    Wait Until Element Is Visible           ${campo_numero_pagamento}
    Press Keys                              ${campo_numero_pagamento}       ${numero}
    Sleep                                   1
    Click Element                           ${salvar_endereco}
    Wait Until Element Is Visible           ${campo_endereco_sao_paulo}
    Click Element                           ${campo_endereco_sao_paulo}
    Wait Until Element Is Visible           ${total_pagamento_5}
    Click Element                           ${total_pagamento_5}
    Should Contain                          ${total_pagamento_5}              ${valor_total_pagamento_02}

QUANDO eu procurar o produto VW 5Z0807183A - VW
    Wait Until Element Is Visible           ${campo_pesquisa}
    Input Text                              ${campo_pesquisa}               ${produto_06}
    Sleep                                   1
    Click Element                           ${campo_filtro_pesquisa}
    Wait Until Element Is Visible           ${cookie}
    Click Element                           ${cookie}

ENTAO devo validar o preço majorado do produto santa catarina - VW
    Wait Until Element Is Visible           ${ponteiro_produto_03}
    Should Contain                          ${ponteiro_produto_03}          ${produto_03}
    Wait Until Element Is Visible           ${comprar}
    Click Button                            ${comprar}
    Wait Until Element Is Visible           ${informe_cep}
    Input Text                              ${informe_cep}                  ${cep_anapolis}
    Wait Until Element Is Visible           ${confirma_cep}
    Click Element                           ${confirma_cep}
    Sleep                                   2
    Wait Until Element Is Visible           ${carrinho}
    Should Contain                          ${carrinho}                     ${nome_carrinho}
    Wait Until Element Is Visible           ${total_pagamento_1}
    Should Contain                          ${total_pagamento_1}            ${valor_total_carrinho_04}
    Wait Until Element Is Visible           ${finalizar_pedido}
    Click Element                           ${finalizar_pedido}
    Sleep                                   8
    Wait Until Element Is Visible           ${dados_de_entrega}
    Click Element                           ${dados_de_entrega}
    Wait Until Element Is Visible           ${cadastrar_endereco}
    Click Element                           ${cadastrar_endereco}
    Wait Until Element Is Visible           ${campo_cep_pagamento}
    Press Keys                              ${campo_cep_pagamento}          7
    Sleep                                   1
    Press Keys                              ${campo_cep_pagamento}          5
    Sleep                                   1
    Press Keys                              ${campo_cep_pagamento}          1
    Sleep                                   1
    Press Keys                              ${campo_cep_pagamento}          2
    Sleep                                   1
    Press Keys                              ${campo_cep_pagamento}          4
    Sleep                                   1
    Press Keys                              ${campo_cep_pagamento}          8
    Sleep                                   1
    Press Keys                              ${campo_cep_pagamento}          2
    Sleep                                   1
    Press Keys                              ${campo_cep_pagamento}          0
    Sleep                                   8
    Wait Until Element Is Visible           ${campo_numero_pagamento}
    Press Keys                              ${campo_numero_pagamento}       ${numero}
    Sleep                                   2
    Click Element                           ${salvar_endereco}
    Wait Until Element Is Visible           ${campo_endereco_anapolis}
    Click Element                           ${campo_endereco_anapolis}
    Wait Until Element Is Visible           ${total_pagamento_1}
    Click Element                           ${total_pagamento_1}
    Should Contain                          ${total_pagamento_1}              ${valor_total_carrinho_02}
    
    #segunda parte
    Wait Until Element Is Visible           ${dados_de_entrega}
    Click Element                           ${dados_de_entrega}
    Wait Until Element Is Visible           ${cadastrar_endereco}
    Click Element                           ${cadastrar_endereco}
    Wait Until Element Is Visible           ${campo_cep_pagamento}
    Press Keys                              ${campo_cep_pagamento}          8
    Sleep                                   1
    Press Keys                              ${campo_cep_pagamento}          8
    Sleep                                   1
    Press Keys                              ${campo_cep_pagamento}          5
    Sleep                                   1
    Press Keys                              ${campo_cep_pagamento}          1
    Sleep                                   1
    Press Keys                              ${campo_cep_pagamento}          2
    Sleep                                   1
    Press Keys                              ${campo_cep_pagamento}          3
    Sleep                                   1
    Press Keys                              ${campo_cep_pagamento}          7
    Sleep                                   1
    Press Keys                              ${campo_cep_pagamento}          5
    Sleep                                   8
    Wait Until Element Is Visible           ${campo_numero_pagamento}
    Press Keys                              ${campo_numero_pagamento}       ${numero}
    Sleep                                   1
    Click Element                           ${salvar_endereco}
    Wait Until Element Is Visible           ${campo_endereco_santa_catarina}
    Click Element                           ${campo_endereco_santa_catarina}
    Wait Until Element Is Visible           ${total_pagamento_5}
    Click Element                           ${total_pagamento_5}
    Should Contain                          ${total_pagamento_5}              ${valor_total_pagamento_02}

ENTAO devo validar o preço do carrinho e checkout do produto VW 5Z0807183A - VW
    Wait Until Element Is Visible           ${ponteiro_produto_06}
    Should Contain                          ${ponteiro_produto_06}          ${produto_06}
    Wait Until Element Is Visible           ${comprar}
    Click Button                            ${comprar}
    Wait Until Element Is Visible           ${informe_cep}
    Input Text                              ${informe_cep}                  ${cep_02}
    Wait Until Element Is Visible           ${confirma_cep}
    Click Element                           ${confirma_cep}
    Sleep                                   2
    Wait Until Element Is Visible           ${carrinho}
    Should Contain                          ${carrinho}                     ${nome_carrinho}
    Wait Until Element Is Visible           ${total_pagamento_4}
    Should Contain                          ${total_pagamento_4}            ${valor_total_carrinho_06}
    Wait Until Element Is Visible           ${finalizar_pedido}
    Click Element                           ${finalizar_pedido}
    Sleep                                   8
    Wait Until Element Is Visible           ${dados_de_entrega}
    Click Element                           ${dados_de_entrega}
    Wait Until Element Is Visible           ${endereco_box}
    Click Element                           ${endereco_box}
    Wait Until Element Is Visible           ${total_pagamento_4}
    Click Element                           ${total_pagamento_4}
    Should Contain                          ${total_pagamento_4}             ${valor_total_carrinho_06}

QUANDO acessar a minha conta - VW
    Wait Until Element Is Visible           ${icone_minha_conta}
    Click Element                           ${icone_minha_conta}
    Wait Until Element Is Visible           ${minha_conta_ponteiro}
    Wait Until Element Is Visible           ${opcao_endereco}
    Click Element                           ${opcao_endereco}
    Sleep                                   8

ENTAO devo excluir os endereços cadastrados - VW
    Wait Until Element Is Visible                       ${cookie}
    Click Element       ${cookie}

    FOR     ${index}  IN RANGE    5
    ${check_element}=  Run Keyword and Return Status   Wait Until Page Contains Element    ${excluir_enderecos}    4s
    Run Keyword If      '${check_element}' == 'True'     Click Element  ${excluir_enderecos}
    END
    

    Pass Execution    ENTAO devo excluir os endereços cadastrados - VW passed

