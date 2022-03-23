Documentation
... Suíte com palavras chave de compras do sistema

*** Settings ***
Library    SeleniumLibrary
Library    String


*** Keywords ***

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

DADO que eu esteja logado no site - VW
    Go To                               ${home_inicio}
    Click Element                       ${perfil_entrar}
    Wait Until Element Is Visible       ${ponteiro_login}
    Input Text                          ${campo_email}                      ${email}
    Input Text                          ${campo_senha}                      ${senha}
    Click button                        ${btn_entrar}
    Wait Until Element Is Visible       ${ponteiro_login}
    Sleep                                   6

ENTÃO devo realizar a compra do produto VW JZZ115561A - VW
    Wait Until Element Is Visible           ${finalizar_pedido}
    Click Element                           ${finalizar_pedido}
    Sleep                                   8
    Wait Until Element Is Visible           ${dados_de_entrega}
    Click Element                           ${dados_de_entrega}
    Wait Until Element Is Visible           ${endereco_box}
    Click Element                           ${endereco_box}
    Sleep                                   8
    Wait Until Element Is Visible           ${selecionar_frete}
    Click Element                           ${selecionar_frete}
    Wait Until Element Is Visible           ${opcao_jadlog}
    Click Element                           ${opcao_jadlog}
    Sleep                                   6
    Wait Until Element Is Visible           ${forma_pagamento}
    Click Element                           ${forma_pagamento}
    Sleep                                   1
    Wait Until Element Is Visible           ${opcao_hipercard}
    Click Element                           ${opcao_hipercard}
    Wait Until Element Is Visible           ${campo_cartao}
    Input Text                              ${campo_cartao}             ${nmr_cartao_hipercard}
    Wait Until Element Is Visible           ${campo_nome}
    Input Text                              ${campo_nome}               ${nome_cartao}
    Wait Until Element Is Visible           ${campo_validade}
    Input Text                              ${campo_validade}           ${validade}
    Wait Until Element Is Visible           ${campo_cvc}
    Input Text                              ${campo_cvc}                ${cvc}
    Wait Until Element Is Visible           ${campo_parcelas}
    Click Element                           ${campo_parcelas}
    Wait Until Element Is Visible           ${dez_parcelas}
    Click Element                           ${dez_parcelas}
    Click Element                           ${copiar_dados}
    Input Text                              ${campo_dtnascimento}       ${dt_nascimento}

QUANDO eu adicionar o produto VW JZZ819653 no carrinho - VW
    Wait Until Element Is Visible           ${campo_pesquisa}
    Input Text                              ${campo_pesquisa}               ${produto_02}
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

ENTÃO devo realizar a compra do produto VW JZZ819653 - VW
    Wait Until Element Is Visible           ${finalizar_pedido}
    Click Element                           ${finalizar_pedido}
    Sleep                                   8
    Wait Until Element Is Visible           ${dados_de_entrega}
    Click Element                           ${dados_de_entrega}
    Wait Until Element Is Visible           ${endereco_box}
    Click Element                           ${endereco_box}
    Sleep                                   8
    Wait Until Element Is Visible           ${selecionar_frete}
    Click Element                           ${selecionar_frete}
    Wait Until Element Is Visible           ${opcao_jadlog}
    Click Element                           ${opcao_jadlog}
    Sleep                                   6
    Wait Until Element Is Visible           ${forma_pagamento}
    Click Element                           ${forma_pagamento}
    Sleep                                   1
    Wait Until Element Is Visible           ${opcao_visa}
    Click Element                           ${opcao_visa}
    Wait Until Element Is Visible           ${campo_cartao}
    Input Text                              ${campo_cartao}             ${nmr_cartao_visa}
    Wait Until Element Is Visible           ${campo_nome}
    Input Text                              ${campo_nome}               ${nome_cartao}
    Wait Until Element Is Visible           ${campo_validade}
    Input Text                              ${campo_validade}           ${validade}
    Wait Until Element Is Visible           ${campo_cvc}
    Input Text                              ${campo_cvc}                ${cvc}
    Wait Until Element Is Visible           ${campo_parcelas}
    Click Element                           ${campo_parcelas}
    Wait Until Element Is Visible           ${dez_parcelas}
    Click Element                           ${dez_parcelas}
    Click Element                           ${copiar_dados}
    Input Text                              ${campo_dtnascimento}       ${dt_nascimento}

QUANDO eu adicionar o produto VW JZW201511 no carrinho - VW
    Wait Until Element Is Visible           ${campo_pesquisa}
    Input Text                              ${campo_pesquisa}               ${produto_03}
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

