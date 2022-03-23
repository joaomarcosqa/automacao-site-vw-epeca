Documentation
... Suíte com recursos da SSR

*** Settings ***
Library     RequestsLibrary
Library     Collections
Library     ${EXECDIR}/API_Automation/Shared/resources/shared_ssr/parametros_ssr.py
Library     JSONLibrary

***Keywords***

DADO que eu me conecte ao WebService - SSR
    Sleep             1 

QUANDO realizar conexão com sucesso - SSR
    Sleep             1

ENTÃO realize o login - SSR
    &{json_login}           Ssr Login
    ${response}         POST        ${HOST_SIGNIN}          json=${json_login}
    ${JSON_CLIENTE}             Set Variable        ${response.json()}
    ${JSON_STATUS}      Get Value From Json         ${JSON_CLIENTE}         $.message
    Should Contain      ${JSON_STATUS}              SUCESSO: Cadastro realizado
    ${CONVERT} =        Convert To String           ${response.status_code}
    Should Contain      ${CONVERT}      200    

ENTÃO realize o login sem sucesso - SSR
    &{json_login}           Ssr Login Sem Sucesso
    ${response}         POST        ${HOST_SIGNIN}          json=${json_login}      expected_status=500
    ${JSON_CLIENTE}             Set Variable        ${response.json()}
    ${JSON_STATUS}      Get Value From Json         ${JSON_CLIENTE}         $.message
    Should Contain      ${JSON_STATUS}              API ERROR
    ${CONVERT} =        Convert To String           ${response.status_code}
    Should Contain      ${CONVERT}      500    

ENTÃO realize o login com e-mail válido e senha inválida - SSR
    &{json_login}           Ssr Login Com Email Valido Senha Invalida
    ${response}         POST        ${HOST_SIGNIN}          json=${json_login}      expected_status=500
    ${JSON_CLIENTE}             Set Variable        ${response.json()}
    ${JSON_STATUS}      Get Value From Json         ${JSON_CLIENTE}         $.message
    Should Contain      ${JSON_STATUS}              API ERROR
    ${CONVERT} =        Convert To String           ${response.status_code}
    Should Contain      ${CONVERT}      500    

ENTÃO realize o login com e-mail inválido e senha válida - SSR
    &{json_login}           Ssr Login Com Senha Valida Email Invalido
    ${response}         POST        ${HOST_SIGNIN}          json=${json_login}      expected_status=500
    ${JSON_CLIENTE}             Set Variable        ${response.json()}
    ${JSON_STATUS}      Get Value From Json         ${JSON_CLIENTE}         $.message
    Should Contain      ${JSON_STATUS}              API ERROR
    ${CONVERT} =        Convert To String           ${response.status_code}
    Should Contain      ${CONVERT}      500   

ENTÃO realize o login com senha curta - SSR
    &{json_login}           Ssr Login Senha Curta
    ${response}         POST        ${HOST_SIGNIN}          json=${json_login}      expected_status=500
    ${JSON_CLIENTE}             Set Variable        ${response.json()}
    ${JSON_STATUS}      Get Value From Json         ${JSON_CLIENTE}         $.message
    Should Contain      ${JSON_STATUS}              API ERROR
    ${CONVERT} =        Convert To String           ${response.status_code}
    Should Contain      ${CONVERT}      500 

