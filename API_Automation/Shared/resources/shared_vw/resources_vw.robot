Documentation
... Suíte com recursos da VW

*** Settings ***
Library     RequestsLibrary
Library     Collections
Library     ${EXECDIR}/API_Automation/Shared/resources/shared_vw/parametros_vw.py
Library     JSONLibrary

***Keywords***

DADO que eu me conecte ao WebService - VW
    Sleep               1

QUANDO realizar conexão com sucesso - VW
    Sleep               1

ENTÃO realize o login - VW
    &{json_login}           Vw Login
    ${response}         POST        ${HOST_SIGNIN_VW}          json=${json_login}
    ${JSON_CLIENTE}             Set Variable        ${response.json()}
    ${JSON_STATUS}      Get Value From Json         ${JSON_CLIENTE}         $.message
    Should Contain      ${JSON_STATUS}              SUCESSO: Cadastro realizado
    ${CONVERT} =        Convert To String           ${response.status_code}
    Should Contain      ${CONVERT}      200    

ENTÃO realize o login sem sucesso - VW
    &{json_login}           Vw Login Sem Sucesso
    ${response}         POST        ${HOST_SIGNIN_VW}          json=${json_login}      expected_status=500
    ${JSON_CLIENTE}             Set Variable        ${response.json()}
    ${JSON_STATUS}      Get Value From Json         ${JSON_CLIENTE}         $.message
    Should Contain      ${JSON_STATUS}              API ERROR
    ${CONVERT} =        Convert To String           ${response.status_code}
    Should Contain      ${CONVERT}      500

ENTÃO realize o login com e-mail válido e senha inválida - VW
    &{json_login}           Vw Login Com Email Valido Senha Invalida
    ${response}         POST        ${HOST_SIGNIN_VW}          json=${json_login}      expected_status=500
    ${JSON_CLIENTE}             Set Variable        ${response.json()}
    ${JSON_STATUS}      Get Value From Json         ${JSON_CLIENTE}         $.message
    Should Contain      ${JSON_STATUS}              API ERROR
    ${CONVERT} =        Convert To String           ${response.status_code}
    Should Contain      ${CONVERT}      500

ENTÃO realize o login com e-mail inválido e senha válida - VW
    &{json_login}           Vw Login Com Senha Valida Email Invalido
    ${response}         POST        ${HOST_SIGNIN_VW}          json=${json_login}      expected_status=500
    ${JSON_CLIENTE}             Set Variable        ${response.json()}
    ${JSON_STATUS}      Get Value From Json         ${JSON_CLIENTE}         $.message
    Should Contain      ${JSON_STATUS}              API ERROR
    ${CONVERT} =        Convert To String           ${response.status_code}
    Should Contain      ${CONVERT}      500

ENTÃO realize o login com senha curta - VW
    &{json_login}           Vw Login Senha Curta
    ${response}         POST        ${HOST_SIGNIN_VW}          json=${json_login}      expected_status=500
    ${JSON_CLIENTE}             Set Variable        ${response.json()}
    ${JSON_STATUS}      Get Value From Json         ${JSON_CLIENTE}         $.message
    Should Contain      ${JSON_STATUS}              API ERROR
    ${CONVERT} =        Convert To String           ${response.status_code}
    Should Contain      ${CONVERT}      500

ENTÃO realize o cadastro com sucesso - VW
    &{json_cliente}           Vw Cliente
    ${response}         POST        ${HOST_CLIENTE_VW}          json=${json_cliente}           expected_status=200
    ${JSON_CLIENTE}             Set Variable        ${response.json()}
    ${JSON_STATUS}      Get Value From Json         ${JSON_CLIENTE}         $.message
    Should Contain      ${JSON_STATUS}              SUCCESS
    ${CONVERT} =        Convert To String           ${response.status_code}
    Should Contain      ${CONVERT}      200

ENTÃO não realiza o cadastro com sucesso - VW
    &{json_cliente}           Vw Cliente Ja Cadastrado
    ${response}         POST        ${HOST_CLIENTE_VW}          json=${json_cliente}
    ${JSON_CLIENTE}             Set Variable        ${response.json()}
    ${CONVERT} =        Convert To String           ${response.status_code}
    Should Contain      ${CONVERT}      200

ENTÃO não realiza o cadastro com sucesso CPF vazio - VW
    &{json_cliente}           Vw Cliente Cpf Vazio
    ${response}         POST        ${HOST_CLIENTE_VW}          json=${json_cliente}
    ${JSON_CLIENTE}             Set Variable        ${response.json()}
    ${JSON_STATUS}      Get Value From Json         ${JSON_CLIENTE}         $.message
    Should Contain      ${JSON_STATUS}              CPF ou CNPJ JÁ EXISTE
    ${CONVERT} =        Convert To String           ${response.status_code}
    Should Contain      ${CONVERT}      200

ENTÃO verifico o frete do produto Aditivo de Radiador - VW
    &{json_frete}           VW Verifica Frete 5
    ${response}                 POST        ${HOST_FRETE_VW}          json=${json_frete}
    ${CONVERT} =                Convert To String    ${response.status_code}

    #mensagem de cotação realizada
    ${JSON_STATUS}              Get Value From Json         ${response.json()}         $.message

    #descrição do cep de origem, cep de destino e id do produto
    ${CEP_ORIGEM}               Get Value From Json         ${response.json()}         $.data[0].cep_origem
    ${CEP_DESTINO}              Get Value From Json         ${response.json()}         $.data[0].cep_destino
    ${PRODUTO_1_ID}             Get Value From Json         ${response.json()}         $.data[0].produtos[0].pn_produto
    
    #retirar na loja
    ${FRETE_RETIRAR_LOJA}       Get Value From Json         ${response.json()}         $.data[0].frete[0].empresa          
    ${CUSTO_RETIRAR_LOJA}       Get Value From Json         ${response.json()}         $.data[0].frete[0].entrega_custo_final
    
    #método de entrega dos correios
    ${CORREIOS_EMPRESA}               Get Value From Json         ${response.json()}         $.data[0].frete[1].empresa
    ${FRETE_CORREIOS_EXPRESS}         Get Value From Json         ${response.json()}         $.data[0].frete[1].entrega_metodo_tipo
    ${CUSTO_CORREIOS_EXPRESS}         Get Value From Json         ${response.json()}         $.data[0].frete[1].entrega_custo_final

    #retirar na loja
    Should Contain      ${JSON_STATUS}              Cotação de frete realizado.
    Should Contain      ${CEP_ORIGEM}               01524-001
    Should Contain      ${CEP_DESTINO}              07929020
    Should Contain      ${PRODUTO_1_ID}             JZW615301
    Should Contain      ${FRETE_RETIRAR_LOJA}       Retirada Na Loja
    ${VALOR_ZERO}       Set Variable                0
    ${ZERO} =           Convert To Integer          ${VALOR_ZERO}
    Should Contain      ${CUSTO_RETIRAR_LOJA}       ${ZERO}

    #Correios
    Should Contain      ${CORREIOS_EMPRESA}         Correios       
    ${VALOR_FRETE_EXPRESS}      Convert To Number           60.94

    #Express
    Should Contain      ${FRETE_CORREIOS_EXPRESS}         EXPRESS
    Should Contain      ${CUSTO_CORREIOS_EXPRESS}         ${VALOR_FRETE_EXPRESS}

    # método de entrega Jadlog

    ${JADLOG_EMPRESA}               Get Value From Json         ${response.json()}         $.data[0].frete[3].empresa
    
    #stand
    ${FRETE_JADLOG_STAND}               Get Value From Json         ${response.json()}         $.data[0].frete[2].entrega_metodo_tipo
    ${VALOR_FRETE_STAND_JADLOG}         Get Value From Json         ${response.json()}         $.data[0].frete[2].entrega_custo_final
    ${JADLOG_STAND}        Convert To Number           67.75


    Should Contain      ${JADLOG_EMPRESA}               Jadlog
    Should Contain      ${FRETE_JADLOG_STAND}           STANDARD
    Should Contain      ${VALOR_FRETE_STAND_JADLOG}     ${JADLOG_STAND}

    #express
    ${FRETE_JADLOG_EXPRESS}             Get Value From Json         ${response.json()}         $.data[0].frete[3].entrega_metodo_tipo
    ${CUSTO_FRETE_EXPRESS}              Get Value From Json         ${response.json()}         $.data[0].frete[3].entrega_custo_final
    ${JADLOG_EXPRESS}        Convert To Number           40.65
    
    Should Contain      ${FRETE_JADLOG_EXPRESS}               EXPRESS
    Should Contain      ${CUSTO_FRETE_EXPRESS}                ${JADLOG_EXPRESS}

    ${CONVERT} =        Convert To String           ${response.status_code}
    Should Contain    ${CONVERT}        200
    Log To Console    ${response.status_code}
    Log To Console    ${response.content}