ENTÃO devo realizar a compra do produto VW JZW201511 - VW
    Wait Until Element Is Visible           ${finalizar_pedido}
    Click Element                           ${finalizar_pedido}
    Sleep                                   8
    Wait Until Element Is Visible           ${dados_de_entrega}
    Click Element                           ${dados_de_entrega}
    Wait Until Element Is Visible           ${endereco_box}
    Click Element                           ${endereco_box}
    Sleep                                   8
    Wait Until Element Is Visible           ${selecionar_frete}
    Click Element                           ${selecionar_frete}
    Wait Until Element Is Visible           ${opcao_jadlog}
    Click Element                           ${opcao_jadlog}
    Sleep                                   6
    Wait Until Element Is Visible           ${forma_pagamento}
    Click Element                           ${forma_pagamento}
    Sleep                                   1
    Wait Until Element Is Visible           ${opcao_mastercard}
    Click Element                           ${opcao_mastercard}
    Wait Until Element Is Visible           ${campo_cartao}
    Input Text                              ${campo_cartao}             ${nmr_cartao_mastercard}
    Wait Until Element Is Visible           ${campo_nome}
    Input Text                              ${campo_nome}               ${nome_cartao}
    Wait Until Element Is Visible           ${campo_validade}
    Input Text                              ${campo_validade}           ${validade}
    Wait Until Element Is Visible           ${campo_cvc}
    Input Text                              ${campo_cvc}                ${cvc}
    Wait Until Element Is Visible           ${campo_parcelas}
    Click Element                           ${campo_parcelas}
    Wait Until Element Is Visible           ${dez_parcelas}
    Click Element                           ${dez_parcelas}
    Click Element                           ${copiar_dados}
    Input Text                              ${campo_dtnascimento}       ${dt_nascimento}

QUANDO eu adicionar o produto VW JZZ129620C no carrinho - VW
    Wait Until Element Is Visible           ${campo_pesquisa}
    Input Text                              ${campo_pesquisa}               ${produto_04}
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

ENTÃO devo realizar a compra do produto VW JZZ129620C - VW
    Wait Until Element Is Visible           ${finalizar_pedido}
    Click Element                           ${finalizar_pedido}
    Sleep                                   8
    Wait Until Element Is Visible           ${dados_de_entrega}
    Click Element                           ${dados_de_entrega}
    Wait Until Element Is Visible           ${endereco_box}
    Click Element                           ${endereco_box}
    Sleep                                   8
    Wait Until Element Is Visible           ${selecionar_frete}
    Click Element                           ${selecionar_frete}
    Wait Until Element Is Visible           ${opcao_jadlog}
    Click Element                           ${opcao_jadlog}
    Sleep                                   6
    Wait Until Element Is Visible           ${forma_pagamento}
    Click Element                           ${forma_pagamento}
    Sleep                                   1
    Wait Until Element Is Visible           ${opcao_elo}
    Click Element                           ${opcao_elo}
    Wait Until Element Is Visible           ${campo_cartao}
    Input Text                              ${campo_cartao}             ${nmr_cartao_elo}
    Wait Until Element Is Visible           ${campo_nome}
    Input Text                              ${campo_nome}               ${nome_cartao}
    Wait Until Element Is Visible           ${campo_validade}
    Input Text                              ${campo_validade}           ${validade}
    Wait Until Element Is Visible           ${campo_cvc}
    Input Text                              ${campo_cvc}                ${cvc}
    Wait Until Element Is Visible           ${campo_parcelas}
    Click Element                           ${campo_parcelas}
    Wait Until Element Is Visible           ${dez_parcelas}
    Click Element                           ${dez_parcelas}
    Click Element                           ${copiar_dados}
    Input Text                              ${campo_dtnascimento}       ${dt_nascimento}

QUANDO eu adicionar o produto VW GJZW012R2 no carrinho - VW
    Wait Until Element Is Visible           ${campo_pesquisa}
    Input Text                              ${campo_pesquisa}               ${produto_05}
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

ENTÃO devo realizar a compra do produto VW GJZW012R2 - VW
    Wait Until Element Is Visible           ${finalizar_pedido}
    Click Element                           ${finalizar_pedido}
    Sleep                                   8
    Wait Until Element Is Visible           ${dados_de_entrega}
    Click Element                           ${dados_de_entrega}
    Wait Until Element Is Visible           ${endereco_box}
    Click Element                           ${endereco_box}
    Sleep                                   8
    Wait Until Element Is Visible           ${selecionar_frete}
    Click Element                           ${selecionar_frete}
    Wait Until Element Is Visible           ${opcao_jadlog}
    Click Element                           ${opcao_jadlog}
    Sleep                                   6
    Wait Until Element Is Visible           ${forma_pagamento}
    Click Element                           ${forma_pagamento}
    Sleep                                   1
    Wait Until Element Is Visible           ${opcao_hipercard}
    Click Element                           ${opcao_hipercard}
    Wait Until Element Is Visible           ${campo_cartao}
    Input Text                              ${campo_cartao}             ${nmr_cartao_hipercard}
    Wait Until Element Is Visible           ${campo_nome}
    Input Text                              ${campo_nome}               ${nome_cartao}
    Wait Until Element Is Visible           ${campo_validade}
    Input Text                              ${campo_validade}           ${validade}
    Wait Until Element Is Visible           ${campo_cvc}
    Input Text                              ${campo_cvc}                ${cvc}
    Wait Until Element Is Visible           ${campo_parcelas}
    Click Element                           ${campo_parcelas}
    Wait Until Element Is Visible           ${dez_parcelas}
    Click Element                           ${dez_parcelas}
    Click Element                           ${copiar_dados}
    Input Text                              ${campo_dtnascimento}       ${dt_nascimento}