ENTÃO verifico o frete dos produtos - SSR
    &{json_frete}           Ssr Verifica Frete
    ${response}                 POST        ${HOST_FRETE}          json=${json_frete}
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
    ${FRETE_CORREIOS_STAND}           Get Value From Json         ${response.json()}         $.data[0].frete[1].entrega_metodo_tipo
    ${CUSTO_CORREIOS_STAND}           Get Value From Json         ${response.json()}         $.data[0].frete[1].entrega_custo_final
    ${FRETE_CORREIOS_EXPRESS}         Get Value From Json         ${response.json()}         $.data[0].frete[2].entrega_metodo_tipo
    ${CUSTO_CORREIOS_EXPRESS}         Get Value From Json         ${response.json()}         $.data[0].frete[2].entrega_custo_final

    #retirar na loja
    Should Contain      ${JSON_STATUS}              Cotação de frete realizado.
    Should Contain      ${CEP_ORIGEM}               14096000
    Should Contain      ${CEP_DESTINO}              01025010
    Should Contain      ${PRODUTO_1_ID}             43957-86
    Should Contain      ${FRETE_RETIRAR_LOJA}       Retirada Na Loja
    ${VALOR_ZERO}       Set Variable                0
    ${ZERO} =           Convert To Integer          ${VALOR_ZERO}
    Should Contain      ${CUSTO_RETIRAR_LOJA}       ${ZERO}

    #Correios
    Should Contain      ${CORREIOS_EMPRESA}         Correios       
    ${VALOR_FRETE_STAND}        Convert To Number           38.42
    ${VALOR_FRETE_EXPRESS}      Convert To Number           41.64

    #Stand
    Should Contain      ${FRETE_CORREIOS_STAND}           STANDARD
    Should Contain      ${CUSTO_CORREIOS_STAND}           ${VALOR_FRETE_STAND}  

    #Express
    Should Contain      ${FRETE_CORREIOS_EXPRESS}         EXPRESS
    Should Contain      ${CUSTO_CORREIOS_EXPRESS}         ${VALOR_FRETE_EXPRESS}

    # método de entrega Jadlog

    ${JADLOG_EMPRESA}               Get Value From Json         ${response.json()}         $.data[0].frete[3].empresa
    
    #stand
    ${FRETE_JADLOG_STAND}               Get Value From Json         ${response.json()}         $.data[0].frete[3].entrega_metodo_tipo
    ${VALOR_FRETE_STAND_JADLOG}         Get Value From Json         ${response.json()}         $.data[0].frete[3].entrega_custo_final
    ${JADLOG_STAND}        Convert To Number           15.77


    Should Contain      ${JADLOG_EMPRESA}               Jadlog
    Should Contain      ${FRETE_JADLOG_STAND}           STANDARD
    Should Contain      ${VALOR_FRETE_STAND_JADLOG}     ${JADLOG_STAND}

    #express
    ${FRETE_JADLOG_EXPRESS}             Get Value From Json         ${response.json()}         $.data[0].frete[4].entrega_metodo_tipo
    ${CUSTO_FRETE_EXPRESS}              Get Value From Json         ${response.json()}         $.data[0].frete[4].entrega_custo_final
    ${JADLOG_EXPRESS}        Convert To Number           15.89
    
    Should Contain      ${FRETE_JADLOG_EXPRESS}               EXPRESS
    Should Contain      ${CUSTO_FRETE_EXPRESS}                ${JADLOG_EXPRESS}

    ${CONVERT} =        Convert To String           ${response.status_code}
    Should Contain    ${CONVERT}        200
    Log To Console    ${response.status_code}
    Log To Console    ${response.content} 

ENTÃO verifico se o frete 00000-000 é inválido - SSR
    &{json_frete}           Ssr Frete Invalido 0
    ${response}         POST        ${HOST_FRETE}          json=${json_frete}
    ${CONVERT} =        Convert To String    ${response.status_code}
    ${JSON_STATUS}      Get Value From Json         ${response.json()}         $.data
    Should Contain      ${JSON_STATUS}[0]              CEP_INVALIDO
    Log To Console    ${response.status_code}
    Log To Console    ${response.content}

ENTÃO verifico se o frete 12345-678 é inválido - SSR
    &{json_frete}           Ssr Frete Invalido 1
    ${response}         POST        ${HOST_FRETE}          json=${json_frete}
    ${CONVERT} =        Convert To String    ${response.status_code}
    ${JSON_STATUS}      Get Value From Json         ${response.json()}         $.data
    Should Contain      ${JSON_STATUS}[0]              CEP_INVALIDO
    Log To Console    ${response.status_code}
    Log To Console    ${response.content}

ENTÃO verifico se o frete 22222-222 é inválido - SSR
    &{json_frete}           Ssr Frete Invalido 2
    ${response}         POST        ${HOST_FRETE}          json=${json_frete}
    ${CONVERT} =        Convert To String    ${response.status_code}
    ${JSON_STATUS}      Get Value From Json         ${response.json()}         $.data
    Should Contain      ${JSON_STATUS}[0]              CEP_INVALIDO
    Log To Console    ${response.status_code}
    Log To Console    ${response.content}

ENTÃO verifico se o frete 88888-888 é inválido - SSR
    &{json_frete}           Ssr Frete Invalido 3
    ${response}         POST        ${HOST_FRETE}          json=${json_frete}
    ${CONVERT} =        Convert To String    ${response.status_code}
    ${JSON_STATUS}      Get Value From Json         ${response.json()}         $.data
    Should Contain      ${JSON_STATUS}[0]              CEP_INVALIDO
    Log To Console    ${response.status_code}
    Log To Console    ${response.content}

ENTÃO verifico se o frete é inválido com símbolos - SSR
    &{json_frete}           Ssr Frete Com Simbolos
    ${response}         POST        ${HOST_FRETE}          json=${json_frete}
    ${CONVERT} =        Convert To String    ${response.status_code}
    ${JSON_STATUS}      Get Value From Json         ${response.json()}         $.data
    Should Contain      ${JSON_STATUS}[0]              CEP_INVALIDO
    Log To Console    ${response.status_code}
    Log To Console    ${response.content} 

ENTÃO devo analisar o calculo do frete - SSR
    &{json_frete}           Ssr Calculo Frete
    ${response}         POST        ${HOST_CALC_FRETE}          json=${json_frete}
    ${JSON_STATUS}      Get Value From Json         ${response.json()}         $.message
    Should Contain      ${JSON_STATUS}              SUCESSO: Na realização dos cálculos dos produtos.
    ${CONVERT} =        Convert To String           ${response.status_code}
    Should Contain    ${CONVERT}        200
    Log To Console    ${response.status_code}
    Log To Console    ${response.content}

