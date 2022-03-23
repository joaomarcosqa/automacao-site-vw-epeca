Documentation
... Suíte com recursos da SERCON_DISTAC

*** Settings ***
Library     RequestsLibrary
Library     Collections
Library     ${EXECDIR}/API_Automation/Shared/resources/shared_sercon_distac/parametros_sercon_distac.py
Library     JSONLibrary

***Keywords***
DADO que eu me conecte ao WebService - SERCON_DISTAC
    Sleep             1 

QUANDO realizer conexão com sucesso - SERCON_DISTAC
    Sleep             1

ENTÃO devo limpar a fila de itens - SERCON_DISTAC
    &{retiro_produtos_json}           Sercon Distac Retirar Produtos Da Fila
    ${response}         POST        ${HOST}          json=${retiro_produtos_json}

ENTÃO verifico se estou conectado - SERCON_DISTAC
    &{conexao_json}           Sercon Distac Conexao
    ${response}         POST        ${HOST}          json=${conexao_json}
    ${item}         Set Variable        ${response.json()}
    ${CONVERT} =        Convert To String    ${response.status_code}
    Should Contain    ${CONVERT}        200
    Log To Console    ${response.status_code}
    Log To Console    ${response.content}

ENTÃO eu devo verificar o token - SERCON_DISTAC
    &{token_json}           Sercon Distac Token
    ${response}         POST        ${HOST}          json=${token_json}
    ${item}         Set Variable        ${response.json()}
    ${CONVERT} =        Convert To String    ${response.status_code}
    Should Contain    ${CONVERT}        200
    Log To Console    ${response.status_code}
    Log To Console    ${response.content}

ENTÃO devo ativar dois produtos - SERCON_DISTAC
    &{produtos_json}           Sercon Distac Ativar 2 Produtos
    ${response}         POST        ${HOST}          json=${produtos_json}
    ${item}         Set Variable        ${response.json()}
    ${CONVERT} =        Convert To String    ${response.status_code}
    Should Contain    ${CONVERT}        200
    Log To Console    ${response.status_code}
    Log To Console    ${response.content}

ENTÃO verifico se há produtos na fila - SERCON_DISTAC
    &{buscar_produtos_json}           Sercon Distac Buscar Produtos Na Fila
    ${response}         POST        ${HOST}          json=${buscar_produtos_json}       expected_status=404
    ${item}         Set Variable        ${response.json()}
    ${CONVERT} =        Convert To String    ${response.status_code}
    Should Contain    ${CONVERT}        404
    Log To Console    ${response.status_code}
    Log To Console    ${response.content}

ENTÃO eu retiro os produtos da fila - SERCON_DISTAC
    &{retiro_produtos_json}           Sercon Distac Retirar 2 Produtos Da Fila
    ${response}         POST        ${HOST}          json=${retiro_produtos_json}       expected_status=204

ENTÃO verifico se não há produtos na fila - SERCON_DISTAC
    &{buscar_produtos_json}           Sercon Distac Buscar Produtos Na Fila
    ${response}         POST        ${HOST}          json=${buscar_produtos_json}        expected_status=404
    ${resposta}      Get Value From Json         ${response.json()}         $.message
    Should Contain      ${resposta}             Nenhum produto na fila.

ENTÃO eu retiro um produto da fila - SERCON_DISTAC
    &{retiro_produtos_json}           Sercon Distac Retirar 1 Produto Da Fila
    ${response}         POST        ${HOST}          json=${retiro_produtos_json}       expected_status=404

ENTÃO verifico o produto que está na fila - SERCON_DISTAC
    &{buscar_produtos_json}           Sercon Distac Buscar Produtos Na Fila
    ${response}         POST        ${HOST}          json=${buscar_produtos_json}        expected_status=404
    Sleep               2
    ${valor1}       Get Value From Json         ${response.json()}         $[0].produtoId
    Should Contain      ${valor1}               5U0035849C
    Log     ${response.status_code}
    
ENTÃO devo ativar os cinco produtos - SERCON_DISTAC
    &{produtos_json}           Sercon Distac Ativar 5 Produtos
    ${response}         POST        ${HOST}          json=${produtos_json}
    ${item}         Set Variable        ${response.json()}
    ${CONVERT} =        Convert To String    ${response.status_code}
    Should Contain    ${CONVERT}        200
    Log To Console    ${response.status_code}
    Log To Console    ${response.content}

ENTÃO eu retiro três produtos da fila - SERCON_DISTAC
    &{retiro_produtos_json}           Sercon Distac Retirar 3 Produtos Da Fila
    ${response}         POST        ${HOST}          json=${retiro_produtos_json}       expected_status=204

ENTÃO se há 2 produtos na fila - SERCON_DISTAC
    &{buscar_produtos_json}           Sercon Distac Buscar Produtos Na Fila
    ${response}         POST        ${HOST}          json=${buscar_produtos_json}        expected_status=404
    Sleep               2
    ${valor1}       Get Value From Json         ${response.json()}         $[0].produtoId
    ${valor2}       Get Value From Json         ${response.json()}         $[1].produtoId
    Should Contain      ${valor1}               JZW698451A
    Should Contain      ${valor2}               GJZW012R2

ENTÃO eu retiro cinco produtos da fila - SERCON_DISTAC
    &{retiro_produtos_json}           Sercon Distac Retirar Produtos Da Fila
    ${response}         POST        ${HOST}          json=${retiro_produtos_json}       expected_status=204

ENTÃO devo verificar se há pedidos - SERCON_DISTAC
    &{pedidos_json}           Sercon Distac Pedido
    ${response}         POST        ${HOST}          json=${pedidos_json}
    ${item}         Set Variable        ${response.json()}
    ${CONVERT} =        Convert To String    ${response.status_code}
    Should Contain    ${CONVERT}        200
    Log To Console    ${response.status_code}
    Log To Console    ${response.content}

ENTÃO verifico a nota fiscal do pedido - SERCON_DISTAC
    &{nf_json}           Sercon Distac Nota Fiscal
    ${response}         POST        ${HOST}          json=${nf_json}
    ${CONVERT} =        Convert To String    ${response.status_code}
    Should Contain    ${CONVERT}        200
    Log To Console    ${response.status_code}
    Log To Console    ${response.content}