QUANDO eu adicionar o produto VW N90856001 no carrinho - VW
    Wait Until Element Is Visible           ${campo_pesquisa}
    Input Text                              ${campo_pesquisa}               ${produto_06}
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

ENTÃO devo realizar a compra do produto VW N90856001 - VW
    Wait Until Element Is Visible           ${finalizar_pedido}
    Click Element                           ${finalizar_pedido}
    Sleep                                   8
    Wait Until Element Is Visible           ${dados_de_entrega}
    Click Element                           ${dados_de_entrega}
    Wait Until Element Is Visible           ${endereco_box}
    Click Element                           ${endereco_box}
    Sleep                                   8
    Wait Until Element Is Visible           ${selecionar_frete}
    Click Element                           ${selecionar_frete}
    Wait Until Element Is Visible           ${opcao_jadlog}
    Click Element                           ${opcao_jadlog}
    Sleep                                   6
    Wait Until Element Is Visible           ${forma_pagamento}
    Click Element                           ${forma_pagamento}
    Sleep                                   1
    Wait Until Element Is Visible           ${opcao_hipercard}
    Click Element                           ${opcao_hipercard}
    Wait Until Element Is Visible           ${campo_cartao}
    Input Text                              ${campo_cartao}             ${nmr_cartao_invalido}
    Wait Until Element Is Visible           ${campo_nome}
    Input Text                              ${campo_nome}               ${nome_cartao}
    Wait Until Element Is Visible           ${campo_validade}
    Input Text                              ${campo_validade}           ${validade}
    Wait Until Element Is Visible           ${campo_cvc}
    Input Text                              ${campo_cvc}                ${cvc}
    Sleep                                   3
    Wait Until Element Is Visible           ${cartao_invalido}
    Should Contain                          ${cartao_invalido}          ${msg_cartao_invalido}
    Wait Until Element Is Visible           ${campo_parcelas}
    Click Element                           ${campo_parcelas}
    Wait Until Element Is Visible           ${dez_parcelas}
    Click Element                           ${dez_parcelas}
    Click Element                           ${copiar_dados}
    Sleep                                   3
    Input Text                              ${campo_dtnascimento}       ${dt_nascimento}
    
QUANDO eu adicionar o produto VW 000010006 no carrinho - VW
    Wait Until Element Is Visible           ${campo_pesquisa}
    Input Text                              ${campo_pesquisa}               ${produto_07}
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

ENTÃO devo realizar a compra do produto VW 000010006 - VW
    Wait Until Element Is Visible           ${finalizar_pedido}
    Click Element                           ${finalizar_pedido}
    Sleep                                   8
    Wait Until Element Is Visible           ${dados_de_entrega}
    Click Element                           ${dados_de_entrega}
    Wait Until Element Is Visible           ${endereco_box}
    Click Element                           ${endereco_box}
    Sleep                                   8
    Wait Until Element Is Visible           ${selecionar_frete}
    Click Element                           ${selecionar_frete}
    Wait Until Element Is Visible           ${opcao_jadlog}
    Click Element                           ${opcao_jadlog}
    Sleep                                   6
    Wait Until Element Is Visible           ${forma_pagamento}
    Click Element                           ${forma_pagamento}
    Sleep                                   1
    Wait Until Element Is Visible           ${opcao_mastercard}
    Click Element                           ${opcao_mastercard}
    Wait Until Element Is Visible           ${campo_cartao}
    Input Text                              ${campo_cartao}             ${nmr_cartao_invalido}
    Wait Until Element Is Visible           ${campo_nome}
    Input Text                              ${campo_nome}               ${nome_cartao}
    Wait Until Element Is Visible           ${campo_validade}
    Input Text                              ${campo_validade}           ${validade}
    Wait Until Element Is Visible           ${campo_cvc}
    Input Text                              ${campo_cvc}                ${cvc}
    Sleep                                   3
    Wait Until Element Is Visible           ${cartao_invalido}
    Should Contain                          ${cartao_invalido}          ${msg_cartao_invalido}
    Wait Until Element Is Visible           ${campo_parcelas}
    Click Element                           ${campo_parcelas}
    Wait Until Element Is Visible           ${dez_parcelas}
    Click Element                           ${dez_parcelas}
    Click Element                           ${copiar_dados}
    Sleep                                   3
    Input Text                              ${campo_dtnascimento}       ${dt_nascimento}

