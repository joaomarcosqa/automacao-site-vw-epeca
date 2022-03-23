Documentation
... Suíte com recursos da DEALERNET

*** Settings ***
Library     RequestsLibrary
Library     Collections
Library     ${EXECDIR}/API_Automation/Shared/resources/shared_dealernet/parametros_dealernet.py
Library     JSONLibrary

***Keywords***

DADO que eu me conecte ao WebService - DEALERNET
    Sleep             1 

QUANDO realizer conexão com sucesso - DEALERNET
    Sleep             1

ENTÃO verifico se estou conectado - DEALERNET
    &{conexao_json}           Dealernet Token
    ${response}         POST        ${HOST}          json=${conexao_json}
    ${item}         Set Variable        ${response.json()}
    ${CONVERT} =        Convert To String    ${response.status_code}
    Should Contain    ${CONVERT}        200
    Log To Console    ${response.status_code}
    Log To Console    ${response.content}

ENTÃO eu verifico se há conexão - DEALERNET
    &{conexao_json}           Dealernet Conexao
    ${response}         POST        ${HOST}          json=${conexao_json}
    ${item}         Set Variable        ${response.json()}
    ${CONVERT} =        Convert To String    ${response.status_code}
    Should Contain    ${CONVERT}        200
    Log To Console    ${response.status_code}
    Log To Console    ${response.content}   

ENTÃO eu ativo o produto - DEALERNET
    &{conexao_json}           Dealernet Ativar Produto
    ${response}         POST        ${HOST}          json=${conexao_json}
    ${item}         Set Variable        ${response.json()}
    ${CONVERT} =        Convert To String    ${response.status_code}
    Should Contain    ${CONVERT}        200
    Log To Console    ${response.status_code}
    Log To Console    ${response.content}

ENTÃO verifico se há produtos na fila - DEALERNET
    &{fila_json}           Dealernet Buscar Produtos Na Fila
    ${response}         POST        ${HOST}          json=${fila_json}
    ${item}         Set Variable        ${response.json()}
    ${CONVERT} =        Convert To String    ${response.status_code}
    Should Contain    ${CONVERT}        200
    Log To Console    ${response.status_code}
    Log To Console    ${response.content}

ENTÃO devo retirar os produtos da fila - DEALERNET
    &{fila_json}           Dealernet Retirar Produtos Da Fila
    ${response}         POST        ${HOST}          json=${fila_json}
    ${item}         Set Variable        ${response.json()}
    ${CONVERT} =        Convert To String    ${response.status_code}
    Should Contain    ${CONVERT}        200
    Log To Console    ${response.status_code}
    Log To Console    ${response.content}

ENTÃO deve verificar se há pedidos - DEALERNET
    &{pedidos_json}           Dealernet Pedidos
    ${response}         POST        ${HOST}          json=${pedidos_json}
    ${item}         Set Variable        ${response.json()}
    ${CONVERT} =        Convert To String    ${response.status_code}
    Should Contain    ${CONVERT}        200
    Log To Console    ${response.status_code}
    Log To Console    ${response.content}  

ENTÃO deve verificar se há pedidos string - DEALERNET
    &{pedidos_string_json}           Dealernet Pedidos String
    ${response}         POST        ${HOST}          json=${pedidos_string_json}
    ${item}         Set Variable        ${response.json()}
    ${CONVERT} =        Convert To String    ${response.status_code}
    Should Contain    ${CONVERT}        200
    Log To Console    ${response.status_code}
    Log To Console    ${response.content}  