ENTÃO faça um pedido válido - SSR
    &{json_pedido}           Ssr Pedido Valido
    ${AUTHORIZATION_TOKEN}          Metodo Token Ssr
    ${TOKEN}=    Catenate    SEPARATOR=${EMPTY}    @{AUTHORIZATION_TOKEN}
    &{auth}             Create Dictionary           authorization=${TOKEN}
    ${response}         POST           ${HOST_PEDIDO}          json=${json_pedido}         headers=${auth}
    ${RESPOSTA}         Get Value From Json         ${response.json()}         $.message
    Should Contain      ${RESPOSTA}[0]           Pedido realizado com sucesso!

ENTÃO devo verificar se há itens em estoque - SSR 
    &{json_teste_frete}           Ssr Estoque
    ${response}         POST        ${HOST_FRETE}          json=${json_teste_frete}
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

ENTÃO verifico se o frete é inválido quando é incompleto - SSR
    &{json_frete}           Ssr Frete Curto
    ${response}         POST        ${HOST_FRETE}          json=${json_frete}
    ${CONVERT} =        Convert To String    ${response.status_code}
    ${JSON_STATUS}      Get Value From Json         ${response.json()}         $.data
    Should Contain      ${JSON_STATUS}[0]              CEP_INVALIDO
    Log To Console    ${response.status_code}
    Log To Console    ${response.content} 

ENTÃO verifico se o cep do estado do São Paulo é válido - SSR
    &{CEP_JSON}           Ssr Cep Sao Paulo
    ${response}         POST        ${HOST_FRETE}          json=${CEP_JSON}
    
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

    ${JADLOG_STAND}             Convert To Number           359.41
    ${JADLOG_EXPRESS}           Convert To Number           214.25


    ${VALOR_ZERO}       Set Variable                0
    ${ZERO} =           Convert To Integer          ${VALOR_ZERO}
    
    Should Contain      ${COTACAO_FRETE}                Cotação de frete realizado.
    Should Contain      ${CEP_ORIGEM}                   80740000
    Should Contain      ${CEP_DESTINO}                  01153000
    Should Contain      ${PRODUTO_ID}                   25700746
    Should Contain      ${FRETE_RETIRAR_LOJA}           Retirada Na Loja
    Should Contain      ${CUSTO_RETIRAR_LOJA}           ${ZERO}
    Should Contain      ${VALOR_FRETE_STAND}            ${JADLOG_STAND}
    Should Contain      ${VALOR_FRETE_EXPRESS}          ${JADLOG_EXPRESS}

ENTÃO verifico se o cep do estado de Alagoas é válido - SSR
    &{CEP_JSON}           Ssr Cep Alagoas
    ${response}         POST        ${HOST_FRETE}          json=${CEP_JSON}
    
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

    ${JADLOG_STAND}             Convert To Number           636.3
    ${JADLOG_EXPRESS}           Convert To Number           1381.63


    ${VALOR_ZERO}       Set Variable                0
    ${ZERO} =           Convert To Integer          ${VALOR_ZERO}
    
    Should Contain      ${COTACAO_FRETE}                Cotação de frete realizado.
    Should Contain      ${CEP_ORIGEM}                   80740000
    Should Contain      ${CEP_DESTINO}                  57010002
    Should Contain      ${PRODUTO_ID}                   25700746
    Should Contain      ${FRETE_RETIRAR_LOJA}           Retirada Na Loja
    Should Contain      ${CUSTO_RETIRAR_LOJA}           ${ZERO}
    Should Contain      ${VALOR_FRETE_STAND}            ${JADLOG_STAND}
    Should Contain      ${VALOR_FRETE_EXPRESS}          ${JADLOG_EXPRESS}

ENTÃO verifico se o cep do estado do Amapá é válido - SSR
    &{CEP_JSON}           Ssr Cep Amapa
    ${response}         POST        ${HOST_FRETE}          json=${CEP_JSON}
    
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

    ${JADLOG_STAND}             Convert To Number           3054.78
    ${JADLOG_EXPRESS}           Convert To Number           1634.11


    ${VALOR_ZERO}       Set Variable                0
    ${ZERO} =           Convert To Integer          ${VALOR_ZERO}
    
    Should Contain      ${COTACAO_FRETE}                Cotação de frete realizado.
    Should Contain      ${CEP_ORIGEM}                   80740000
    Should Contain      ${CEP_DESTINO}                  68950000
    Should Contain      ${PRODUTO_ID}                   25700746
    Should Contain      ${FRETE_RETIRAR_LOJA}           Retirada Na Loja
    Should Contain      ${CUSTO_RETIRAR_LOJA}           ${ZERO}
    Should Contain      ${VALOR_FRETE_STAND}            ${JADLOG_STAND}
    Should Contain      ${VALOR_FRETE_EXPRESS}          ${JADLOG_EXPRESS}