ENTÃO verifico o cálculo do produto Aditivo de Radiador - VW
    &{json_frete}           Vw Calculo Frete
    ${response}         POST        ${HOST_VW_CALCULO_FRET}          json=${json_frete}
    ${JSON_STATUS}      Get Value From Json         ${response.json()}         $.message

    ${PARCELAS_MASTER}          Get Value From Json         ${response.json()}         $.data.formas_pagamento[0].nome
    ${PARCELAS_HIPERCARD}       Get Value From Json         ${response.json()}         $.data.formas_pagamento[1].nome
    ${PARCELAS_VISA}            Get Value From Json         ${response.json()}         $.data.formas_pagamento[2].nome
    ${PARCELAS_ELO}             Get Value From Json         ${response.json()}         $.data.formas_pagamento[3].nome

    #Total produto + frete
    ${TOTAL}             Get Value From Json         ${response.json()}         $.data.total

    # 01 Parcela
    ${QTD_1_PARCELAS_VISA}              Get Value From Json         ${response.json()}          $.data.formas_pagamento[2].opcoes[0].parcelas
    ${VISA_VALOR_1_PARCELAS}            Get Value From Json         ${response.json()}          $.data.formas_pagamento[2].opcoes[0].valor_parcela
    ${PARCELAS_VISA_1}                  Convert To Integer   1
    ${VALOR1}                           Convert To Number           127.07
    ${VALOR2}                           Convert To Number           127.07

    # 02 Parcelas
    ${QTD_2_PARCELAS_VISA}              Get Value From Json         ${response.json()}          $.data.formas_pagamento[2].opcoes[1].parcelas
    ${VISA_VALOR_2_PARCELAS}            Get Value From Json         ${response.json()}          $.data.formas_pagamento[2].opcoes[1].valor_parcela
    ${PARCELAS_VISA_2}                  Convert To Integer          2
    ${VALOR3}                           Convert To Number           63.53 

    # 03 Parcelas
    ${QTD_3_PARCELAS_VISA}              Get Value From Json         ${response.json()}          $.data.formas_pagamento[2].opcoes[2].parcelas
    ${VISA_VALOR_3_PARCELAS}            Get Value From Json         ${response.json()}          $.data.formas_pagamento[2].opcoes[2].valor_parcela
    ${PARCELAS_VISA_3}                  Convert To Integer          3
    ${VALOR4}                           Convert To Number           42.36

    # 04 Parcelas
    ${QTD_4_PARCELAS_VISA}              Get Value From Json         ${response.json()}          $.data.formas_pagamento[2].opcoes[3].parcelas
    ${VISA_VALOR_4_PARCELAS}            Get Value From Json         ${response.json()}          $.data.formas_pagamento[2].opcoes[3].valor_parcela
    ${PARCELAS_VISA_4}                  Convert To Integer          4
    ${VALOR5}                           Convert To Number           31.77

    # 05 Parcelas
    ${QTD_5_PARCELAS_VISA}              Get Value From Json         ${response.json()}          $.data.formas_pagamento[2].opcoes[4].parcelas
    ${VISA_VALOR_5_PARCELAS}            Get Value From Json         ${response.json()}          $.data.formas_pagamento[2].opcoes[4].valor_parcela
    ${PARCELAS_VISA_5}                  Convert To Integer          5
    ${VALOR6}                           Convert To Number           25.41

    # 06 Parcelas
    ${QTD_6_PARCELAS_VISA}              Get Value From Json         ${response.json()}          $.data.formas_pagamento[2].opcoes[5].parcelas
    ${VISA_VALOR_6_PARCELAS}            Get Value From Json         ${response.json()}          $.data.formas_pagamento[2].opcoes[5].valor_parcela
    ${PARCELAS_VISA_6}                  Convert To Integer          6
    ${VALOR7}                           Convert To Number           21.18

    # 07 Parcelas
    ${QTD_7_PARCELAS_VISA}              Get Value From Json         ${response.json()}          $.data.formas_pagamento[2].opcoes[6].parcelas
    ${VISA_VALOR_7_PARCELAS}            Get Value From Json         ${response.json()}          $.data.formas_pagamento[2].opcoes[6].valor_parcela
    ${PARCELAS_VISA_7}                  Convert To Integer          7
    ${VALOR8}                           Convert To Number           18.15

    # 08 Parcelas
    ${QTD_8_PARCELAS_VISA}              Get Value From Json         ${response.json()}          $.data.formas_pagamento[2].opcoes[7].parcelas
    ${VISA_VALOR_8_PARCELAS}            Get Value From Json         ${response.json()}          $.data.formas_pagamento[2].opcoes[7].valor_parcela
    ${PARCELAS_VISA_8}                  Convert To Integer          8
    ${VALOR9}                           Convert To Number           15.88

    # 09 Parcelas
    ${QTD_9_PARCELAS_VISA}              Get Value From Json         ${response.json()}          $.data.formas_pagamento[2].opcoes[8].parcelas
    ${VISA_VALOR_9_PARCELAS}            Get Value From Json         ${response.json()}          $.data.formas_pagamento[2].opcoes[8].valor_parcela
    ${PARCELAS_VISA_9}                  Convert To Integer          9
    ${VALOR10}                          Convert To Number           14.12

    # 10 Parcelas
    ${QTD_10_PARCELAS_VISA}              Get Value From Json         ${response.json()}          $.data.formas_pagamento[2].opcoes[9].parcelas
    ${VISA_VALOR_10_PARCELAS}            Get Value From Json         ${response.json()}          $.data.formas_pagamento[2].opcoes[9].valor_parcela
    ${PARCELAS_VISA_10}                  Convert To Integer          10
    ${VALOR11}                           Convert To Number           12.71


    #01
    Should Contain      ${VISA_VALOR_1_PARCELAS}    ${VALOR1}
    Should Contain      ${TOTAL}                    ${VALOR2}
    Should Contain      ${QTD_1_PARCELAS_VISA}      ${PARCELAS_VISA_1}

    #02
    Should Contain      ${VISA_VALOR_2_PARCELAS}    ${VALOR3}
    Should Contain      ${QTD_2_PARCELAS_VISA}      ${PARCELAS_VISA_2}

    #03
    Should Contain      ${VISA_VALOR_3_PARCELAS}    ${VALOR4}
    Should Contain      ${QTD_3_PARCELAS_VISA}      ${PARCELAS_VISA_3}

    #04
    Should Contain      ${VISA_VALOR_4_PARCELAS}    ${VALOR5}
    Should Contain      ${QTD_4_PARCELAS_VISA}      ${PARCELAS_VISA_4}

    #05
    Should Contain      ${VISA_VALOR_5_PARCELAS}    ${VALOR6}
    Should Contain      ${QTD_5_PARCELAS_VISA}      ${PARCELAS_VISA_5}

    #06
    Should Contain      ${VISA_VALOR_6_PARCELAS}    ${VALOR7}
    Should Contain      ${QTD_6_PARCELAS_VISA}      ${PARCELAS_VISA_6}

    #07
    Should Contain      ${VISA_VALOR_7_PARCELAS}    ${VALOR8}
    Should Contain      ${QTD_7_PARCELAS_VISA}      ${PARCELAS_VISA_7}

    #08
    Should Contain      ${VISA_VALOR_8_PARCELAS}    ${VALOR9}
    Should Contain      ${QTD_8_PARCELAS_VISA}      ${PARCELAS_VISA_8}

    #09
    Should Contain      ${VISA_VALOR_9_PARCELAS}    ${VALOR10}
    Should Contain      ${QTD_9_PARCELAS_VISA}      ${PARCELAS_VISA_9}

    #10
    Should Contain      ${VISA_VALOR_10_PARCELAS}    ${VALOR11}
    Should Contain      ${QTD_10_PARCELAS_VISA}      ${PARCELAS_VISA_10}

    Should Contain      ${JSON_STATUS}                  Cálculo dos itens realizado com sucesso.
    Should Contain      ${PARCELAS_VISA}                Visa Crédito
    Should Contain      ${PARCELAS_MASTER}              Mastercard Crédito
    Should Contain      ${PARCELAS_ELO}                 Elo Crédito
    Should Contain      ${PARCELAS_HIPERCARD}           Hipercard Crédito

    ${CONVERT} =        Convert To String           ${response.status_code}
    Should Contain    ${CONVERT}        200
    Log To Console    ${response.status_code}
    Log To Console    ${response.content}

ENTÃO verifico se o frete 00000-000 é inválido - VW
    &{json_frete}           Vw Frete Invalido
    ${response}         POST        ${HOST_FRETE_VW}          json=${json_frete}        expected_status=400
    ${CONVERT} =        Convert To String    ${response.status_code}
    ${JSON_STATUS}      Get Value From Json         ${response.json()}         $.data
    Should Contain      ${JSON_STATUS}[0]              CEP_INVALIDO
    Log To Console    ${response.status_code}
    Log To Console    ${response.content}

ENTÃO verifico se o frete 12345-678 é inválido - VW
    &{json_frete}           Vw Frete Invalido 1
    ${response}         POST        ${HOST_FRETE_VW}          json=${json_frete}        expected_status=400
    ${CONVERT} =        Convert To String    ${response.status_code}
    ${JSON_STATUS}      Get Value From Json         ${response.json()}         $.data
    Should Contain      ${JSON_STATUS}[0]              CEP_INVALIDO
    Log To Console    ${response.status_code}
    Log To Console    ${response.content}

ENTÃO verifico se o frete 22222-222 é inválido - VW
    &{json_frete}           Vw Frete Invalido 2
    ${response}         POST        ${HOST_FRETE_VW}          json=${json_frete}        expected_status=400
    ${CONVERT} =        Convert To String    ${response.status_code}
    ${JSON_STATUS}      Get Value From Json         ${response.json()}         $.data
    Should Contain      ${JSON_STATUS}[0]              CEP_INVALIDO
    Log To Console    ${response.status_code}
    Log To Console    ${response.content}

ENTÃO verifico se o frete 88888-888 é inválido - VW
    &{json_frete}           Vw Frete Invalido 3
    ${response}         POST        ${HOST_FRETE_VW}          json=${json_frete}        expected_status=400
    ${CONVERT} =        Convert To String    ${response.status_code}
    ${JSON_STATUS}      Get Value From Json         ${response.json()}         $.data
    Should Contain      ${JSON_STATUS}[0]              CEP_INVALIDO
    Log To Console    ${response.status_code}
    Log To Console    ${response.content}

ENTÃO verifico se o frete é inválido com símbolos - VW
    &{json_frete}           Vw Frete Com Simbolos
    ${response}         POST        ${HOST_FRETE_VW}          json=${json_frete}        expected_status=400
    ${CONVERT} =        Convert To String    ${response.status_code}
    ${JSON_STATUS}      Get Value From Json         ${response.json()}         $.data
    Should Contain      ${JSON_STATUS}[0]              CEP_INVALIDO
    Log To Console    ${response.status_code}
    Log To Console    ${response.content}

ENTÃO verifico se o frete é inválido quando é incompleto - VW
    &{json_frete}           Vw Frete Curto
    ${response}         POST        ${HOST_FRETE_VW}          json=${json_frete}        expected_status=400
    ${CONVERT} =        Convert To String    ${response.status_code}
    ${JSON_STATUS}      Get Value From Json         ${response.json()}         $.data
    Should Contain      ${JSON_STATUS}[0]              CEP_INVALIDO
    Log To Console    ${response.status_code}
    Log To Console    ${response.content}