QUANDO eu adicionar o produto VW JZZ698151AE no carrinho - VW
    Wait Until Element Is Visible           ${campo_pesquisa}
    Input Text                              ${campo_pesquisa}               ${produto_07}
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

ENTÃO devo realizar a compra do produto VW JZZ698151AE - VW
    Wait Until Element Is Visible           ${finalizar_pedido}
    Click Element                           ${finalizar_pedido}
    Sleep                                   8
    Wait Until Element Is Visible           ${dados_de_entrega}
    Click Element                           ${dados_de_entrega}
    Wait Until Element Is Visible           ${endereco_box}
    Click Element                           ${endereco_box}
    Sleep                                   8
    Wait Until Element Is Visible           ${selecionar_frete}
    Click Element                           ${selecionar_frete}
    Wait Until Element Is Visible           ${opcao_jadlog}
    Click Element                           ${opcao_jadlog}
    Sleep                                   6
    Wait Until Element Is Visible           ${forma_pagamento}
    Click Element                           ${forma_pagamento}
    Sleep                                   1
    Wait Until Element Is Visible           ${opcao_elo}
    Click Element                           ${opcao_elo}
    Wait Until Element Is Visible           ${campo_cartao}
    Input Text                              ${campo_cartao}             ${nmr_cartao_invalido}
    Wait Until Element Is Visible           ${campo_nome}
    Input Text                              ${campo_nome}               ${nome_cartao}
    Wait Until Element Is Visible           ${campo_validade}
    Input Text                              ${campo_validade}           ${validade}
    Wait Until Element Is Visible           ${campo_cvc}
    Input Text                              ${campo_cvc}                ${cvc}
    Sleep                                   3
    Wait Until Element Is Visible           ${cartao_invalido}
    Should Contain                          ${cartao_invalido}          ${msg_cartao_invalido}
    Wait Until Element Is Visible           ${campo_parcelas}
    Click Element                           ${campo_parcelas}
    Wait Until Element Is Visible           ${dez_parcelas}
    Click Element                           ${dez_parcelas}
    Click Element                           ${copiar_dados}
    Sleep                                   3
    Input Text                              ${campo_dtnascimento}       ${dt_nascimento}

QUANDO eu adicionar o produto VW 5Z0807183A no carrinho - VW
    Wait Until Element Is Visible           ${campo_pesquisa}
    Input Text                              ${campo_pesquisa}               ${produto_08}
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

ENTÃO devo realizar a compra do produto VW 5Z0807183A - VW
    Wait Until Element Is Visible           ${finalizar_pedido}
    Click Element                           ${finalizar_pedido}
    Sleep                                   8
    Wait Until Element Is Visible           ${dados_de_entrega}
    Click Element                           ${dados_de_entrega}
    Wait Until Element Is Visible           ${endereco_box}
    Click Element                           ${endereco_box}
    Sleep                                   8
    Wait Until Element Is Visible           ${selecionar_frete}
    Click Element                           ${selecionar_frete}
    Wait Until Element Is Visible           ${opcao_jadlog}
    Click Element                           ${opcao_jadlog}
    Sleep                                   6
    Wait Until Element Is Visible           ${forma_pagamento}
    Click Element                           ${forma_pagamento}
    Sleep                                   1
    Wait Until Element Is Visible           ${opcao_hipercard}
    Click Element                           ${opcao_hipercard}
    Wait Until Element Is Visible           ${campo_cartao}
    Input Text                              ${campo_cartao}             ${nmr_cartao_invalido}
    Wait Until Element Is Visible           ${campo_nome}
    Input Text                              ${campo_nome}               ${nome_cartao}
    Wait Until Element Is Visible           ${campo_validade}
    Input Text                              ${campo_validade}           ${validade}
    Wait Until Element Is Visible           ${campo_cvc}
    Input Text                              ${campo_cvc}                ${cvc}
    Sleep                                   3
    Wait Until Element Is Visible           ${cartao_invalido}
    Should Contain                          ${cartao_invalido}          ${msg_cartao_invalido}
    Wait Until Element Is Visible           ${campo_parcelas}
    Click Element                           ${campo_parcelas}
    Wait Until Element Is Visible           ${dez_parcelas}
    Click Element                           ${dez_parcelas}
    Click Element                           ${copiar_dados}
    Sleep                                   3
    Input Text                              ${campo_dtnascimento}       ${dt_nascimento}

QUANDO eu adicionar o produto VW WHT005263 no carrinho - VW
    Wait Until Element Is Visible           ${campo_pesquisa}
    Input Text                              ${campo_pesquisa}               ${produto_09}
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