ENTÃO verifico se o cep do estado da Bahia é válido - SSR
    &{CEP_JSON}           Ssr Cep Bahia
    ${response}         POST        ${HOST_FRETE}          json=${CEP_JSON}
    
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

    ${JADLOG_STAND}             Convert To Number           636.3
    ${JADLOG_EXPRESS}           Convert To Number           794.17


    ${VALOR_ZERO}       Set Variable                0
    ${ZERO} =           Convert To Integer          ${VALOR_ZERO}
    
    Should Contain      ${COTACAO_FRETE}                Cotação de frete realizado.
    Should Contain      ${CEP_ORIGEM}                   80740000
    Should Contain      ${CEP_DESTINO}                  40020025
    Should Contain      ${PRODUTO_ID}                   25700746
    Should Contain      ${FRETE_RETIRAR_LOJA}           Retirada Na Loja
    Should Contain      ${CUSTO_RETIRAR_LOJA}           ${ZERO}
    Should Contain      ${VALOR_FRETE_STAND}            ${JADLOG_STAND}
    Should Contain      ${VALOR_FRETE_EXPRESS}          ${JADLOG_EXPRESS}

ENTÃO verifico se o cep do estado do Ceará é válido - SSR
    &{CEP_JSON}           Ssr Cep Ceara
    ${response}         POST        ${HOST_FRETE}          json=${CEP_JSON}
    
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

    ${JADLOG_STAND}             Convert To Number           754.17
    ${JADLOG_EXPRESS}           Convert To Number           1218.2


    ${VALOR_ZERO}       Set Variable                0
    ${ZERO} =           Convert To Integer          ${VALOR_ZERO}
    
    Should Contain      ${COTACAO_FRETE}                Cotação de frete realizado.
    Should Contain      ${CEP_ORIGEM}                   80740000
    Should Contain      ${CEP_DESTINO}                  60010030
    Should Contain      ${PRODUTO_ID}                   25700746
    Should Contain      ${FRETE_RETIRAR_LOJA}           Retirada Na Loja
    Should Contain      ${CUSTO_RETIRAR_LOJA}           ${ZERO}
    Should Contain      ${VALOR_FRETE_STAND}            ${JADLOG_STAND}
    Should Contain      ${VALOR_FRETE_EXPRESS}          ${JADLOG_EXPRESS}

ENTÃO verifico o frete do produto Mesa de Garfo - SSR
    &{json_frete}           Ssr Verifica Frete 1
    ${response}                 POST        ${HOST_FRETE}          json=${json_frete}
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
    ${FRETE_CORREIOS_STAND}           Get Value From Json         ${response.json()}         $.data[0].frete[1].entrega_metodo_tipo
    ${CUSTO_CORREIOS_STAND}           Get Value From Json         ${response.json()}         $.data[0].frete[1].entrega_custo_final
    ${FRETE_CORREIOS_EXPRESS}         Get Value From Json         ${response.json()}         $.data[0].frete[2].entrega_metodo_tipo
    ${CUSTO_CORREIOS_EXPRESS}         Get Value From Json         ${response.json()}         $.data[0].frete[2].entrega_custo_final

    #retirar na loja
    Should Contain      ${JSON_STATUS}              Cotação de frete realizado.
    Should Contain      ${CEP_ORIGEM}               80740000
    Should Contain      ${CEP_DESTINO}              07929050
    Should Contain      ${PRODUTO_1_ID}             46127-04
    Should Contain      ${FRETE_RETIRAR_LOJA}       Retirada Na Loja
    ${VALOR_ZERO}       Set Variable                0
    ${ZERO} =           Convert To Integer          ${VALOR_ZERO}
    Should Contain      ${CUSTO_RETIRAR_LOJA}       ${ZERO}

    #Correios
    Should Contain      ${CORREIOS_EMPRESA}         Correios       
    ${VALOR_FRETE_STAND}        Convert To Number           62.14
    ${VALOR_FRETE_EXPRESS}      Convert To Number           100.47

    #Stand
    Should Contain      ${FRETE_CORREIOS_STAND}           STANDARD
    Should Contain      ${CUSTO_CORREIOS_STAND}           ${VALOR_FRETE_STAND}  

    #Express
    Should Contain      ${FRETE_CORREIOS_EXPRESS}         EXPRESS
    Should Contain      ${CUSTO_CORREIOS_EXPRESS}         ${VALOR_FRETE_EXPRESS}

    # método de entrega Jadlog

    ${JADLOG_EMPRESA}               Get Value From Json         ${response.json()}         $.data[0].frete[3].empresa
    
    #stand
    ${FRETE_JADLOG_STAND}               Get Value From Json         ${response.json()}         $.data[0].frete[3].entrega_metodo_tipo
    ${VALOR_FRETE_STAND_JADLOG}         Get Value From Json         ${response.json()}         $.data[0].frete[3].entrega_custo_final
    ${JADLOG_STAND}        Convert To Number           147.22


    Should Contain      ${JADLOG_EMPRESA}               Jadlog
    Should Contain      ${FRETE_JADLOG_STAND}           STANDARD
    Should Contain      ${VALOR_FRETE_STAND_JADLOG}     ${JADLOG_STAND}

    #express
    ${FRETE_JADLOG_EXPRESS}             Get Value From Json         ${response.json()}         $.data[0].frete[4].entrega_metodo_tipo
    ${CUSTO_FRETE_EXPRESS}              Get Value From Json         ${response.json()}         $.data[0].frete[4].entrega_custo_final
    ${JADLOG_EXPRESS}        Convert To Number           77.43
    
    Should Contain      ${FRETE_JADLOG_EXPRESS}               EXPRESS
    Should Contain      ${CUSTO_FRETE_EXPRESS}                ${JADLOG_EXPRESS}

    ${CONVERT} =        Convert To String           ${response.status_code}
    Should Contain    ${CONVERT}        200
    Log To Console    ${response.status_code}
    Log To Console    ${response.content}