ENTÃO verifico se o cep do estado do São Paulo é válido - VW
    &{CEP_JSON}           Vw Cep Sao Paulo
    ${response}         POST        ${HOST_FRETE_VW}          json=${CEP_JSON}
    
    ${CEP_ORIGEM}               Get Value From Json         ${response.json()}         $.data[0].cep_origem
    ${CEP_DESTINO}              Get Value From Json         ${response.json()}         $.data[0].cep_destino
    ${COTACAO_FRETE}            Get Value From Json         ${response.json()}         $.message
    ${PRODUTO_ID}               Get Value From Json         ${response.json()}         $.data[0].produtos[0].codigosoriginais[0]
    
    #retirar na loja
    ${FRETE_RETIRAR_LOJA}       Get Value From Json         ${response.json()}         $.data[0].frete[0].empresa
    ${CUSTO_RETIRAR_LOJA}       Get Value From Json         ${response.json()}         $.data[0].frete[0].entrega_custo_final

    #jadlong
    ${FRETE_JADLOG_STAND}       Get Value From Json         ${response.json()}         $.data[0].frete[1].empresa
    ${VALOR_FRETE_STAND}        Get Value From Json         ${response.json()}         $.data[0].frete[1].entrega_custo_final

    ${FRETE_JADLOG_EXPRESS}       Get Value From Json         ${response.json()}         $.data[0].frete[2].entrega_metodo_tipo
    ${VALOR_FRETE_EXPRESS}        Get Value From Json         ${response.json()}         $.data[0].frete[2].entrega_custo_final

    ${JADLOG_STAND}             Convert To Number           22.82
    ${JADLOG_EXPRESS}           Convert To Number           15.0

    ${VALOR_ZERO}       Set Variable                0
    ${ZERO} =           Convert To Integer          ${VALOR_ZERO}
    
    Should Contain      ${COTACAO_FRETE}                Cotação de frete realizado.
    Should Contain      ${CEP_ORIGEM}                   01524-001
    Should Contain      ${CEP_DESTINO}                  01153000
    Should Contain      ${PRODUTO_ID}                   GJZW012R2
    Should Contain      ${FRETE_RETIRAR_LOJA}           Retirada Na Loja
    Should Contain      ${CUSTO_RETIRAR_LOJA}           ${ZERO}
    Should Contain      ${VALOR_FRETE_STAND}            ${JADLOG_STAND}
    Should Contain      ${VALOR_FRETE_EXPRESS}          ${JADLOG_EXPRESS}

ENTÃO verifico se o cep do estado de Alagoas é válido - VW
    &{CEP_JSON}           Vw Cep Alagoas
    ${response}         POST        ${HOST_FRETE_VW}          json=${CEP_JSON}
    
    ${CEP_ORIGEM}               Get Value From Json         ${response.json()}         $.data[0].cep_origem
    ${CEP_DESTINO}              Get Value From Json         ${response.json()}         $.data[0].cep_destino
    ${COTACAO_FRETE}            Get Value From Json         ${response.json()}         $.message
    ${PRODUTO_ID}               Get Value From Json         ${response.json()}         $.data[0].produtos[0].codigosoriginais[0]
    
    #retirar na loja
    ${FRETE_RETIRAR_LOJA}       Get Value From Json         ${response.json()}         $.data[0].frete[0].empresa
    ${CUSTO_RETIRAR_LOJA}       Get Value From Json         ${response.json()}         $.data[0].frete[0].entrega_custo_final

    #jadlong
    ${FRETE_JADLOG_STAND}       Get Value From Json         ${response.json()}         $.data[0].frete[1].empresa
    ${VALOR_FRETE_STAND}        Get Value From Json         ${response.json()}         $.data[0].frete[1].entrega_custo_final

    ${FRETE_JADLOG_EXPRESS}       Get Value From Json         ${response.json()}         $.data[0].frete[2].entrega_metodo_tipo
    ${VALOR_FRETE_EXPRESS}        Get Value From Json         ${response.json()}         $.data[0].frete[2].entrega_custo_final

    ${JADLOG_STAND}             Convert To Number           43.45
    ${JADLOG_EXPRESS}           Convert To Number           85.52


    ${VALOR_ZERO}       Set Variable                0
    ${ZERO} =           Convert To Integer          ${VALOR_ZERO}
    
    Should Contain      ${COTACAO_FRETE}                Cotação de frete realizado.
    Should Contain      ${CEP_ORIGEM}                   01524-001
    Should Contain      ${CEP_DESTINO}                  57010002
    Should Contain      ${PRODUTO_ID}                   GJZW012R2
    Should Contain      ${FRETE_RETIRAR_LOJA}           Retirada Na Loja
    Should Contain      ${CUSTO_RETIRAR_LOJA}           ${ZERO}
    Should Contain      ${VALOR_FRETE_STAND}            ${JADLOG_STAND}
    Should Contain      ${VALOR_FRETE_EXPRESS}          ${JADLOG_EXPRESS}


ENTÃO verifico se o cep do estado do Amapá é válido - VW
    &{CEP_JSON}           Vw Cep Amapa
    ${response}         POST        ${HOST_FRETE_VW}          json=${CEP_JSON}
    
    ${CEP_ORIGEM}               Get Value From Json         ${response.json()}         $.data[0].cep_origem
    ${CEP_DESTINO}              Get Value From Json         ${response.json()}         $.data[0].cep_destino
    ${COTACAO_FRETE}            Get Value From Json         ${response.json()}         $.message
    ${PRODUTO_ID}               Get Value From Json         ${response.json()}         $.data[0].produtos[0].codigosoriginais[0]
    
    #retirar na loja
    ${FRETE_RETIRAR_LOJA}       Get Value From Json         ${response.json()}         $.data[0].frete[0].empresa
    ${CUSTO_RETIRAR_LOJA}       Get Value From Json         ${response.json()}         $.data[0].frete[0].entrega_custo_final

    #jadlong
    ${FRETE_JADLOG_STAND}       Get Value From Json         ${response.json()}         $.data[0].frete[1].empresa
    ${VALOR_FRETE_STAND}        Get Value From Json         ${response.json()}         $.data[0].frete[1].entrega_custo_final

    ${FRETE_JADLOG_EXPRESS}       Get Value From Json         ${response.json()}         $.data[0].frete[2].entrega_metodo_tipo
    ${VALOR_FRETE_EXPRESS}        Get Value From Json         ${response.json()}         $.data[0].frete[2].entrega_custo_final

    ${JADLOG_STAND}             Convert To Number           82.79
    ${JADLOG_EXPRESS}           Convert To Number           110.8


    ${VALOR_ZERO}       Set Variable                0
    ${ZERO} =           Convert To Integer          ${VALOR_ZERO}
    
    Should Contain      ${COTACAO_FRETE}                Cotação de frete realizado.
    Should Contain      ${CEP_ORIGEM}                   01524-001
    Should Contain      ${CEP_DESTINO}                  68950000
    Should Contain      ${PRODUTO_ID}                   GJZW012R2
    Should Contain      ${FRETE_RETIRAR_LOJA}           Retirada Na Loja
    Should Contain      ${CUSTO_RETIRAR_LOJA}           ${ZERO}
    Should Contain      ${VALOR_FRETE_STAND}            ${JADLOG_STAND}
    Should Contain      ${VALOR_FRETE_EXPRESS}          ${JADLOG_EXPRESS}

ENTÃO verifico se o cep do estado da Bahia é válido - VW
    &{CEP_JSON}           Vw Cep Bahia
    ${response}         POST        ${HOST_FRETE_VW}          json=${CEP_JSON}
    
    ${CEP_ORIGEM}               Get Value From Json         ${response.json()}         $.data[0].cep_origem
    ${CEP_DESTINO}              Get Value From Json         ${response.json()}         $.data[0].cep_destino
    ${COTACAO_FRETE}            Get Value From Json         ${response.json()}         $.message
    ${PRODUTO_ID}               Get Value From Json         ${response.json()}         $.data[0].produtos[0].codigosoriginais[0]
    
    #retirar na loja
    ${FRETE_RETIRAR_LOJA}       Get Value From Json         ${response.json()}         $.data[0].frete[0].empresa
    ${CUSTO_RETIRAR_LOJA}       Get Value From Json         ${response.json()}         $.data[0].frete[0].entrega_custo_final

    #jadlong
    ${FRETE_JADLOG_STAND}       Get Value From Json         ${response.json()}         $.data[0].frete[1].empresa
    ${VALOR_FRETE_STAND}        Get Value From Json         ${response.json()}         $.data[0].frete[1].entrega_custo_final

    ${FRETE_JADLOG_EXPRESS}       Get Value From Json         ${response.json()}         $.data[0].frete[2].entrega_metodo_tipo
    ${VALOR_FRETE_EXPRESS}        Get Value From Json         ${response.json()}         $.data[0].frete[2].entrega_custo_final

    ${JADLOG_STAND}             Convert To Number           34.51
    ${JADLOG_EXPRESS}           Convert To Number           59.76


    ${VALOR_ZERO}       Set Variable                0
    ${ZERO} =           Convert To Integer          ${VALOR_ZERO}
    
    Should Contain      ${COTACAO_FRETE}                Cotação de frete realizado.
    Should Contain      ${CEP_ORIGEM}                   01524-001
    Should Contain      ${CEP_DESTINO}                  40020025
    Should Contain      ${PRODUTO_ID}                   GJZW012R2
    Should Contain      ${FRETE_RETIRAR_LOJA}           Retirada Na Loja
    Should Contain      ${CUSTO_RETIRAR_LOJA}           ${ZERO}
    Should Contain      ${VALOR_FRETE_STAND}            ${JADLOG_STAND}
    Should Contain      ${VALOR_FRETE_EXPRESS}          ${JADLOG_EXPRESS}