ENTÃO devo realizar a compra do produto VW WHT005263 - VW
    Wait Until Element Is Visible           ${finalizar_pedido}
    Click Element                           ${finalizar_pedido}
    Sleep                                   8
    Wait Until Element Is Visible           ${dados_de_entrega}
    Click Element                           ${dados_de_entrega}
    Wait Until Element Is Visible           ${endereco_box}
    Click Element                           ${endereco_box}
    Sleep                                   8
    Wait Until Element Is Visible           ${selecionar_frete}
    Click Element                           ${selecionar_frete}
    Wait Until Element Is Visible           ${opcao_jadlog}
    Click Element                           ${opcao_jadlog}
    Sleep                                   6
    Wait Until Element Is Visible           ${forma_pagamento}
    Click Element                           ${forma_pagamento}
    Sleep                                   1
    Wait Until Element Is Visible           ${opcao_hipercard}
    Click Element                           ${opcao_hipercard}
    Wait Until Element Is Visible           ${campo_cartao}
    Input Text                              ${campo_cartao}             ${nmr_cartao_hipercard}
    Wait Until Element Is Visible           ${campo_nome}
    Input Text                              ${campo_nome}               ${nome_cartao}
    Wait Until Element Is Visible           ${campo_validade}
    Input Text                              ${campo_validade}           ${validade}
    Wait Until Element Is Visible           ${campo_cvc}
    Input Text                              ${campo_cvc}                ${cvc}
    Wait Until Element Is Visible           ${campo_parcelas}
    Click Element                           ${campo_parcelas}
    Wait Until Element Is Visible           ${dez_parcelas}
    Click Element                           ${dez_parcelas}
    Click Element                           ${copiar_dados}
    Sleep                                   3
    Input Text                              ${campo_dtnascimento}       ${dt_nascimento}

QUANDO eu adicionar o produto VW N0177382 no carrinho - VW
    Wait Until Element Is Visible           ${campo_pesquisa}
    Input Text                              ${campo_pesquisa}               ${produto_10}
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

ENTÃO devo realizar a compra do produto VW N0177382 com uma parcela - VW
    Wait Until Element Is Visible           ${finalizar_pedido}
    Click Element                           ${finalizar_pedido}
    Sleep                                   8
    Wait Until Element Is Visible           ${dados_de_entrega}
    Click Element                           ${dados_de_entrega}
    Wait Until Element Is Visible           ${endereco_box}
    Click Element                           ${endereco_box}
    Sleep                                   8
    Wait Until Element Is Visible           ${selecionar_frete}
    Click Element                           ${selecionar_frete}
    Wait Until Element Is Visible           ${opcao_jadlog}
    Click Element                           ${opcao_jadlog}
    Sleep                                   6
    Wait Until Element Is Visible           ${forma_pagamento}
    Click Element                           ${forma_pagamento}
    Sleep                                   1
    Wait Until Element Is Visible           ${opcao_hipercard}
    Click Element                           ${opcao_hipercard}
    Wait Until Element Is Visible           ${campo_cartao}
    Input Text                              ${campo_cartao}             ${nmr_cartao_hipercard}
    Wait Until Element Is Visible           ${campo_nome}
    Input Text                              ${campo_nome}               ${nome_cartao}
    Wait Until Element Is Visible           ${campo_validade}
    Input Text                              ${campo_validade}           ${validade}
    Wait Until Element Is Visible           ${campo_cvc}
    Input Text                              ${campo_cvc}                ${cvc}
    Wait Until Element Is Visible           ${campo_parcelas}
    Click Element                           ${campo_parcelas}
    Wait Until Element Is Visible           ${uma_parcela}
    Click Element                           ${uma_parcela}
    Click Element                           ${copiar_dados}
    Input Text                              ${campo_dtnascimento}       ${dt_nascimento}

ENTÃO devo realizar a compra do produto VW N0177382 com duas parcelas - VW
    Wait Until Element Is Visible           ${finalizar_pedido}
    Click Element                           ${finalizar_pedido}
    Sleep                                   8
    Wait Until Element Is Visible           ${dados_de_entrega}
    Click Element                           ${dados_de_entrega}
    Wait Until Element Is Visible           ${endereco_box}
    Click Element                           ${endereco_box}
    Sleep                                   8
    Wait Until Element Is Visible           ${selecionar_frete}
    Click Element                           ${selecionar_frete}
    Wait Until Element Is Visible           ${opcao_jadlog}
    Click Element                           ${opcao_jadlog}
    Sleep                                   6
    Wait Until Element Is Visible           ${forma_pagamento}
    Click Element                           ${forma_pagamento}
    Sleep                                   1
    Wait Until Element Is Visible           ${opcao_hipercard}
    Click Element                           ${opcao_hipercard}
    Wait Until Element Is Visible           ${campo_cartao}
    Input Text                              ${campo_cartao}             ${nmr_cartao_hipercard}
    Wait Until Element Is Visible           ${campo_nome}
    Input Text                              ${campo_nome}               ${nome_cartao}
    Wait Until Element Is Visible           ${campo_validade}
    Input Text                              ${campo_validade}           ${validade}
    Wait Until Element Is Visible           ${campo_cvc}
    Input Text                              ${campo_cvc}                ${cvc}
    Wait Until Element Is Visible           ${campo_parcelas}
    Click Element                           ${campo_parcelas}
    Wait Until Element Is Visible           ${duas_parcelas}
    Click Element                           ${duas_parcelas}
    Click Element                           ${copiar_dados}
    Input Text                              ${campo_dtnascimento}       ${dt_nascimento}