ENTÃO faça um pedido válido de Mesa de Garfo com Visa - SSR
    &{json_pedido}           Ssr Pedido Valido Visa 1
    ${AUTHORIZATION_TOKEN}          Metodo Token Ssr
    ${TOKEN}=    Catenate    SEPARATOR=${EMPTY}    @{AUTHORIZATION_TOKEN}
    &{auth}             Create Dictionary           authorization=${TOKEN}
    ${response}         POST           ${HOST_PEDIDO}          json=${json_pedido}         headers=${auth}
    ${RESPOSTA}         Get Value From Json         ${response.json()}         $.message
    Should Contain      ${RESPOSTA}[0]           Pedido realizado com sucesso!

ENTÃO verifico o frete do produto Mesa de Garfo foi cálculado - SSR
    &{json_frete}                   Ssr Calculo Frete 1
    ${response}                     POST        ${HOST_CALC_FRETE}          json=${json_frete}
    ${CONVERT} =                    Convert To String    ${response.status_code}
    ${JSON_STATUS}                  Get Value From Json         ${response.json()}         $.message
    ${VALOR_FRETE}                  Get Value From Json         ${response.json()}         $.data.totalFrete
    ${VALOR_PRODUTOS}               Get Value From Json         ${response.json()}         $.data.totalProdutos
    ${TOTAL_FRETE_MAIS_PRODUTOS}    Get Value From Json         ${response.json()}         $.data.total

    ${valor1}           Convert To Number               100.47
    ${valor2}           Convert To Number               220.89
    ${valor3}           Convert To Number               321.36

    Should Contain      ${JSON_STATUS}                  SUCESSO: Na realização dos cálculos dos produtos.
    Should Contain      ${VALOR_FRETE}                  ${valor1}
    Should Contain      ${VALOR_PRODUTOS}               ${valor2}
    Should Contain      ${TOTAL_FRETE_MAIS_PRODUTOS}    ${valor3}

    ${CONVERT} =        Convert To String           ${response.status_code}
    Should Contain    ${CONVERT}        200
    Log To Console    ${response.status_code}
    Log To Console    ${response.content}

ENTÃO verifico o frete do produto Farol Harley-Davidson - SSR
    &{json_frete}           Ssr Verifica Frete 2
    ${response}                 POST        ${HOST_FRETE}          json=${json_frete}
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
    ${FRETE_CORREIOS_STAND}           Get Value From Json         ${response.json()}         $.data[0].frete[1].entrega_metodo_tipo
    ${CUSTO_CORREIOS_STAND}           Get Value From Json         ${response.json()}         $.data[0].frete[1].entrega_custo_final
    ${FRETE_CORREIOS_EXPRESS}         Get Value From Json         ${response.json()}         $.data[0].frete[2].entrega_metodo_tipo
    ${CUSTO_CORREIOS_EXPRESS}         Get Value From Json         ${response.json()}         $.data[0].frete[2].entrega_custo_final

    #retirar na loja
    Should Contain      ${JSON_STATUS}              Cotação de frete realizado.
    Should Contain      ${CEP_ORIGEM}               80740000
    Should Contain      ${CEP_DESTINO}              07929050
    Should Contain      ${PRODUTO_1_ID}             67700043
    Should Contain      ${FRETE_RETIRAR_LOJA}       Retirada Na Loja
    ${VALOR_ZERO}       Set Variable                0
    ${ZERO} =           Convert To Integer          ${VALOR_ZERO}
    Should Contain      ${CUSTO_RETIRAR_LOJA}       ${ZERO}

    #Correios
    Should Contain      ${CORREIOS_EMPRESA}         Correios       
    ${VALOR_FRETE_STAND}        Convert To Number           62.14
    ${VALOR_FRETE_EXPRESS}      Convert To Number           100.47

    #Stand
    Should Contain      ${FRETE_CORREIOS_STAND}           STANDARD
    Should Contain      ${CUSTO_CORREIOS_STAND}           ${VALOR_FRETE_STAND}  

    #Express
    Should Contain      ${FRETE_CORREIOS_EXPRESS}         EXPRESS
    Should Contain      ${CUSTO_CORREIOS_EXPRESS}         ${VALOR_FRETE_EXPRESS}

    # método de entrega Jadlog

    ${JADLOG_EMPRESA}               Get Value From Json         ${response.json()}         $.data[0].frete[3].empresa
    
    #stand
    ${FRETE_JADLOG_STAND}               Get Value From Json         ${response.json()}         $.data[0].frete[3].entrega_metodo_tipo
    ${VALOR_FRETE_STAND_JADLOG}         Get Value From Json         ${response.json()}         $.data[0].frete[3].entrega_custo_final
    ${JADLOG_STAND}        Convert To Number           146.06


    Should Contain      ${JADLOG_EMPRESA}               Jadlog
    Should Contain      ${FRETE_JADLOG_STAND}           STANDARD
    Should Contain      ${VALOR_FRETE_STAND_JADLOG}     ${JADLOG_STAND}

    #express
    ${FRETE_JADLOG_EXPRESS}             Get Value From Json         ${response.json()}         $.data[0].frete[4].entrega_metodo_tipo
    ${CUSTO_FRETE_EXPRESS}              Get Value From Json         ${response.json()}         $.data[0].frete[4].entrega_custo_final
    ${JADLOG_EXPRESS}        Convert To Number           76.27
    
    Should Contain      ${FRETE_JADLOG_EXPRESS}               EXPRESS
    Should Contain      ${CUSTO_FRETE_EXPRESS}                ${JADLOG_EXPRESS}

    ${CONVERT} =        Convert To String           ${response.status_code}
    Should Contain    ${CONVERT}        200
    Log To Console    ${response.status_code}
    Log To Console    ${response.content}