ENTÃO verifico se o cep do estado do Ceará é válido - VW
    &{CEP_JSON}           Vw Cep Ceara
    ${response}         POST        ${HOST_FRETE_VW}          json=${CEP_JSON}
    
    ${CEP_ORIGEM}               Get Value From Json         ${response.json()}         $.data[0].cep_origem
    ${CEP_DESTINO}              Get Value From Json         ${response.json()}         $.data[0].cep_destino
    ${COTACAO_FRETE}            Get Value From Json         ${response.json()}         $.message
    ${PRODUTO_ID}               Get Value From Json         ${response.json()}         $.data[0].produtos[0].codigosoriginais[0]
    
    #retirar na loja
    ${FRETE_RETIRAR_LOJA}       Get Value From Json         ${response.json()}         $.data[0].frete[0].empresa
    ${CUSTO_RETIRAR_LOJA}       Get Value From Json         ${response.json()}         $.data[0].frete[0].entrega_custo_final

    #jadlong
    ${FRETE_JADLOG_STAND}       Get Value From Json         ${response.json()}         $.data[0].frete[1].empresa
    ${VALOR_FRETE_STAND}        Get Value From Json         ${response.json()}         $.data[0].frete[1].entrega_custo_final

    ${FRETE_JADLOG_EXPRESS}       Get Value From Json         ${response.json()}         $.data[0].frete[2].entrega_metodo_tipo
    ${VALOR_FRETE_EXPRESS}        Get Value From Json         ${response.json()}         $.data[0].frete[2].entrega_custo_final

    ${JADLOG_STAND}             Convert To Number           37.57
    ${JADLOG_EXPRESS}           Convert To Number           74.49


    ${VALOR_ZERO}       Set Variable                0
    ${ZERO} =           Convert To Integer          ${VALOR_ZERO}
    
    Should Contain      ${COTACAO_FRETE}                Cotação de frete realizado.
    Should Contain      ${CEP_ORIGEM}                   01524-001
    Should Contain      ${CEP_DESTINO}                  60010030
    Should Contain      ${PRODUTO_ID}                   GJZW012R2
    Should Contain      ${FRETE_RETIRAR_LOJA}           Retirada Na Loja
    Should Contain      ${CUSTO_RETIRAR_LOJA}           ${ZERO}
    Should Contain      ${VALOR_FRETE_STAND}            ${JADLOG_STAND}
    Should Contain      ${VALOR_FRETE_EXPRESS}          ${JADLOG_EXPRESS}

ENTÃO devo analisar o calculo do frete - VW
    &{json_frete}           Vw Calculo Frete
    ${response}         POST        ${HOST_VW_CALCULO_FRET}          json=${json_frete}
    ${JSON_STATUS}      Get Value From Json         ${response.json()}         $.message
    Should Contain      ${JSON_STATUS}              SUCESSO: Na realização dos cálculos dos produtos.
    ${CONVERT} =        Convert To String           ${response.status_code}
    Should Contain    ${CONVERT}        200
    Log To Console    ${response.status_code}
    Log To Console    ${response.content}

ENTÃO faça um pedido válido de Aditivo de Radiador - VW
    &{json_pedido}           Vw Pedido Valido 1
    ${AUTHORIZATION_TOKEN}          Metodo Token Vw
    ${TOKEN}=    Catenate    SEPARATOR=${EMPTY}    @{AUTHORIZATION_TOKEN}
    &{auth}             Create Dictionary           authorization=${TOKEN}
    ${response}         POST           ${HOST_VW_PEDIDO}          json=${json_pedido}         headers=${auth}
    ${RESPOSTA}         Get Value From Json         ${response.json()}         $.message
    Should Contain      ${RESPOSTA}[0]           Pedido realizado com sucesso!

ENTÃO verifico o frete do produto Filtro de Ar de Motor - VW
    &{json_frete}           VW Verifica Frete 1
    ${response}                 POST        ${HOST_FRETE_VW}          json=${json_frete}
    ${CONVERT} =                Convert To String    ${response.status_code}

    #mensagem de cotação realizada
    ${JSON_STATUS}              Get Value From Json         ${response.json()}         $.message

    #descrição do cep de origem, cep de destino e id do produto
    ${CEP_ORIGEM}               Get Value From Json         ${response.json()}         $.data[0].cep_origem
    ${CEP_DESTINO}              Get Value From Json         ${response.json()}         $.data[0].cep_destino
    ${PRODUTO_1_ID}             Get Value From Json         ${response.json()}         $.data[0].produtos[0].pn_produto
    
    #retirar na loja
    ${FRETE_RETIRAR_LOJA}       Get Value From Json         ${response.json()}         $.data[0].frete[0].empresa          
    ${CUSTO_RETIRAR_LOJA}       Get Value From Json         ${response.json()}         $.data[0].frete[0].entrega_custo_final
    
    #método de entrega dos correios
    ${CORREIOS_EMPRESA}               Get Value From Json         ${response.json()}         $.data[0].frete[1].empresa
    ${FRETE_CORREIOS_EXPRESS}         Get Value From Json         ${response.json()}         $.data[0].frete[1].entrega_metodo_tipo
    ${CUSTO_CORREIOS_EXPRESS}         Get Value From Json         ${response.json()}         $.data[0].frete[1].entrega_custo_final

    #retirar na loja
    Should Contain      ${JSON_STATUS}              Cotação de frete realizado.
    Should Contain      ${CEP_ORIGEM}               13075-520
    Should Contain      ${CEP_DESTINO}              07950250
    Should Contain      ${PRODUTO_1_ID}             JZZ129620C
    Should Contain      ${FRETE_RETIRAR_LOJA}       Retirada Na Loja
    ${VALOR_ZERO}       Set Variable                0
    ${ZERO} =           Convert To Integer          ${VALOR_ZERO}
    Should Contain      ${CUSTO_RETIRAR_LOJA}       ${ZERO}

    #Correios
    Should Contain      ${CORREIOS_EMPRESA}         Correios       
    ${VALOR_FRETE_EXPRESS}      Convert To Number           17.08

    #Express
    Should Contain      ${FRETE_CORREIOS_EXPRESS}         EXPRESS
    Should Contain      ${CUSTO_CORREIOS_EXPRESS}         ${VALOR_FRETE_EXPRESS}

    # método de entrega Jadlog
    ${JADLOG_EMPRESA}               Get Value From Json         ${response.json()}         $.data[0].frete[3].empresa
    
    #stand
    ${FRETE_JADLOG_STAND}               Get Value From Json         ${response.json()}         $.data[0].frete[2].entrega_metodo_tipo
    ${VALOR_FRETE_STAND_JADLOG}         Get Value From Json         ${response.json()}         $.data[0].frete[2].entrega_custo_final
    ${JADLOG_STAND}        Convert To Number           15.55


    Should Contain      ${JADLOG_EMPRESA}               Jadlog
    Should Contain      ${FRETE_JADLOG_STAND}           STANDARD
    Should Contain      ${VALOR_FRETE_STAND_JADLOG}     ${JADLOG_STAND}

    #express
    ${FRETE_JADLOG_EXPRESS}             Get Value From Json         ${response.json()}         $.data[0].frete[3].entrega_metodo_tipo
    ${CUSTO_FRETE_EXPRESS}              Get Value From Json         ${response.json()}         $.data[0].frete[3].entrega_custo_final
    ${JADLOG_EXPRESS}        Convert To Number           15.47
    
    Should Contain      ${FRETE_JADLOG_EXPRESS}               EXPRESS
    Should Contain      ${CUSTO_FRETE_EXPRESS}                ${JADLOG_EXPRESS}

    ${CONVERT} =        Convert To String           ${response.status_code}
    Should Contain    ${CONVERT}        200
    Log To Console    ${response.status_code}
    Log To Console    ${response.content}

ENTÃO verifico o frete do produto Filtro de Ar de Motor foi cálculado - VW
    &{json_frete}           Vw Calculo Frete 1
    ${response}         POST        ${HOST_VW_CALCULO_FRET}          json=${json_frete}
    ${JSON_STATUS}      Get Value From Json         ${response.json()}         $.message
    
    ${PARCELAS_MASTER}          Get Value From Json         ${response.json()}         $.data.formas_pagamento[1].nome
    ${PARCELAS_ELO}             Get Value From Json         ${response.json()}         $.data.formas_pagamento[2].nome
    ${PARCELAS_HIPERCARD}       Get Value From Json         ${response.json()}         $.data.formas_pagamento[3].nome

    #Total produto + frete
    ${TOTAL}             Get Value From Json         ${response.json()}         $.data.total

    #Parcelas visa
    ${PARCELAS_VISA}                    Get Value From Json         ${response.json()}          $.data.formas_pagamento[0].nome

    # 01 Parcela
    ${QTD_1_PARCELAS_VISA}              Get Value From Json         ${response.json()}          $.data.formas_pagamento[0].opcoes[0].parcelas
    ${VISA_VALOR_1_PARCELAS}            Get Value From Json         ${response.json()}          $.data.formas_pagamento[0].opcoes[0].valor_parcela
    ${PARCELAS_VISA_1}         Convert To Integer   1
    ${VALOR1}           Convert To Number           31.98
    ${VALOR2}           Convert To Number           31.98

    # 02 Parcelas
    ${QTD_2_PARCELAS_VISA}              Get Value From Json         ${response.json()}          $.data.formas_pagamento[0].opcoes[1].parcelas
    ${VISA_VALOR_2_PARCELAS}            Get Value From Json         ${response.json()}          $.data.formas_pagamento[0].opcoes[1].valor_parcela
    ${PARCELAS_VISA_2}          Convert To Integer          2
    ${VALOR3}                   Convert To Number           15.99

    # 03 Parcelas
    ${QTD_3_PARCELAS_VISA}              Get Value From Json         ${response.json()}          $.data.formas_pagamento[0].opcoes[2].parcelas
    ${VISA_VALOR_3_PARCELAS}            Get Value From Json         ${response.json()}          $.data.formas_pagamento[0].opcoes[2].valor_parcela
    ${PARCELAS_VISA_3}          Convert To Integer          3
    ${VALOR4}                   Convert To Number           10.66

    #01
    Should Contain      ${VISA_VALOR_1_PARCELAS}    ${VALOR1}
    Should Contain      ${TOTAL}                    ${VALOR2}
    Should Contain      ${QTD_1_PARCELAS_VISA}      ${PARCELAS_VISA_1}

    #02
    Should Contain      ${VISA_VALOR_2_PARCELAS}    ${VALOR3}
    Should Contain      ${QTD_2_PARCELAS_VISA}      ${PARCELAS_VISA_2}    

    #03
    Should Contain      ${VISA_VALOR_3_PARCELAS}    ${VALOR4}
    Should Contain      ${QTD_3_PARCELAS_VISA}      ${PARCELAS_VISA_3}    

    Should Contain      ${JSON_STATUS}                  Cálculo dos itens realizado com sucesso.
    Should Contain      ${PARCELAS_VISA}                Visa Crédito
    Should Contain      ${PARCELAS_MASTER}              Mastercard Crédito
    Should Contain      ${PARCELAS_ELO}                 Elo Crédito
    Should Contain      ${PARCELAS_HIPERCARD}           Hipercard Crédito

    ${CONVERT} =        Convert To String           ${response.status_code}
    Should Contain    ${CONVERT}        200
    Log To Console    ${response.status_code}
    Log To Console    ${response.content}