ENTÃO devo realizar a compra do produto VW N0177382 com tres parcelas - VW
    Wait Until Element Is Visible           ${finalizar_pedido}
    Click Element                           ${finalizar_pedido}
    Sleep                                   8
    Wait Until Element Is Visible           ${dados_de_entrega}
    Click Element                           ${dados_de_entrega}
    Wait Until Element Is Visible           ${endereco_box}
    Click Element                           ${endereco_box}
    Sleep                                   8
    Wait Until Element Is Visible           ${selecionar_frete}
    Click Element                           ${selecionar_frete}
    Wait Until Element Is Visible           ${opcao_jadlog}
    Click Element                           ${opcao_jadlog}
    Sleep                                   6
    Wait Until Element Is Visible           ${forma_pagamento}
    Click Element                           ${forma_pagamento}
    Sleep                                   1
    Wait Until Element Is Visible           ${opcao_hipercard}
    Click Element                           ${opcao_hipercard}
    Wait Until Element Is Visible           ${campo_cartao}
    Input Text                              ${campo_cartao}             ${nmr_cartao_hipercard}
    Wait Until Element Is Visible           ${campo_nome}
    Input Text                              ${campo_nome}               ${nome_cartao}
    Wait Until Element Is Visible           ${campo_validade}
    Input Text                              ${campo_validade}           ${validade}
    Wait Until Element Is Visible           ${campo_cvc}
    Input Text                              ${campo_cvc}                ${cvc}
    Wait Until Element Is Visible           ${campo_parcelas}
    Click Element                           ${campo_parcelas}
    Wait Until Element Is Visible           ${tres_parcelas}
    Click Element                           ${tres_parcelas}
    Click Element                           ${copiar_dados}
    Input Text                              ${campo_dtnascimento}       ${dt_nascimento}

ENTÃO devo realizar a compra do produto VW N0177382 com quatro parcelas - VW
    Wait Until Element Is Visible           ${finalizar_pedido}
    Click Element                           ${finalizar_pedido}
    Sleep                                   8
    Wait Until Element Is Visible           ${dados_de_entrega}
    Click Element                           ${dados_de_entrega}
    Wait Until Element Is Visible           ${endereco_box}
    Click Element                           ${endereco_box}
    Sleep                                   8
    Wait Until Element Is Visible           ${selecionar_frete}
    Click Element                           ${selecionar_frete}
    Wait Until Element Is Visible           ${opcao_jadlog}
    Click Element                           ${opcao_jadlog}
    Sleep                                   6
    Wait Until Element Is Visible           ${forma_pagamento}
    Click Element                           ${forma_pagamento}
    Sleep                                   1
    Wait Until Element Is Visible           ${opcao_hipercard}
    Click Element                           ${opcao_hipercard}
    Wait Until Element Is Visible           ${campo_cartao}
    Input Text                              ${campo_cartao}             ${nmr_cartao_hipercard}
    Wait Until Element Is Visible           ${campo_nome}
    Input Text                              ${campo_nome}               ${nome_cartao}
    Wait Until Element Is Visible           ${campo_validade}
    Input Text                              ${campo_validade}           ${validade}
    Wait Until Element Is Visible           ${campo_cvc}
    Input Text                              ${campo_cvc}                ${cvc}
    Wait Until Element Is Visible           ${campo_parcelas}
    Click Element                           ${campo_parcelas}
    Wait Until Element Is Visible           ${quatro_parcelas}
    Click Element                           ${quatro_parcelas}
    Click Element                           ${copiar_dados}
    Input Text                              ${campo_dtnascimento}       ${dt_nascimento}

ENTÃO devo realizar a compra do produto VW N0177382 com cinco parcelas - VW
    Wait Until Element Is Visible           ${finalizar_pedido}
    Click Element                           ${finalizar_pedido}
    Sleep                                   8
    Wait Until Element Is Visible           ${dados_de_entrega}
    Click Element                           ${dados_de_entrega}
    Wait Until Element Is Visible           ${endereco_box}
    Click Element                           ${endereco_box}
    Sleep                                   8
    Wait Until Element Is Visible           ${selecionar_frete}
    Click Element                           ${selecionar_frete}
    Wait Until Element Is Visible           ${opcao_jadlog}
    Click Element                           ${opcao_jadlog}
    Sleep                                   6
    Wait Until Element Is Visible           ${forma_pagamento}
    Click Element                           ${forma_pagamento}
    Sleep                                   1
    Wait Until Element Is Visible           ${opcao_hipercard}
    Click Element                           ${opcao_hipercard}
    Wait Until Element Is Visible           ${campo_cartao}
    Input Text                              ${campo_cartao}             ${nmr_cartao_hipercard}
    Wait Until Element Is Visible           ${campo_nome}
    Input Text                              ${campo_nome}               ${nome_cartao}
    Wait Until Element Is Visible           ${campo_validade}
    Input Text                              ${campo_validade}           ${validade}
    Wait Until Element Is Visible           ${campo_cvc}
    Input Text                              ${campo_cvc}                ${cvc}
    Wait Until Element Is Visible           ${campo_parcelas}
    Click Element                           ${campo_parcelas}
    Wait Until Element Is Visible           ${cinco_parcelas}
    Click Element                           ${cinco_parcelas}
    Click Element                           ${copiar_dados}
    Input Text                              ${campo_dtnascimento}       ${dt_nascimento}