ENTÃO verifico o frete do produto Farol Harley-Davidson foi cálculado - SSR
    &{json_frete}                   Ssr Calculo Frete 2
    ${response}                     POST        ${HOST_CALC_FRETE}          json=${json_frete}
    ${CONVERT} =                    Convert To String    ${response.status_code}
    ${JSON_STATUS}                  Get Value From Json         ${response.json()}         $.message
    ${VALOR_FRETE}                  Get Value From Json         ${response.json()}         $.data.totalFrete
    ${VALOR_PRODUTOS}               Get Value From Json         ${response.json()}         $.data.totalProdutos
    ${TOTAL_FRETE_MAIS_PRODUTOS}    Get Value From Json         ${response.json()}         $.data.total

    ${valor1}           Convert To Number               0.0
    ${valor2}           Convert To Number               119.25
    ${valor3}           Convert To Number               119.25

    Should Contain      ${JSON_STATUS}                  SUCESSO: Na realização dos cálculos dos produtos.
    Should Contain      ${VALOR_FRETE}                  ${valor1}
    Should Contain      ${VALOR_PRODUTOS}               ${valor2}
    Should Contain      ${TOTAL_FRETE_MAIS_PRODUTOS}    ${valor3}

    ${CONVERT} =        Convert To String           ${response.status_code}
    Should Contain    ${CONVERT}        200
    Log To Console    ${response.status_code}
    Log To Console    ${response.content}   
    
ENTÃO faça um pedido válido de Farol Harley-Davidson com Mastercard - SSR
    &{json_pedido}           Ssr Pedido Valido Master Card 1
    ${AUTHORIZATION_TOKEN}          Metodo Token Ssr
    ${TOKEN}=    Catenate    SEPARATOR=${EMPTY}    @{AUTHORIZATION_TOKEN}
    &{auth}             Create Dictionary           authorization=${TOKEN}
    ${response}         POST           ${HOST_PEDIDO}          json=${json_pedido}         headers=${auth}
    ${RESPOSTA}         Get Value From Json         ${response.json()}         $.message
    Should Contain      ${RESPOSTA}[0]           Pedido realizado com sucesso!

