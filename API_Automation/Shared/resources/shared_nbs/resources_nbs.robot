Documentation
... Suíte com recursos da NBS

*** Settings ***
Library     RequestsLibrary
Library     Collections
Library     ${EXECDIR}/API_Automation/Shared/resources/shared_nbs/parametros_nbs.py
Library     JSONLibrary

***Keywords***

DADO que eu me conecte ao WebService - NBS 
    Sleep           1

QUANDO realizer conexão com sucesso - NBS 
    Sleep           1

ENTÃO eu devo verificar o token - NBS
    &{token}           Nbs Token
    ${response}         POST        ${HOST}          json=${token}
    ${item}         Set Variable        ${response.json()}
    ${json_token}       Get Value From Json      ${response.json()}     $.data.token
    Log         ${json_token}[0]
    ${token}            Metodo Token Nbs        ${json_token}[0]
    ${CONVERT} =        Convert To String    ${response.status_code}
    Should Contain    ${CONVERT}        200
    Log To Console    ${response.status_code}
    Log To Console    ${response.content}

ENTÃO verifico se estou conectado - NBS  
    &{conexao_json}           Nbs Conexao
    ${response}         POST        ${HOST}          json=${conexao_json}
    ${item}         Set Variable        ${response.json()}
    ${CONVERT} =        Convert To String    ${response.status_code}
    Should Contain    ${CONVERT}        200
    Log To Console    ${response.status_code}
    Log To Console    ${response.content}

ENTÃO devo ativar os produtos - NBS
    &{produtos_json}           Nbs Ativar Produtos
    ${response}         POST        ${HOST}          json=${produtos_json}
    ${item}         Set Variable        ${response.json()}
    ${CONVERT} =        Convert To String    ${response.status_code}
    Should Contain    ${CONVERT}        200
    Log To Console    ${response.status_code}
    Log To Console    ${response.content}

ENTÃO verifico produtos na fila - NBS
    &{fila_json}           Nbs Buscar Produtos Fila
    ${response}         POST        ${HOST}          json=${fila_json}
    ${item}         Set Variable        ${response.json()}
    ${CONVERT} =        Convert To String    ${response.status_code}
    Should Contain    ${CONVERT}        200
    Log To Console    ${response.status_code}
    Log To Console    ${response.content}   

ENTÃO eu retiro produto da fila - NBS
    &{retirar_fila_json}           Nbs Retirar Produtos Da Fila
    ${response}         POST        ${HOST}          json=${retirar_fila_json}
    ${item}         Set Variable        ${response.json()}
    ${CONVERT} =        Convert To String    ${response.status_code}
    Should Contain    ${CONVERT}        200
    Log To Console    ${response.status_code}
    Log To Console    ${response.content}  

ENTÃO deve verificar se há pedidos - NBS
    &{pedidos_json}           Nbs Pedidos
    ${response}         POST        ${HOST}          json=${pedidos_json}
    ${item}         Set Variable        ${response.json()}
    ${CONVERT} =        Convert To String    ${response.status_code}
    Should Contain    ${CONVERT}        200
    Log To Console    ${response.status_code}
    Log To Console    ${response.content}    

ENTÃO verifico a nota fiscal do pedido - NBS
    &{nf_json}           Nbs Nota Fiscal
    ${response}         POST        ${HOST}          json=${nf_json}
    ${CONVERT} =        Convert To String    ${response.status_code}
    Should Contain    ${CONVERT}        200
    Log To Console    ${response.status_code}
    Log To Console    ${response.content} 