ENTÃO faça um pedido válido de Filtro de Ar de Motor com Visa - VW
    &{json_pedido}           Vw Pedido Valido Visa 1
    ${AUTHORIZATION_TOKEN}          Metodo Token Vw
    ${TOKEN}=    Catenate    SEPARATOR=${EMPTY}    @{AUTHORIZATION_TOKEN}
    &{auth}             Create Dictionary           authorization=${TOKEN}
    ${response}         POST           ${HOST_VW_PEDIDO}          json=${json_pedido}         headers=${auth}
    ${RESPOSTA}         Get Value From Json         ${response.json()}         $.message
    Should Contain      ${RESPOSTA}[0]           Pedido realizado com sucesso!

ENTÃO verifico o frete do produto Bateria VW JZZ915105B - VW
    &{json_frete}           VW Verifica Frete 2
    ${response}                 POST        ${HOST_FRETE_VW}          json=${json_frete}
    ${CONVERT} =                Convert To String    ${response.status_code}

    #mensagem de cotação realizada
    ${JSON_STATUS}              Get Value From Json         ${response.json()}         $.message

    #descrição do cep de origem, cep de destino e id do produto
    ${CEP_ORIGEM}               Get Value From Json         ${response.json()}         $.data[0].cep_origem
    ${CEP_DESTINO}              Get Value From Json         ${response.json()}         $.data[0].cep_destino
    ${PRODUTO_1_ID}             Get Value From Json         ${response.json()}         $.data[0].produtos[0].pn_produto
    
    #retirar na loja
    ${FRETE_RETIRAR_LOJA}       Get Value From Json         ${response.json()}         $.data[0].frete[0].empresa          
    ${CUSTO_RETIRAR_LOJA}       Get Value From Json         ${response.json()}         $.data[0].frete[0].entrega_custo_final
    
    #método de entrega dos correios
    ${CORREIOS_EMPRESA}               Get Value From Json         ${response.json()}         $.data[0].frete[1].empresa
    ${FRETE_CORREIOS_EXPRESS}         Get Value From Json         ${response.json()}         $.data[0].frete[1].entrega_metodo_tipo
    ${CUSTO_CORREIOS_EXPRESS}         Get Value From Json         ${response.json()}         $.data[0].frete[1].entrega_custo_final

    #retirar na loja
    Should Contain      ${JSON_STATUS}              Cotação de frete realizado.
    Should Contain      ${CEP_ORIGEM}               01524-001
    Should Contain      ${CEP_DESTINO}              07950250
    Should Contain      ${PRODUTO_1_ID}             JZZ915105B
    Should Contain      ${FRETE_RETIRAR_LOJA}       Retirada Na Loja
    ${VALOR_ZERO}       Set Variable                0
    ${ZERO} =           Convert To Integer          ${VALOR_ZERO}
    Should Contain      ${CUSTO_RETIRAR_LOJA}       ${ZERO}

    #Correios
    Should Contain      ${CORREIOS_EMPRESA}         Correios       
    ${VALOR_FRETE_EXPRESS}      Convert To Number           37.86

    #Express
    Should Contain      ${FRETE_CORREIOS_EXPRESS}         EXPRESS
    Should Contain      ${CUSTO_CORREIOS_EXPRESS}         ${VALOR_FRETE_EXPRESS}

    # método de entrega Jadlog
    ${JADLOG_EMPRESA}               Get Value From Json         ${response.json()}         $.data[0].frete[3].empresa
    
    #stand
    ${FRETE_JADLOG_STAND}               Get Value From Json         ${response.json()}         $.data[0].frete[2].entrega_metodo_tipo
    ${VALOR_FRETE_STAND_JADLOG}         Get Value From Json         ${response.json()}         $.data[0].frete[2].entrega_custo_final
    ${JADLOG_STAND}        Convert To Number           62.54


    Should Contain      ${JADLOG_EMPRESA}               Jadlog
    Should Contain      ${FRETE_JADLOG_STAND}           STANDARD
    Should Contain      ${VALOR_FRETE_STAND_JADLOG}     ${JADLOG_STAND}

    #express
    ${FRETE_JADLOG_EXPRESS}             Get Value From Json         ${response.json()}         $.data[0].frete[3].entrega_metodo_tipo
    ${CUSTO_FRETE_EXPRESS}              Get Value From Json         ${response.json()}         $.data[0].frete[3].entrega_custo_final
    ${JADLOG_EXPRESS}        Convert To Number           35.74
    
    Should Contain      ${FRETE_JADLOG_EXPRESS}               EXPRESS
    Should Contain      ${CUSTO_FRETE_EXPRESS}                ${JADLOG_EXPRESS}

    ${CONVERT} =        Convert To String           ${response.status_code}
    Should Contain    ${CONVERT}        200
    Log To Console    ${response.status_code}
    Log To Console    ${response.content}
    
ENTÃO verifico o frete do produto Bateria VW JZZ915105B foi cálculado - VW
    &{json_frete}           Vw Calculo Frete 2
    ${response}         POST        ${HOST_VW_CALCULO_FRET}          json=${json_frete}
    ${JSON_STATUS}      Get Value From Json         ${response.json()}         $.message
    
    
    ${PARCELAS_MASTER}          Get Value From Json         ${response.json()}         $.data.formas_pagamento[0].nome
    ${PARCELAS_HIPERCARD}       Get Value From Json         ${response.json()}         $.data.formas_pagamento[1].nome
    ${PARCELAS_VISA}            Get Value From Json         ${response.json()}         $.data.formas_pagamento[2].nome
    ${PARCELAS_ELO}             Get Value From Json         ${response.json()}         $.data.formas_pagamento[3].nome

    #Total produto + frete
    ${TOTAL}             Get Value From Json         ${response.json()}         $.data.total

    # 01 Parcela
    ${QTD_1_PARCELAS_VISA}              Get Value From Json         ${response.json()}          $.data.formas_pagamento[2].opcoes[0].parcelas
    ${VISA_VALOR_1_PARCELAS}            Get Value From Json         ${response.json()}          $.data.formas_pagamento[2].opcoes[0].valor_parcela
    ${PARCELAS_VISA_1}                  Convert To Integer   1
    ${VALOR1}                           Convert To Number           636.36
    ${VALOR2}                           Convert To Number           636.36

    # 02 Parcelas
    ${QTD_2_PARCELAS_VISA}              Get Value From Json         ${response.json()}          $.data.formas_pagamento[2].opcoes[1].parcelas
    ${VISA_VALOR_2_PARCELAS}            Get Value From Json         ${response.json()}          $.data.formas_pagamento[2].opcoes[1].valor_parcela
    ${PARCELAS_VISA_2}                  Convert To Integer          2
    ${VALOR3}                           Convert To Number           318.18

    # 03 Parcelas
    ${QTD_3_PARCELAS_VISA}              Get Value From Json         ${response.json()}          $.data.formas_pagamento[2].opcoes[2].parcelas
    ${VISA_VALOR_3_PARCELAS}            Get Value From Json         ${response.json()}          $.data.formas_pagamento[2].opcoes[2].valor_parcela
    ${PARCELAS_VISA_3}                  Convert To Integer          3
    ${VALOR4}                           Convert To Number           212.12

    # 04 Parcelas
    ${QTD_4_PARCELAS_VISA}              Get Value From Json         ${response.json()}          $.data.formas_pagamento[2].opcoes[3].parcelas
    ${VISA_VALOR_4_PARCELAS}            Get Value From Json         ${response.json()}          $.data.formas_pagamento[2].opcoes[3].valor_parcela
    ${PARCELAS_VISA_4}                  Convert To Integer          4
    ${VALOR5}                           Convert To Number           159.09

    # 05 Parcelas
    ${QTD_5_PARCELAS_VISA}              Get Value From Json         ${response.json()}          $.data.formas_pagamento[2].opcoes[4].parcelas
    ${VISA_VALOR_5_PARCELAS}            Get Value From Json         ${response.json()}          $.data.formas_pagamento[2].opcoes[4].valor_parcela
    ${PARCELAS_VISA_5}                  Convert To Integer          5
    ${VALOR6}                           Convert To Number           127.27

    # 06 Parcelas
    ${QTD_6_PARCELAS_VISA}              Get Value From Json         ${response.json()}          $.data.formas_pagamento[2].opcoes[5].parcelas
    ${VISA_VALOR_6_PARCELAS}            Get Value From Json         ${response.json()}          $.data.formas_pagamento[2].opcoes[5].valor_parcela
    ${PARCELAS_VISA_6}                  Convert To Integer          6
    ${VALOR7}                           Convert To Number           106.06

    # 07 Parcelas
    ${QTD_7_PARCELAS_VISA}              Get Value From Json         ${response.json()}          $.data.formas_pagamento[2].opcoes[6].parcelas
    ${VISA_VALOR_7_PARCELAS}            Get Value From Json         ${response.json()}          $.data.formas_pagamento[2].opcoes[6].valor_parcela
    ${PARCELAS_VISA_7}                  Convert To Integer          7
    ${VALOR8}                           Convert To Number           90.91

    # 08 Parcelas
    ${QTD_8_PARCELAS_VISA}              Get Value From Json         ${response.json()}          $.data.formas_pagamento[2].opcoes[7].parcelas
    ${VISA_VALOR_8_PARCELAS}            Get Value From Json         ${response.json()}          $.data.formas_pagamento[2].opcoes[7].valor_parcela
    ${PARCELAS_VISA_8}                  Convert To Integer          8
    ${VALOR9}                           Convert To Number           79.55

    # 09 Parcelas
    ${QTD_9_PARCELAS_VISA}              Get Value From Json         ${response.json()}          $.data.formas_pagamento[2].opcoes[8].parcelas
    ${VISA_VALOR_9_PARCELAS}            Get Value From Json         ${response.json()}          $.data.formas_pagamento[2].opcoes[8].valor_parcela
    ${PARCELAS_VISA_9}                  Convert To Integer          9
    ${VALOR10}                          Convert To Number           70.71

    # 10 Parcelas
    ${QTD_10_PARCELAS_VISA}              Get Value From Json        ${response.json()}          $.data.formas_pagamento[2].opcoes[9].parcelas
    ${VISA_VALOR_10_PARCELAS}            Get Value From Json        ${response.json()}          $.data.formas_pagamento[2].opcoes[9].valor_parcela
    ${PARCELAS_VISA_10}                  Convert To Integer         10
    ${VALOR11}                           Convert To Number          63.64

    #01
    Should Contain      ${VISA_VALOR_1_PARCELAS}    ${VALOR1}
    Should Contain      ${TOTAL}                    ${VALOR2}
    Should Contain      ${QTD_1_PARCELAS_VISA}      ${PARCELAS_VISA_1}

    #02
    Should Contain      ${VISA_VALOR_2_PARCELAS}    ${VALOR3}
    Should Contain      ${QTD_2_PARCELAS_VISA}      ${PARCELAS_VISA_2}

    #03
    Should Contain      ${VISA_VALOR_3_PARCELAS}    ${VALOR4}
    Should Contain      ${QTD_3_PARCELAS_VISA}      ${PARCELAS_VISA_3}

    #04
    Should Contain      ${VISA_VALOR_4_PARCELAS}    ${VALOR5}
    Should Contain      ${QTD_4_PARCELAS_VISA}      ${PARCELAS_VISA_4}

    #05
    Should Contain      ${VISA_VALOR_5_PARCELAS}    ${VALOR6}
    Should Contain      ${QTD_5_PARCELAS_VISA}      ${PARCELAS_VISA_5}

    #06
    Should Contain      ${VISA_VALOR_6_PARCELAS}    ${VALOR7}
    Should Contain      ${QTD_6_PARCELAS_VISA}      ${PARCELAS_VISA_6}

    #07
    Should Contain      ${VISA_VALOR_7_PARCELAS}    ${VALOR8}
    Should Contain      ${QTD_7_PARCELAS_VISA}      ${PARCELAS_VISA_7}

    #08
    Should Contain      ${VISA_VALOR_8_PARCELAS}    ${VALOR9}
    Should Contain      ${QTD_8_PARCELAS_VISA}      ${PARCELAS_VISA_8}

    #09
    Should Contain      ${VISA_VALOR_9_PARCELAS}    ${VALOR10}
    Should Contain      ${QTD_9_PARCELAS_VISA}      ${PARCELAS_VISA_9}

    #10
    Should Contain      ${VISA_VALOR_10_PARCELAS}    ${VALOR11}
    Should Contain      ${QTD_10_PARCELAS_VISA}      ${PARCELAS_VISA_10}

    Should Contain      ${JSON_STATUS}                  Cálculo dos itens realizado com sucesso.
    Should Contain      ${PARCELAS_VISA}                Visa Crédito
    Should Contain      ${PARCELAS_MASTER}              Mastercard Crédito
    Should Contain      ${PARCELAS_ELO}                 Elo Crédito
    Should Contain      ${PARCELAS_HIPERCARD}           Hipercard Crédito

    ${CONVERT} =        Convert To String           ${response.status_code}
    Should Contain    ${CONVERT}        200
    Log To Console    ${response.status_code}
    Log To Console    ${response.content}