ENTÃO verifico o frete do produto Pastilha de Freio - SSR
    &{json_frete}           Ssr Verifica Frete 3
    ${response}                 POST        ${HOST_FRETE}          json=${json_frete}
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
    ${FRETE_CORREIOS_STAND}           Get Value From Json         ${response.json()}         $.data[0].frete[1].entrega_metodo_tipo
    ${CUSTO_CORREIOS_STAND}           Get Value From Json         ${response.json()}         $.data[0].frete[1].entrega_custo_final
    ${FRETE_CORREIOS_EXPRESS}         Get Value From Json         ${response.json()}         $.data[0].frete[2].entrega_metodo_tipo
    ${CUSTO_CORREIOS_EXPRESS}         Get Value From Json         ${response.json()}         $.data[0].frete[2].entrega_custo_final

    #retirar na loja
    Should Contain      ${JSON_STATUS}              Cotação de frete realizado.
    Should Contain      ${CEP_ORIGEM}               14096000
    Should Contain      ${CEP_DESTINO}              07929050
    Should Contain      ${PRODUTO_1_ID}             43957-86
    Should Contain      ${FRETE_RETIRAR_LOJA}       Retirada Na Loja
    ${VALOR_ZERO}       Set Variable                0
    ${ZERO} =           Convert To Integer          ${VALOR_ZERO}
    Should Contain      ${CUSTO_RETIRAR_LOJA}       ${ZERO}

    #Correios
    Should Contain      ${CORREIOS_EMPRESA}         Correios       
    ${VALOR_FRETE_STAND}        Convert To Number           33.76
    ${VALOR_FRETE_EXPRESS}      Convert To Number           37.23

    #Stand
    Should Contain      ${FRETE_CORREIOS_STAND}           STANDARD
    Should Contain      ${CUSTO_CORREIOS_STAND}           ${VALOR_FRETE_STAND}  

    #Express
    Should Contain      ${FRETE_CORREIOS_EXPRESS}         EXPRESS
    Should Contain      ${CUSTO_CORREIOS_EXPRESS}         ${VALOR_FRETE_EXPRESS}

    # método de entrega Jadlog

    ${JADLOG_EMPRESA}               Get Value From Json         ${response.json()}         $.data[0].frete[3].empresa
    
    #stand
    ${FRETE_JADLOG_STAND}               Get Value From Json         ${response.json()}         $.data[0].frete[3].entrega_metodo_tipo
    ${VALOR_FRETE_STAND_JADLOG}         Get Value From Json         ${response.json()}         $.data[0].frete[3].entrega_custo_final
    ${JADLOG_STAND}        Convert To Number           16.72


    Should Contain      ${JADLOG_EMPRESA}               Jadlog
    Should Contain      ${FRETE_JADLOG_STAND}           STANDARD
    Should Contain      ${VALOR_FRETE_STAND_JADLOG}     ${JADLOG_STAND}

    #express
    ${FRETE_JADLOG_EXPRESS}             Get Value From Json         ${response.json()}         $.data[0].frete[4].entrega_metodo_tipo
    ${CUSTO_FRETE_EXPRESS}              Get Value From Json         ${response.json()}         $.data[0].frete[4].entrega_custo_final
    ${JADLOG_EXPRESS}        Convert To Number           16.72
    
    Should Contain      ${FRETE_JADLOG_EXPRESS}               EXPRESS
    Should Contain      ${CUSTO_FRETE_EXPRESS}                ${JADLOG_EXPRESS}

    ${CONVERT} =        Convert To String           ${response.status_code}
    Should Contain    ${CONVERT}        200
    Log To Console    ${response.status_code}
    Log To Console    ${response.content}

 ENTÃO verifico o frete do produto Pastilha de Freio foi cálculado - SSR
    &{json_frete}                   Ssr Calculo Frete 3
    ${response}                     POST        ${HOST_CALC_FRETE}          json=${json_frete}
    ${CONVERT} =                    Convert To String    ${response.status_code}
    ${JSON_STATUS}                  Get Value From Json         ${response.json()}         $.message
    ${VALOR_FRETE}                  Get Value From Json         ${response.json()}         $.data.totalFrete
    ${VALOR_PRODUTOS}               Get Value From Json         ${response.json()}         $.data.totalProdutos
    ${TOTAL_FRETE_MAIS_PRODUTOS}    Get Value From Json         ${response.json()}         $.data.total

    ${valor1}           Convert To Number               37.23
    ${valor2}           Convert To Number               78.99
    ${valor3}           Convert To Number               116.22

    Should Contain      ${JSON_STATUS}                  SUCESSO: Na realização dos cálculos dos produtos.
    Should Contain      ${VALOR_FRETE}                  ${valor1}
    Should Contain      ${VALOR_PRODUTOS}               ${valor2}
    Should Contain      ${TOTAL_FRETE_MAIS_PRODUTOS}    ${valor3}

    ${CONVERT} =        Convert To String           ${response.status_code}
    Should Contain    ${CONVERT}        200
    Log To Console    ${response.status_code}
    Log To Console    ${response.content}

ENTÃO faça um pedido válido de Pastilha de Freio com Mastercard - SSR
    &{json_pedido}           Ssr Pedido Valido Master Card 2
    ${AUTHORIZATION_TOKEN}          Metodo Token Ssr
    ${TOKEN}=    Catenate    SEPARATOR=${EMPTY}    @{AUTHORIZATION_TOKEN}
    &{auth}             Create Dictionary           authorization=${TOKEN}
    ${response}         POST           ${HOST_PEDIDO}          json=${json_pedido}         headers=${auth}
    ${RESPOSTA}         Get Value From Json         ${response.json()}         $.message
    Should Contain      ${RESPOSTA}[0]           Pedido realizado com sucesso!
   