ENTÃO devo realizar a compra do produto VW N0177382 com seis parcelas - VW
    Wait Until Element Is Visible           ${finalizar_pedido}
    Click Element                           ${finalizar_pedido}
    Sleep                                   8
    Wait Until Element Is Visible           ${dados_de_entrega}
    Click Element                           ${dados_de_entrega}
    Wait Until Element Is Visible           ${endereco_box}
    Click Element                           ${endereco_box}
    Sleep                                   8
    Wait Until Element Is Visible           ${selecionar_frete}
    Click Element                           ${selecionar_frete}
    Wait Until Element Is Visible           ${opcao_jadlog}
    Click Element                           ${opcao_jadlog}
    Sleep                                   6
    Wait Until Element Is Visible           ${forma_pagamento}
    Click Element                           ${forma_pagamento}
    Sleep                                   1
    Wait Until Element Is Visible           ${opcao_hipercard}
    Click Element                           ${opcao_hipercard}
    Wait Until Element Is Visible           ${campo_cartao}
    Input Text                              ${campo_cartao}             ${nmr_cartao_hipercard}
    Wait Until Element Is Visible           ${campo_nome}
    Input Text                              ${campo_nome}               ${nome_cartao}
    Wait Until Element Is Visible           ${campo_validade}
    Input Text                              ${campo_validade}           ${validade}
    Wait Until Element Is Visible           ${campo_cvc}
    Input Text                              ${campo_cvc}                ${cvc}
    Wait Until Element Is Visible           ${campo_parcelas}
    Click Element                           ${campo_parcelas}
    Wait Until Element Is Visible           ${seis_parcelas}
    Click Element                           ${seis_parcelas}
    Click Element                           ${copiar_dados}
    Input Text                              ${campo_dtnascimento}       ${dt_nascimento}

ENTÃO devo realizar a compra do produto VW N0177382 com sete parcelas - VW
    Wait Until Element Is Visible           ${finalizar_pedido}
    Click Element                           ${finalizar_pedido}
    Sleep                                   8
    Wait Until Element Is Visible           ${dados_de_entrega}
    Click Element                           ${dados_de_entrega}
    Wait Until Element Is Visible           ${endereco_box}
    Click Element                           ${endereco_box}
    Sleep                                   8
    Wait Until Element Is Visible           ${selecionar_frete}
    Click Element                           ${selecionar_frete}
    Wait Until Element Is Visible           ${opcao_jadlog}
    Click Element                           ${opcao_jadlog}
    Sleep                                   6
    Wait Until Element Is Visible           ${forma_pagamento}
    Click Element                           ${forma_pagamento}
    Sleep                                   1
    Wait Until Element Is Visible           ${opcao_hipercard}
    Click Element                           ${opcao_hipercard}
    Wait Until Element Is Visible           ${campo_cartao}
    Input Text                              ${campo_cartao}             ${nmr_cartao_hipercard}
    Wait Until Element Is Visible           ${campo_nome}
    Input Text                              ${campo_nome}               ${nome_cartao}
    Wait Until Element Is Visible           ${campo_validade}
    Input Text                              ${campo_validade}           ${validade}
    Wait Until Element Is Visible           ${campo_cvc}
    Input Text                              ${campo_cvc}                ${cvc}
    Wait Until Element Is Visible           ${campo_parcelas}
    Click Element                           ${campo_parcelas}
    Wait Until Element Is Visible           ${sete_parcela}
    Click Element                           ${sete_parcela}
    Click Element                           ${copiar_dados}
    Input Text                              ${campo_dtnascimento}       ${dt_nascimento}