ENTÃO faça um pedido válido de Bateria VW JZZ915105B com Mastercard - VW
    &{json_pedido}           Vw Pedido Valido Master Card 1
    ${AUTHORIZATION_TOKEN}          Metodo Token Vw
    ${TOKEN}=    Catenate    SEPARATOR=${EMPTY}    @{AUTHORIZATION_TOKEN}
    &{auth}             Create Dictionary           authorization=${TOKEN}
    ${response}         POST           ${HOST_VW_PEDIDO}          json=${json_pedido}         headers=${auth}
    ${RESPOSTA}         Get Value From Json         ${response.json()}         $.message
    Should Contain      ${RESPOSTA}[0]           Pedido realizado com sucesso!

ENTÃO verifico o frete do produto Pastilha de Freio VW JZZ698451AB - VW
    &{json_frete}           VW Verifica Frete 3
    ${response}                 POST        ${HOST_FRETE_VW}          json=${json_frete}
    ${CONVERT} =                Convert To String    ${response.status_code}

    #mensagem de cotação realizada
    ${JSON_STATUS}              Get Value From Json         ${response.json()}         $.message

    #descrição do cep de origem, cep de destino e id do produto
    ${CEP_ORIGEM}               Get Value From Json         ${response.json()}         $.data[0].cep_origem
    ${CEP_DESTINO}              Get Value From Json         ${response.json()}         $.data[0].cep_destino
    ${PRODUTO_1_ID}             Get Value From Json         ${response.json()}         $.data[0].produtos[0].pn_produto
    
    #retirar na loja
    ${FRETE_RETIRAR_LOJA}       Get Value From Json         ${response.json()}         $.data[0].frete[0].empresa          
    ${CUSTO_RETIRAR_LOJA}       Get Value From Json         ${response.json()}         $.data[0].frete[0].entrega_custo_final
    
    #método de entrega dos correios
    ${CORREIOS_EMPRESA}               Get Value From Json         ${response.json()}         $.data[0].frete[1].empresa
    
    ${FRETE_CORREIOS_EXPRESS}         Get Value From Json         ${response.json()}         $.data[0].frete[1].entrega_metodo_tipo
    ${CUSTO_CORREIOS_EXPRESS}         Get Value From Json         ${response.json()}         $.data[0].frete[1].entrega_custo_final

    #retirar na loja
    Should Contain      ${JSON_STATUS}              Cotação de frete realizado.
    Should Contain      ${CEP_ORIGEM}               01524-001
    Should Contain      ${CEP_DESTINO}              07950250
    Should Contain      ${PRODUTO_1_ID}             JZZ698451AB
    Should Contain      ${FRETE_RETIRAR_LOJA}       Retirada Na Loja
    ${VALOR_ZERO}       Set Variable                0
    ${ZERO} =           Convert To Integer          ${VALOR_ZERO}
    Should Contain      ${CUSTO_RETIRAR_LOJA}       ${ZERO}

    #Correios
    Should Contain      ${CORREIOS_EMPRESA}         Correios       
    ${VALOR_FRETE_EXPRESS}      Convert To Number           21.67

    #Express
    Should Contain      ${FRETE_CORREIOS_EXPRESS}         EXPRESS
    Should Contain      ${CUSTO_CORREIOS_EXPRESS}         ${VALOR_FRETE_EXPRESS}

    # método de entrega Jadlog
    ${JADLOG_EMPRESA}               Get Value From Json         ${response.json()}         $.data[0].frete[3].empresa
    
    #stand
    ${FRETE_JADLOG_STAND}               Get Value From Json         ${response.json()}         $.data[0].frete[2].entrega_metodo_tipo
    ${VALOR_FRETE_STAND_JADLOG}         Get Value From Json         ${response.json()}         $.data[0].frete[2].entrega_custo_final
    ${JADLOG_STAND}        Convert To Number           18.59

    Should Contain      ${JADLOG_EMPRESA}               Jadlog
    Should Contain      ${FRETE_JADLOG_STAND}           STANDARD
    Should Contain      ${VALOR_FRETE_STAND_JADLOG}     ${JADLOG_STAND}

    #express
    ${FRETE_JADLOG_EXPRESS}             Get Value From Json         ${response.json()}         $.data[0].frete[3].entrega_metodo_tipo
    ${CUSTO_FRETE_EXPRESS}              Get Value From Json         ${response.json()}         $.data[0].frete[3].entrega_custo_final
    ${JADLOG_EXPRESS}        Convert To Number           18.59
    
    Should Contain      ${FRETE_JADLOG_EXPRESS}               EXPRESS
    Should Contain      ${CUSTO_FRETE_EXPRESS}                ${JADLOG_EXPRESS}

    ${CONVERT} =        Convert To String           ${response.status_code}
    Should Contain    ${CONVERT}        200
    Log To Console    ${response.status_code}
    Log To Console    ${response.content}