ENTÃO verifico o frete do produto Parafuso - SSR
    &{json_frete}           Ssr Verifica Frete 4
    ${response}                 POST        ${HOST_FRETE}          json=${json_frete}
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
    ${FRETE_CORREIOS_STAND}           Get Value From Json         ${response.json()}         $.data[0].frete[1].entrega_metodo_tipo
    ${CUSTO_CORREIOS_STAND}           Get Value From Json         ${response.json()}         $.data[0].frete[1].entrega_custo_final
    ${FRETE_CORREIOS_EXPRESS}         Get Value From Json         ${response.json()}         $.data[0].frete[2].entrega_metodo_tipo
    ${CUSTO_CORREIOS_EXPRESS}         Get Value From Json         ${response.json()}         $.data[0].frete[2].entrega_custo_final

    #retirar na loja
    Should Contain      ${JSON_STATUS}              Cotação de frete realizado.
    Should Contain      ${CEP_ORIGEM}               86020000
    Should Contain      ${CEP_DESTINO}              07929050
    Should Contain      ${PRODUTO_1_ID}             10200105
    Should Contain      ${FRETE_RETIRAR_LOJA}       Retirada Na Loja
    ${VALOR_ZERO}       Set Variable                0
    ${ZERO} =           Convert To Integer          ${VALOR_ZERO}
    Should Contain      ${CUSTO_RETIRAR_LOJA}       ${ZERO}

    #Correios
    Should Contain      ${CORREIOS_EMPRESA}         Correios       
    ${VALOR_FRETE_STAND}        Convert To Number           33.45
    ${VALOR_FRETE_EXPRESS}      Convert To Number           35.18

    #Stand
    Should Contain      ${FRETE_CORREIOS_STAND}           STANDARD
    Should Contain      ${CUSTO_CORREIOS_STAND}           ${VALOR_FRETE_STAND}  

    #Express
    Should Contain      ${FRETE_CORREIOS_EXPRESS}         EXPRESS
    Should Contain      ${CUSTO_CORREIOS_EXPRESS}         ${VALOR_FRETE_EXPRESS}

    # método de entrega Jadlog

    ${JADLOG_EMPRESA}               Get Value From Json         ${response.json()}         $.data[0].frete[3].empresa
    
    #stand
    ${FRETE_JADLOG_STAND}               Get Value From Json         ${response.json()}         $.data[0].frete[3].entrega_metodo_tipo
    ${VALOR_FRETE_STAND_JADLOG}         Get Value From Json         ${response.json()}         $.data[0].frete[3].entrega_custo_final
    ${JADLOG_STAND}        Convert To Number           22.94


    Should Contain      ${JADLOG_EMPRESA}               Jadlog
    Should Contain      ${FRETE_JADLOG_STAND}           STANDARD
    Should Contain      ${VALOR_FRETE_STAND_JADLOG}     ${JADLOG_STAND}

    #express
    ${FRETE_JADLOG_EXPRESS}             Get Value From Json         ${response.json()}         $.data[0].frete[4].entrega_metodo_tipo
    ${CUSTO_FRETE_EXPRESS}              Get Value From Json         ${response.json()}         $.data[0].frete[4].entrega_custo_final
    ${JADLOG_EXPRESS}        Convert To Number           22.81
    
    Should Contain      ${FRETE_JADLOG_EXPRESS}               EXPRESS
    Should Contain      ${CUSTO_FRETE_EXPRESS}                ${JADLOG_EXPRESS}

    ${CONVERT} =        Convert To String           ${response.status_code}
    Should Contain    ${CONVERT}        200
    Log To Console    ${response.status_code}
    Log To Console    ${response.content}

ENTÃO verifico o frete do produto Parafuso foi cálculado - SSR
    &{json_frete}                   Ssr Calculo Frete 4
    ${response}                     POST        ${HOST_CALC_FRETE}          json=${json_frete}
    ${CONVERT} =                    Convert To String    ${response.status_code}
    ${JSON_STATUS}                  Get Value From Json         ${response.json()}         $.message
    ${VALOR_FRETE}                  Get Value From Json         ${response.json()}         $.data.totalFrete
    ${VALOR_PRODUTOS}               Get Value From Json         ${response.json()}         $.data.totalProdutos
    ${TOTAL_FRETE_MAIS_PRODUTOS}    Get Value From Json         ${response.json()}         $.data.total

    ${valor1}           Convert To Number               22.94
    ${valor2}           Convert To Number               7.63
    ${valor3}           Convert To Number               30.57

    Should Contain      ${JSON_STATUS}                  SUCESSO: Na realização dos cálculos dos produtos.
    Should Contain      ${VALOR_FRETE}                  ${valor1}
    Should Contain      ${VALOR_PRODUTOS}               ${valor2}
    Should Contain      ${TOTAL_FRETE_MAIS_PRODUTOS}    ${valor3}

    ${CONVERT} =        Convert To String           ${response.status_code}
    Should Contain    ${CONVERT}        200
    Log To Console    ${response.status_code}
    Log To Console    ${response.content}

ENTÃO faça um pedido válido de Parafuso com Visa - SSR
    &{json_pedido}           Ssr Pedido Valido Visa 2
    ${AUTHORIZATION_TOKEN}          Metodo Token Ssr
    ${TOKEN}=    Catenate    SEPARATOR=${EMPTY}    @{AUTHORIZATION_TOKEN}
    &{auth}             Create Dictionary           authorization=${TOKEN}
    ${response}         POST           ${HOST_PEDIDO}          json=${json_pedido}         headers=${auth}
    ${RESPOSTA}         Get Value From Json         ${response.json()}         $.message
    Should Contain      ${RESPOSTA}[0]           Pedido realizado com sucesso!   