ENTÃO devo realizar a compra do produto VW N0177382 com oito parcelas - VW
    Wait Until Element Is Visible           ${finalizar_pedido}
    Click Element                           ${finalizar_pedido}
    Sleep                                   8
    Wait Until Element Is Visible           ${dados_de_entrega}
    Click Element                           ${dados_de_entrega}
    Wait Until Element Is Visible           ${endereco_box}
    Click Element                           ${endereco_box}
    Sleep                                   8
    Wait Until Element Is Visible           ${selecionar_frete}
    Click Element                           ${selecionar_frete}
    Wait Until Element Is Visible           ${opcao_jadlog}
    Click Element                           ${opcao_jadlog}
    Sleep                                   6
    Wait Until Element Is Visible           ${forma_pagamento}
    Click Element                           ${forma_pagamento}
    Sleep                                   1
    Wait Until Element Is Visible           ${opcao_hipercard}
    Click Element                           ${opcao_hipercard}
    Wait Until Element Is Visible           ${campo_cartao}
    Input Text                              ${campo_cartao}             ${nmr_cartao_hipercard}
    Wait Until Element Is Visible           ${campo_nome}
    Input Text                              ${campo_nome}               ${nome_cartao}
    Wait Until Element Is Visible           ${campo_validade}
    Input Text                              ${campo_validade}           ${validade}
    Wait Until Element Is Visible           ${campo_cvc}
    Input Text                              ${campo_cvc}                ${cvc}
    Wait Until Element Is Visible           ${campo_parcelas}
    Click Element                           ${campo_parcelas}
    Wait Until Element Is Visible           ${oito_parcelas}
    Click Element                           ${oito_parcelas}
    Click Element                           ${copiar_dados}
    Input Text                              ${campo_dtnascimento}       ${dt_nascimento}

ENTÃO devo realizar a compra do produto VW N0177382 com nove parcelas - VW
    Wait Until Element Is Visible           ${finalizar_pedido}
    Click Element                           ${finalizar_pedido}
    Sleep                                   8
    Wait Until Element Is Visible           ${dados_de_entrega}
    Click Element                           ${dados_de_entrega}
    Wait Until Element Is Visible           ${endereco_box}
    Click Element                           ${endereco_box}
    Sleep                                   8
    Wait Until Element Is Visible           ${selecionar_frete}
    Click Element                           ${selecionar_frete}
    Wait Until Element Is Visible           ${opcao_jadlog}
    Click Element                           ${opcao_jadlog}
    Sleep                                   6
    Wait Until Element Is Visible           ${forma_pagamento}
    Click Element                           ${forma_pagamento}
    Sleep                                   1
    Wait Until Element Is Visible           ${opcao_hipercard}
    Click Element                           ${opcao_hipercard}
    Wait Until Element Is Visible           ${campo_cartao}
    Input Text                              ${campo_cartao}             ${nmr_cartao_hipercard}
    Wait Until Element Is Visible           ${campo_nome}
    Input Text                              ${campo_nome}               ${nome_cartao}
    Wait Until Element Is Visible           ${campo_validade}
    Input Text                              ${campo_validade}           ${validade}
    Wait Until Element Is Visible           ${campo_cvc}
    Input Text                              ${campo_cvc}                ${cvc}
    Wait Until Element Is Visible           ${campo_parcelas}
    Click Element                           ${campo_parcelas}
    Wait Until Element Is Visible           ${nove_parcelas}
    Click Element                           ${nove_parcelas}
    Click Element                           ${copiar_dados}
    Input Text                              ${campo_dtnascimento}       ${dt_nascimento}

ENTÃO devo realizar a compra do produto VW N0177382 com dez parcelas - VW
    Wait Until Element Is Visible           ${finalizar_pedido}
    Click Element                           ${finalizar_pedido}
    Sleep                                   8
    Wait Until Element Is Visible           ${dados_de_entrega}
    Click Element                           ${dados_de_entrega}
    Wait Until Element Is Visible           ${endereco_box}
    Click Element                           ${endereco_box}
    Sleep                                   8
    Wait Until Element Is Visible           ${selecionar_frete}
    Click Element                           ${selecionar_frete}
    Wait Until Element Is Visible           ${opcao_jadlog}
    Click Element                           ${opcao_jadlog}
    Sleep                                   6
    Wait Until Element Is Visible           ${forma_pagamento}
    Click Element                           ${forma_pagamento}
    Sleep                                   1
    Wait Until Element Is Visible           ${opcao_hipercard}
    Click Element                           ${opcao_hipercard}
    Wait Until Element Is Visible           ${campo_cartao}
    Input Text                              ${campo_cartao}             ${nmr_cartao_hipercard}
    Wait Until Element Is Visible           ${campo_nome}
    Input Text                              ${campo_nome}               ${nome_cartao}
    Wait Until Element Is Visible           ${campo_validade}
    Input Text                              ${campo_validade}           ${validade}
    Wait Until Element Is Visible           ${campo_cvc}
    Input Text                              ${campo_cvc}                ${cvc}
    Wait Until Element Is Visible           ${campo_parcelas}
    Click Element                           ${campo_parcelas}
    Wait Until Element Is Visible           ${dez_parcelas}
    Click Element                           ${dez_parcelas}
    Click Element                           ${copiar_dados}
    Input Text                              ${campo_dtnascimento}       ${dt_nascimento}