ENTÃO verifico o frete do produto Pastilha de Freio VW JZZ698451AB foi cálculado - VW
    &{json_frete}           Vw Calculo Frete 3
    ${response}         POST        ${HOST_VW_CALCULO_FRET}          json=${json_frete}
    ${JSON_STATUS}      Get Value From Json         ${response.json()}         $.message
    
    ${PARCELAS_MASTER}          Get Value From Json         ${response.json()}         $.data.formas_pagamento[0].nome
    ${PARCELAS_HIPERCARD}       Get Value From Json         ${response.json()}         $.data.formas_pagamento[1].nome
    ${PARCELAS_VISA}            Get Value From Json         ${response.json()}         $.data.formas_pagamento[2].nome
    ${PARCELAS_ELO}             Get Value From Json         ${response.json()}         $.data.formas_pagamento[3].nome

    #Total produto + frete
    ${TOTAL}             Get Value From Json         ${response.json()}         $.data.total

    # 01 Parcela
    ${QTD_1_PARCELAS_VISA}              Get Value From Json         ${response.json()}          $.data.formas_pagamento[2].opcoes[0].parcelas
    ${VISA_VALOR_1_PARCELAS}            Get Value From Json         ${response.json()}          $.data.formas_pagamento[2].opcoes[0].valor_parcela
    ${PARCELAS_VISA_1}                  Convert To Integer   1
    ${VALOR1}                           Convert To Number           264.46
    ${VALOR2}                           Convert To Number           264.46

    # 02 Parcelas
    ${QTD_2_PARCELAS_VISA}              Get Value From Json         ${response.json()}          $.data.formas_pagamento[2].opcoes[1].parcelas
    ${VISA_VALOR_2_PARCELAS}            Get Value From Json         ${response.json()}          $.data.formas_pagamento[2].opcoes[1].valor_parcela
    ${PARCELAS_VISA_2}                  Convert To Integer          2
    ${VALOR3}                           Convert To Number           132.23

    # 03 Parcelas
    ${QTD_3_PARCELAS_VISA}              Get Value From Json         ${response.json()}          $.data.formas_pagamento[2].opcoes[2].parcelas
    ${VISA_VALOR_3_PARCELAS}            Get Value From Json         ${response.json()}          $.data.formas_pagamento[2].opcoes[2].valor_parcela
    ${PARCELAS_VISA_3}                  Convert To Integer          3
    ${VALOR4}                           Convert To Number           88.15

    # 04 Parcelas
    ${QTD_4_PARCELAS_VISA}              Get Value From Json         ${response.json()}          $.data.formas_pagamento[2].opcoes[3].parcelas
    ${VISA_VALOR_4_PARCELAS}            Get Value From Json         ${response.json()}          $.data.formas_pagamento[2].opcoes[3].valor_parcela
    ${PARCELAS_VISA_4}                  Convert To Integer          4
    ${VALOR5}                           Convert To Number           66.11

    # 05 Parcelas
    ${QTD_5_PARCELAS_VISA}              Get Value From Json         ${response.json()}          $.data.formas_pagamento[2].opcoes[4].parcelas
    ${VISA_VALOR_5_PARCELAS}            Get Value From Json         ${response.json()}          $.data.formas_pagamento[2].opcoes[4].valor_parcela
    ${PARCELAS_VISA_5}                  Convert To Integer          5
    ${VALOR6}                           Convert To Number           52.89

    # 06 Parcelas
    ${QTD_6_PARCELAS_VISA}              Get Value From Json         ${response.json()}          $.data.formas_pagamento[2].opcoes[5].parcelas
    ${VISA_VALOR_6_PARCELAS}            Get Value From Json         ${response.json()}          $.data.formas_pagamento[2].opcoes[5].valor_parcela
    ${PARCELAS_VISA_6}                  Convert To Integer          6
    ${VALOR7}                           Convert To Number           44.08

    # 07 Parcelas
    ${QTD_7_PARCELAS_VISA}              Get Value From Json         ${response.json()}          $.data.formas_pagamento[2].opcoes[6].parcelas
    ${VISA_VALOR_7_PARCELAS}            Get Value From Json         ${response.json()}          $.data.formas_pagamento[2].opcoes[6].valor_parcela
    ${PARCELAS_VISA_7}                  Convert To Integer          7
    ${VALOR8}                           Convert To Number           37.78

    # 08 Parcelas
    ${QTD_8_PARCELAS_VISA}              Get Value From Json         ${response.json()}          $.data.formas_pagamento[2].opcoes[7].parcelas
    ${VISA_VALOR_8_PARCELAS}            Get Value From Json         ${response.json()}          $.data.formas_pagamento[2].opcoes[7].valor_parcela
    ${PARCELAS_VISA_8}                  Convert To Integer          8
    ${VALOR9}                           Convert To Number           33.06

    # 09 Parcelas
    ${QTD_9_PARCELAS_VISA}              Get Value From Json         ${response.json()}          $.data.formas_pagamento[2].opcoes[8].parcelas
    ${VISA_VALOR_9_PARCELAS}            Get Value From Json         ${response.json()}          $.data.formas_pagamento[2].opcoes[8].valor_parcela
    ${PARCELAS_VISA_9}                  Convert To Integer          9
    ${VALOR10}                          Convert To Number           29.38

    # 10 Parcelas
    ${QTD_10_PARCELAS_VISA}              Get Value From Json         ${response.json()}          $.data.formas_pagamento[2].opcoes[9].parcelas
    ${VISA_VALOR_10_PARCELAS}            Get Value From Json         ${response.json()}          $.data.formas_pagamento[2].opcoes[9].valor_parcela
    ${PARCELAS_VISA_10}                  Convert To Integer          10
    ${VALOR11}                           Convert To Number           26.45

    #01
    Should Contain      ${VISA_VALOR_1_PARCELAS}    ${VALOR1}
    Should Contain      ${TOTAL}                    ${VALOR2}
    Should Contain      ${QTD_1_PARCELAS_VISA}      ${PARCELAS_VISA_1}

    #02
    Should Contain      ${VISA_VALOR_2_PARCELAS}    ${VALOR3}
    Should Contain      ${QTD_2_PARCELAS_VISA}      ${PARCELAS_VISA_2}

    #03
    Should Contain      ${VISA_VALOR_3_PARCELAS}    ${VALOR4}
    Should Contain      ${QTD_3_PARCELAS_VISA}      ${PARCELAS_VISA_3}

    #04
    Should Contain      ${VISA_VALOR_4_PARCELAS}    ${VALOR5}
    Should Contain      ${QTD_4_PARCELAS_VISA}      ${PARCELAS_VISA_4}

    #05
    Should Contain      ${VISA_VALOR_5_PARCELAS}    ${VALOR6}
    Should Contain      ${QTD_5_PARCELAS_VISA}      ${PARCELAS_VISA_5}

    #06
    Should Contain      ${VISA_VALOR_6_PARCELAS}    ${VALOR7}
    Should Contain      ${QTD_6_PARCELAS_VISA}      ${PARCELAS_VISA_6}

    #07
    Should Contain      ${VISA_VALOR_7_PARCELAS}    ${VALOR8}
    Should Contain      ${QTD_7_PARCELAS_VISA}      ${PARCELAS_VISA_7}

    #08
    Should Contain      ${VISA_VALOR_8_PARCELAS}    ${VALOR9}
    Should Contain      ${QTD_8_PARCELAS_VISA}      ${PARCELAS_VISA_8}

    #09
    Should Contain      ${VISA_VALOR_9_PARCELAS}    ${VALOR10}
    Should Contain      ${QTD_9_PARCELAS_VISA}      ${PARCELAS_VISA_9}

    #10
    Should Contain      ${VISA_VALOR_10_PARCELAS}    ${VALOR11}
    Should Contain      ${QTD_10_PARCELAS_VISA}      ${PARCELAS_VISA_10}

    Should Contain      ${JSON_STATUS}                  Cálculo dos itens realizado com sucesso.
    Should Contain      ${PARCELAS_VISA}                Visa Crédito
    Should Contain      ${PARCELAS_MASTER}              Mastercard Crédito
    Should Contain      ${PARCELAS_ELO}                 Elo Crédito
    Should Contain      ${PARCELAS_HIPERCARD}           Hipercard Crédito

    ${CONVERT} =        Convert To String           ${response.status_code}
    Should Contain    ${CONVERT}        200
    Log To Console    ${response.status_code}
    Log To Console    ${response.content}

ENTÃO verifico o frete do produto Disco de Freio - VW
    &{json_frete}           VW Verifica Frete 4
    ${response}                 POST        ${HOST_FRETE_VW}          json=${json_frete}
    ${CONVERT} =                Convert To String    ${response.status_code}

    #mensagem de cotação realizada
    ${JSON_STATUS}              Get Value From Json         ${response.json()}         $.message

    #descrição do cep de origem, cep de destino e id do produto
    ${CEP_ORIGEM}               Get Value From Json         ${response.json()}         $.data[0].cep_origem
    ${CEP_DESTINO}              Get Value From Json         ${response.json()}         $.data[0].cep_destino
    ${PRODUTO_1_ID}             Get Value From Json         ${response.json()}         $.data[0].produtos[0].pn_produto
    
    #retirar na loja
    ${FRETE_RETIRAR_LOJA}       Get Value From Json         ${response.json()}         $.data[0].frete[0].empresa          
    ${CUSTO_RETIRAR_LOJA}       Get Value From Json         ${response.json()}         $.data[0].frete[0].entrega_custo_final
    
    #método de entrega dos correios
    ${CORREIOS_EMPRESA}               Get Value From Json         ${response.json()}         $.data[0].frete[1].empresa
    # ${FRETE_CORREIOS_STAND}           Get Value From Json         ${response.json()}         $.data[0].frete[1].entrega_metodo_tipo
    # ${CUSTO_CORREIOS_STAND}           Get Value From Json         ${response.json()}         $.data[0].frete[1].entrega_custo_final
    ${FRETE_CORREIOS_EXPRESS}         Get Value From Json         ${response.json()}         $.data[0].frete[1].entrega_metodo_tipo
    ${CUSTO_CORREIOS_EXPRESS}         Get Value From Json         ${response.json()}         $.data[0].frete[1].entrega_custo_final

    #retirar na loja
    Should Contain      ${JSON_STATUS}              Cotação de frete realizado.
    Should Contain      ${CEP_ORIGEM}               01524-001
    Should Contain      ${CEP_DESTINO}              07950250
    Should Contain      ${PRODUTO_1_ID}             JZW615301
    Should Contain      ${FRETE_RETIRAR_LOJA}       Retirada Na Loja
    ${VALOR_ZERO}       Set Variable                0
    ${ZERO} =           Convert To Integer          ${VALOR_ZERO}
    Should Contain      ${CUSTO_RETIRAR_LOJA}       ${ZERO}

    #Correios
    Should Contain      ${CORREIOS_EMPRESA}         Correios       
    # ${VALOR_FRETE_STAND}        Convert To Number           17.08
    ${VALOR_FRETE_EXPRESS}      Convert To Number           37.88

    #Stand
    # Should Contain      ${FRETE_CORREIOS_STAND}           STANDARD
    # Should Contain      ${CUSTO_CORREIOS_STAND}           ${VALOR_FRETE_STAND}  

    #Express
    Should Contain      ${FRETE_CORREIOS_EXPRESS}         EXPRESS
    Should Contain      ${CUSTO_CORREIOS_EXPRESS}         ${VALOR_FRETE_EXPRESS}

    # método de entrega Jadlog

    ${JADLOG_EMPRESA}               Get Value From Json         ${response.json()}         $.data[0].frete[3].empresa
    
    #stand
    ${FRETE_JADLOG_STAND}               Get Value From Json         ${response.json()}         $.data[0].frete[2].entrega_metodo_tipo
    ${VALOR_FRETE_STAND_JADLOG}         Get Value From Json         ${response.json()}         $.data[0].frete[2].entrega_custo_final
    ${JADLOG_STAND}        Convert To Number           62.56

    Should Contain      ${JADLOG_EMPRESA}               Jadlog
    Should Contain      ${FRETE_JADLOG_STAND}           STANDARD
    Should Contain      ${VALOR_FRETE_STAND_JADLOG}     ${JADLOG_STAND}

    #express
    ${FRETE_JADLOG_EXPRESS}             Get Value From Json         ${response.json()}         $.data[0].frete[3].entrega_metodo_tipo
    ${CUSTO_FRETE_EXPRESS}              Get Value From Json         ${response.json()}         $.data[0].frete[3].entrega_custo_final
    ${JADLOG_EXPRESS}        Convert To Number           35.76
    
    Should Contain      ${FRETE_JADLOG_EXPRESS}               EXPRESS
    Should Contain      ${CUSTO_FRETE_EXPRESS}                ${JADLOG_EXPRESS}

    ${CONVERT} =        Convert To String           ${response.status_code}
    Should Contain    ${CONVERT}        200
    Log To Console    ${response.status_code}
    Log To Console    ${response.content}

