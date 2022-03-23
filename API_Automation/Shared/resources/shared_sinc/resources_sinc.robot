Documentation
... Suíte com recursos da SINC

*** Settings ***
Library     RequestsLibrary
Library     Collections
Library     ${EXECDIR}/API_Automation/Shared/resources/shared_sinc/parametros_sinc.py
Library     JSONLibrary

***Keywords***
DADO que eu me conecte ao WebService - SINC
    Sleep             1 

QUANDO realizer conexão com sucesso - SINC
    Sleep             1

ENTÃO devo limpar a fila de itens - SINC
    &{retiro_produtos_json}           Sinc Retirar 15 Produtos Da Fila
    ${response}         POST        ${HOST}          json=${retiro_produtos_json}       

ENTÃO verifico se estou conectado - SINC
    &{conexao_json}           Sinc Conexao
    ${response}         POST        ${HOST}          json=${conexao_json}
    ${CONVERT} =        Convert To String    ${response.status_code}
    Should Contain    ${CONVERT}        200
    Log To Console    ${response.status_code}
    Log To Console    ${response.content}    

ENTÃO eu devo verificar o token - SINC
    &{token_json}           Sinc Token
    ${response}         POST        ${HOST}          json=${token_json}
    ${CONVERT} =        Convert To String    ${response.status_code}
    Should Contain    ${CONVERT}        200
    Log To Console    ${response.status_code}
    Log To Console    ${response.content}

ENTÃO devo ativar os produtos - SINC
    &{produtos_json}           Sinc Ativar Produtos
    ${response}         POST        ${HOST}          json=${produtos_json}
    ${CONVERT} =        Convert To String    ${response.status_code}
    Should Contain    ${CONVERT}        200
    Log To Console    ${response.status_code}
    Log To Console    ${response.content}   

ENTÃO verifico se há produtos na fila - SINC
    &{produtos_fila_json}           Sinc Buscar Produtos Na Fila
    ${response}         POST        ${HOST}          json=${produtos_fila_json}
    ${CONVERT} =        Convert To String    ${response.status_code}
    Should Contain    ${CONVERT}        200
    Log To Console    ${response.status_code}
    Log To Console    ${response.content}     

ENTÃO devo ativar dois produtos - SINC
    &{produtos_json}           Sinc Ativar 2 Produtos
    ${response}         POST        ${HOST}          json=${produtos_json}
    ${item}         Set Variable        ${response.json()}
    ${CONVERT} =        Convert To String    ${response.status_code}
    Should Contain    ${CONVERT}        200
    Log To Console    ${response.status_code}
    Log To Console    ${response.content}

ENTÃO eu retiro os produtos da fila - SINC
    &{retiro_produtos_json}           Sinc Retirar 2 Produtos Da Fila
    ${response}         POST        ${HOST}          json=${retiro_produtos_json}    

ENTÃO se não há produtos na fila - SINC
    &{buscar_produtos_json}           Sinc Buscar Produtos Na Fila
    ${response}         POST        ${HOST}          json=${buscar_produtos_json}        expected_status=404
    ${resposta}      Get Value From Json         ${response.json()}         $.message
    Should Contain      ${resposta}             Nenhum produto na fila. 

ENTÃO deve verificar se há pedidos - SINC
    &{pedidos_json}           Sinc Pedidos
    ${response}         POST        ${HOST}          json=${pedidos_json}
    ${CONVERT} =        Convert To String    ${response.status_code}
    Should Contain    ${CONVERT}        200
    Log To Console    ${response.status_code}
    Log To Console    ${response.content}     

ENTÃO verifico a nota fiscal do pedido - SINC
    &{nf_json}           Sinc Nota Fiscal
    ${response}         POST        ${HOST}          json=${nf_json}
    ${CONVERT} =        Convert To String    ${response.status_code}
    Should Contain    ${CONVERT}        200
    Log To Console    ${response.status_code}
    Log To Console    ${response.content} 





