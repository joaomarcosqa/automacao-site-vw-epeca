Documentation
... Suíte com recursos da NBS_NASA

*** Settings ***
Library     RequestsLibrary
Library     Collections
Library     ${EXECDIR}/API_Automation/Shared/resources/shared_nbs_nasa/parametros_nbs_nasa.py
Library     JSONLibrary                

***Keywords***
DADO que eu me conecte ao WebService - NBS_NASA
    Sleep           1

QUANDO realizer conexão com sucesso - NBS_NASA
    Sleep           1

ENTÃO eu devo verificar o token - NBS_NASA
    &{token}           Nbs Nasa Token
    ${response}         POST        ${HOST}          json=${token}
    ${item}         Set Variable        ${response.json()}
    ${CONVERT} =        Convert To String    ${response.status_code}
    Should Contain    ${CONVERT}        200
    Log To Console    ${response.status_code}
    Log To Console    ${response.content}

ENTÃO verifico se estou conectado - NBS_NASA
    &{conexao_json}           Nbs Nasa Conexao
    ${response}         POST        ${HOST}          json=${conexao_json}
    ${item}         Set Variable        ${response.json()}
    ${CONVERT} =        Convert To String    ${response.status_code}
    Should Contain    ${CONVERT}        200
    Log To Console    ${response.status_code}
    Log To Console    ${response.content}

ENTÃO devo ativar os 10 produtos - NBS_NASA 
    &{produtos_json}           Nbs Nasa Ativar 10 Produtos
    ${response}         POST        ${HOST}          json=${produtos_json}
    ${item}         Set Variable        ${response.json()}
    ${CONVERT} =        Convert To String    ${response.status_code}
    Should Contain    ${CONVERT}        200
    Log To Console    ${response.status_code}
    Log To Console    ${response.content}

ENTÃO devo ativar os 5 produtos - NBS_NASA 
    &{produtos_json}           Nbs Nasa Ativar 5 Produtos
    ${response}         POST        ${HOST}          json=${produtos_json}
    ${item}         Set Variable        ${response.json()}
    ${CONVERT} =        Convert To String    ${response.status_code}
    Should Contain    ${CONVERT}        200
    Log To Console    ${response.status_code}
    Log To Console    ${response.content}

ENTÃO verifico produtos na fila - NBS_NASA 
    &{fila_json}           Nbs Nasa Buscar Produtos Fila
    ${response}         POST        ${HOST}          json=${fila_json}
    ${item}         Set Variable        ${response.json()}
    ${CONVERT} =        Convert To String    ${response.status_code}
    Should Contain    ${CONVERT}        200
    Log To Console    ${response.status_code}
    Log To Console    ${response.content}   

ENTÃO eu retiro 5 produtos da fila - NBS_NASA
    &{retirar_fila_json}           Nbs Nasa Retirar 5 Produtos Da Fila
    ${response}         POST        ${HOST}          json=${retirar_fila_json}
    ${item}         Set Variable        ${response.json()}
    ${CONVERT} =        Convert To String    ${response.status_code}
    Should Contain    ${CONVERT}        200
    Log To Console    ${response.status_code}
    Log To Console    ${response.content}

ENTÃO eu retiro 10 produtos da fila - NBS_NASA 
    &{retirar_fila_json}           Nbs Nasa Retirar 10 Produtos Da Fila
    ${response}         POST        ${HOST}          json=${retirar_fila_json}
    ${item}         Set Variable        ${response.json()}
    ${CONVERT} =        Convert To String    ${response.status_code}
    Should Contain    ${CONVERT}        200
    Log To Console    ${response.status_code}
    Log To Console    ${response.content}

ENTÃO deve verificar se há pedidos - NBS_NASA 
    &{pedidos_json}           Nbs Nasa Pedidos
    ${response}         POST        ${HOST}          json=${pedidos_json}
    ${item}         Set Variable        ${response.json()}
    ${CONVERT} =        Convert To String    ${response.status_code}
    Should Contain    ${CONVERT}        200
    Log To Console    ${response.status_code}
    Log To Console    ${response.content}    

ENTÃO verifico a nota fiscal do pedido - NBS_NASA 
    &{nf_json}           Nbs Nasa Nota Fiscal
    ${response}         POST        ${HOST}          json=${nf_json}
    ${CONVERT} =        Convert To String    ${response.status_code}
    Should Contain    ${CONVERT}        200
    Log To Console    ${response.status_code}
    Log To Console    ${response.content} 

ENTÃO verifico se não há produtos na fila - NBS_NASA
    &{buscar_produtos_json}           Nbs Nasa Buscar Produtos Fila
    ${response}         POST        ${HOST}          json=${buscar_produtos_json}
    ${VAZIO}            Create List      
    ${RESPOSTA}         Set Variable        ${response.json()}
    Lists Should Be Equal      ${RESPOSTA}         ${VAZIO}

ENTÃO verifico se há 5 produtos na fila - NBS_NASA
    &{buscar_produtos_json}           Nbs Nasa Buscar Produtos Fila
    ${response}         POST        ${HOST}          json=${buscar_produtos_json}
    ${prod1}       Get Value From Json         ${response.json()}         $[0].produtoId        
    ${prod2}       Get Value From Json         ${response.json()}         $[1].produtoId
    ${prod3}       Get Value From Json         ${response.json()}         $[2].produtoId
    ${prod4}       Get Value From Json         ${response.json()}         $[3].produtoId
    ${prod5}       Get Value From Json         ${response.json()}         $[4].produtoId

    Should Contain      ${prod1}              JZZ129620B
    Should Contain      ${prod2}              JZW615301H
    Should Contain      ${prod3}              JZW698151AC
    Should Contain      ${prod4}              JZW698451A
    Should Contain      ${prod5}              JZW998002

ENTÃO devo limpar a fila de itens - NBS_NASA
    &{retirar_fila_json}           Nbs Nasa Limpar Fila
    ${response}         POST        ${HOST}          json=${retirar_fila_json}
    ${CONVERT} =        Convert To String    ${response.status_code}
    Should Contain    ${CONVERT}        200
    Log To Console    ${response.status_code}
    Log To Console    ${response.content} 

ENTÃO devo ativar os 2 produtos - NBS_NASA
    &{produtos_json}           Nbs Nasa Ativar 2 Produtos
    ${response}         POST        ${HOST}          json=${produtos_json}
    ${item}         Set Variable        ${response.json()}
    ${CONVERT} =        Convert To String    ${response.status_code}
    Should Contain    ${CONVERT}        200
    Log To Console    ${response.status_code}
    Log To Console    ${response.content}

ENTÃO eu retiro um produtos da fila - NBS_NASA
    &{retirar_fila_json}           Nbs Nasa Retirar 1 Produto Da Fila
    ${response}         POST        ${HOST}          json=${retirar_fila_json}
    ${item}         Set Variable        ${response.json()}
    ${CONVERT} =        Convert To String    ${response.status_code}
    Should Contain    ${CONVERT}        200
    Log To Console    ${response.status_code}
    Log To Console    ${response.content}

ENTÃO verifico se há um produtos na fila - NBS_NASA
    &{buscar_produtos_json}           Nbs Nasa Buscar Produtos Fila
    ${response}         POST        ${HOST}          json=${buscar_produtos_json}
    ${prod1}       Get Value From Json         ${response.json()}         $[0].produtoId    

    Should Contain      ${prod1}              JZZ698302B