ENTÃO verifico o frete do produto Disco de Freio foi cálculado - VW
    &{json_frete}           Vw Calculo Frete 4
    ${response}         POST        ${HOST_VW_CALCULO_FRET}          json=${json_frete}
    ${JSON_STATUS}      Get Value From Json         ${response.json()}         $.message
    
    ${PARCELAS_MASTER}          Get Value From Json         ${response.json()}         $.data.formas_pagamento[0].nome
    ${PARCELAS_HIPERCARD}       Get Value From Json         ${response.json()}         $.data.formas_pagamento[1].nome
    ${PARCELAS_VISA}            Get Value From Json         ${response.json()}         $.data.formas_pagamento[2].nome
    ${PARCELAS_ELO}             Get Value From Json         ${response.json()}         $.data.formas_pagamento[3].nome

    #Total produto + frete
    ${TOTAL}             Get Value From Json         ${response.json()}         $.data.total

    # 01 Parcela
    ${QTD_1_PARCELAS_VISA}              Get Value From Json         ${response.json()}          $.data.formas_pagamento[2].opcoes[0].parcelas
    ${VISA_VALOR_1_PARCELAS}            Get Value From Json         ${response.json()}          $.data.formas_pagamento[2].opcoes[0].valor_parcela
    ${PARCELAS_VISA_1}                  Convert To Integer   1
    ${VALOR1}                           Convert To Number           601.04
    ${VALOR2}                           Convert To Number           601.04

    # 02 Parcelas
    ${QTD_2_PARCELAS_VISA}              Get Value From Json         ${response.json()}          $.data.formas_pagamento[2].opcoes[1].parcelas
    ${VISA_VALOR_2_PARCELAS}            Get Value From Json         ${response.json()}          $.data.formas_pagamento[2].opcoes[1].valor_parcela
    ${PARCELAS_VISA_2}                  Convert To Integer          2
    ${VALOR3}                           Convert To Number           300.52

    # 03 Parcelas
    ${QTD_3_PARCELAS_VISA}              Get Value From Json         ${response.json()}          $.data.formas_pagamento[2].opcoes[2].parcelas
    ${VISA_VALOR_3_PARCELAS}            Get Value From Json         ${response.json()}          $.data.formas_pagamento[2].opcoes[2].valor_parcela
    ${PARCELAS_VISA_3}                  Convert To Integer          3
    ${VALOR4}                           Convert To Number           200.35

    # 04 Parcelas
    ${QTD_4_PARCELAS_VISA}              Get Value From Json         ${response.json()}          $.data.formas_pagamento[2].opcoes[3].parcelas
    ${VISA_VALOR_4_PARCELAS}            Get Value From Json         ${response.json()}          $.data.formas_pagamento[2].opcoes[3].valor_parcela
    ${PARCELAS_VISA_4}                  Convert To Integer          4
    ${VALOR5}                           Convert To Number           150.26

    # 05 Parcelas
    ${QTD_5_PARCELAS_VISA}              Get Value From Json         ${response.json()}          $.data.formas_pagamento[2].opcoes[4].parcelas
    ${VISA_VALOR_5_PARCELAS}            Get Value From Json         ${response.json()}          $.data.formas_pagamento[2].opcoes[4].valor_parcela
    ${PARCELAS_VISA_5}                  Convert To Integer          5
    ${VALOR6}                           Convert To Number           120.21

    # 06 Parcelas
    ${QTD_6_PARCELAS_VISA}              Get Value From Json         ${response.json()}          $.data.formas_pagamento[2].opcoes[5].parcelas
    ${VISA_VALOR_6_PARCELAS}            Get Value From Json         ${response.json()}          $.data.formas_pagamento[2].opcoes[5].valor_parcela
    ${PARCELAS_VISA_6}                  Convert To Integer          6
    ${VALOR7}                           Convert To Number           100.17

    # 07 Parcelas
    ${QTD_7_PARCELAS_VISA}              Get Value From Json         ${response.json()}          $.data.formas_pagamento[2].opcoes[6].parcelas
    ${VISA_VALOR_7_PARCELAS}            Get Value From Json         ${response.json()}          $.data.formas_pagamento[2].opcoes[6].valor_parcela
    ${PARCELAS_VISA_7}                  Convert To Integer          7
    ${VALOR8}                           Convert To Number           85.86

    # 08 Parcelas
    ${QTD_8_PARCELAS_VISA}              Get Value From Json         ${response.json()}          $.data.formas_pagamento[2].opcoes[7].parcelas
    ${VISA_VALOR_8_PARCELAS}            Get Value From Json         ${response.json()}          $.data.formas_pagamento[2].opcoes[7].valor_parcela
    ${PARCELAS_VISA_8}                  Convert To Integer          8
    ${VALOR9}                           Convert To Number           75.13

    # 09 Parcelas
    ${QTD_9_PARCELAS_VISA}              Get Value From Json         ${response.json()}          $.data.formas_pagamento[2].opcoes[8].parcelas
    ${VISA_VALOR_9_PARCELAS}            Get Value From Json         ${response.json()}          $.data.formas_pagamento[2].opcoes[8].valor_parcela
    ${PARCELAS_VISA_9}                  Convert To Integer          9
    ${VALOR10}                          Convert To Number           66.78

    # 10 Parcelas
    ${QTD_10_PARCELAS_VISA}              Get Value From Json         ${response.json()}          $.data.formas_pagamento[2].opcoes[9].parcelas
    ${VISA_VALOR_10_PARCELAS}            Get Value From Json         ${response.json()}          $.data.formas_pagamento[2].opcoes[9].valor_parcela
    ${PARCELAS_VISA_10}                  Convert To Integer          10
    ${VALOR11}                           Convert To Number           60.1

    #01
    Should Contain      ${VISA_VALOR_1_PARCELAS}    ${VALOR1}
    Should Contain      ${TOTAL}                    ${VALOR2}
    Should Contain      ${QTD_1_PARCELAS_VISA}      ${PARCELAS_VISA_1}

    #02
    Should Contain      ${VISA_VALOR_2_PARCELAS}    ${VALOR3}
    Should Contain      ${QTD_2_PARCELAS_VISA}      ${PARCELAS_VISA_2}

    #03
    Should Contain      ${VISA_VALOR_3_PARCELAS}    ${VALOR4}
    Should Contain      ${QTD_3_PARCELAS_VISA}      ${PARCELAS_VISA_3}

    #04
    Should Contain      ${VISA_VALOR_4_PARCELAS}    ${VALOR5}
    Should Contain      ${QTD_4_PARCELAS_VISA}      ${PARCELAS_VISA_4}

    #05
    Should Contain      ${VISA_VALOR_5_PARCELAS}    ${VALOR6}
    Should Contain      ${QTD_5_PARCELAS_VISA}      ${PARCELAS_VISA_5}

    #06
    Should Contain      ${VISA_VALOR_6_PARCELAS}    ${VALOR7}
    Should Contain      ${QTD_6_PARCELAS_VISA}      ${PARCELAS_VISA_6}

    #07
    Should Contain      ${VISA_VALOR_7_PARCELAS}    ${VALOR8}
    Should Contain      ${QTD_7_PARCELAS_VISA}      ${PARCELAS_VISA_7}

    #08
    Should Contain      ${VISA_VALOR_8_PARCELAS}    ${VALOR9}
    Should Contain      ${QTD_8_PARCELAS_VISA}      ${PARCELAS_VISA_8}

    #09
    Should Contain      ${VISA_VALOR_9_PARCELAS}    ${VALOR10}
    Should Contain      ${QTD_9_PARCELAS_VISA}      ${PARCELAS_VISA_9}

    #10
    Should Contain      ${VISA_VALOR_10_PARCELAS}    ${VALOR11}
    Should Contain      ${QTD_10_PARCELAS_VISA}      ${PARCELAS_VISA_10}

    Should Contain      ${JSON_STATUS}                  Cálculo dos itens realizado com sucesso.
    Should Contain      ${PARCELAS_VISA}                Visa Crédito
    Should Contain      ${PARCELAS_MASTER}              Mastercard Crédito
    Should Contain      ${PARCELAS_ELO}                 Elo Crédito
    Should Contain      ${PARCELAS_HIPERCARD}           Hipercard Crédito

    ${CONVERT} =        Convert To String           ${response.status_code}
    Should Contain    ${CONVERT}        200
    Log To Console    ${response.status_code}
    Log To Console    ${response.content}

ENTÃO faça um pedido válido de Pastilha de Freio VW JZZ698451AB com Mastercard - VW
    &{json_pedido}           Vw Pedido Valido Master Card 2
    #mexido
    ${AUTHORIZATION_TOKEN}          Metodo Token Vw
    ${TOKEN}=    Catenate    SEPARATOR=${EMPTY}    @{AUTHORIZATION_TOKEN}
    &{auth}             Create Dictionary           authorization=${TOKEN}
    ${response}         POST           ${HOST_VW_PEDIDO}          json=${json_pedido}         headers=${auth}
    ${RESPOSTA}         Get Value From Json         ${response.json()}         $.message
    Should Contain      ${RESPOSTA}[0]           Pedido realizado com sucesso!

ENTÃO faça um pedido válido de Disco de Freio com Visa - VW
    &{json_pedido}           Vw Pedido Valido Visa 2
    ${AUTHORIZATION_TOKEN}          Metodo Token Vw
    ${TOKEN}=    Catenate    SEPARATOR=${EMPTY}    @{AUTHORIZATION_TOKEN}
    &{auth}             Create Dictionary           authorization=${TOKEN}
    ${response}         POST           ${HOST_VW_PEDIDO}          json=${json_pedido}         headers=${auth}
    ${RESPOSTA}         Get Value From Json         ${response.json()}         $.message
    Should Contain      ${RESPOSTA}[0]           Pedido realizado com sucesso!

ENTÃO devo verificar se há itens em estoque - VW
    &{json_teste_frete}           Vw Estoque Disco
    ${response}         POST        ${HOST_FRETE_VW}          json=${json_teste_frete}
    ${item}         Set Variable        ${response.json()}
    Log     ${item}
    ${RECEBE_QTD_ESTOQUE}           Get Value From Json     ${item}        $.data[0].produtos[0].estoque
    ${RECEBE_QTD_PRODUTOS}          Get Value From Json     ${item}        $.data[0].produtos[0].quantidade
    Log    ${RECEBE_QTD_ESTOQUE}[0]
    Log    ${RECEBE_QTD_PRODUTOS}[0]

    ${qtd_estoque}=     Convert To Integer    ${RECEBE_QTD_ESTOQUE}[0]   
    Log     ${qtd_estoque}
    ${qtd_produtos}=        Convert To Integer     ${RECEBE_QTD_PRODUTOS}[0]
    Log         ${qtd_produtos}

    IF    ${qtd_estoque}>=${qtd_produtos}

    Log       Teste passou!

    ELSE

    Log       Quantidade excede o estoque.

    END
