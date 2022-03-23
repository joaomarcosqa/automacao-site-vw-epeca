Documentation
... Suíte com recursos da SERCON

*** Settings ***
Library     RequestsLibrary
Library     Collections
Library     ${EXECDIR}/API_Automation/Shared/resources/shared_sercon/parametros_sercon.py
Library     JSONLibrary

***Keywords***

DADO que eu me conecte ao WebService - SERCON 
    Sleep             1 

QUANDO realizer conexão com sucesso - SERCON 
    Sleep             1

ENTÃO devo limpar a fila de itens - SERCON 
    &{retiro_produtos_json}           Sercon Retirar 15 Produtos Da Fila
    ${response}         POST        ${HOST}          json=${retiro_produtos_json}    

ENTÃO verifico se estou conectado - SERCON 
    &{conexao_json}           Sercon Conexao
    ${response}         POST        ${HOST}          json=${conexao_json}
    ${item}         Set Variable        ${response.json()}
    ${CONVERT} =        Convert To String    ${response.status_code}
    Should Contain    ${CONVERT}        200
    Log To Console    ${response.status_code}
    Log To Console    ${response.content}

ENTÃO eu devo verificar o token - SERCON 
    &{token_json}           Sercon Token
    ${response}         POST        ${HOST}          json=${token_json}
    ${item}         Set Variable        ${response.json()}
    ${CONVERT} =        Convert To String    ${response.status_code}
    Should Contain    ${CONVERT}        200
    Log To Console    ${response.status_code}
    Log To Console    ${response.content}

ENTÃO devo ativar dois produtos - SERCON
    &{produtos_json}           Sercon Ativar 2 Produtos
    ${response}         POST        ${HOST}          json=${produtos_json}
    ${item}         Set Variable        ${response.json()}
    ${CONVERT} =        Convert To String    ${response.status_code}
    Should Contain    ${CONVERT}        200
    Log To Console    ${response.status_code}
    Log To Console    ${response.content}

ENTÃO devo ativar cinco produtos - SERCON
    &{produtos_json}           Sercon Ativar 5 Produtos
    ${response}         POST        ${HOST}          json=${produtos_json}
    ${item}         Set Variable        ${response.json()}
    ${CONVERT} =        Convert To String    ${response.status_code}
    Should Contain    ${CONVERT}        200
    Log To Console    ${response.status_code}
    Log To Console    ${response.content}

ENTÃO verifico se há os produtos na fila - SERCON
    &{buscar_produtos_json}           Sercon Buscar Produtos Na Fila
    ${response}         POST        ${HOST}          json=${buscar_produtos_json}       expected_status=200
    ${Produto1}          Get Value From Json         ${response.json()}         $[0].produtoId
    ${Produto2}          Get Value From Json         ${response.json()}         $[1].produtoId
    ${Produto3}          Get Value From Json         ${response.json()}         $[2].produtoId
    ${Produto4}          Get Value From Json         ${response.json()}         $[3].produtoId
    ${Produto5}          Get Value From Json         ${response.json()}         $[4].produtoId

    Should Contain      ${Produto1}             030109119AB
    Should Contain      ${Produto2}             5U0035849C
    Should Contain      ${Produto3}             JZW698451
    Should Contain      ${Produto4}             JZW698451A
    Should Contain      ${Produto5}             GJZW012R2

ENTÃO verifico se há produtos na fila - SERCON
    &{buscar_produtos_json}           Sercon Buscar Produtos Na Fila
    ${response}         POST        ${HOST}          json=${buscar_produtos_json}       expected_status=200
    ${Produto1}          Get Value From Json         ${response.json()}         $[0].produtoId
    ${Produto2}          Get Value From Json         ${response.json()}         $[1].produtoId

    Should Contain      ${Produto1}             030109119AB
    Should Contain      ${Produto2}             JZW698451

ENTÃO verifico se há quinze produtos na fila - SERCON
    &{buscar_produtos_json}           Sercon Buscar Produtos Na Fila
    ${response}         POST        ${HOST}          json=${buscar_produtos_json}       expected_status=200
    ${Produto1}          Get Value From Json         ${response.json()}         $[0].produtoId
    ${Produto2}          Get Value From Json         ${response.json()}         $[1].produtoId
    ${Produto3}          Get Value From Json         ${response.json()}         $[2].produtoId
    ${Produto4}          Get Value From Json         ${response.json()}         $[3].produtoId
    ${Produto5}          Get Value From Json         ${response.json()}         $[4].produtoId
    ${Produto6}          Get Value From Json         ${response.json()}         $[5].produtoId
    ${Produto7}          Get Value From Json         ${response.json()}         $[6].produtoId
    ${Produto8}          Get Value From Json         ${response.json()}         $[7].produtoId
    ${Produto9}          Get Value From Json         ${response.json()}         $[8].produtoId
    ${Produto10}          Get Value From Json         ${response.json()}         $[9].produtoId
    ${Produto11}          Get Value From Json         ${response.json()}         $[10].produtoId
    ${Produto12}          Get Value From Json         ${response.json()}         $[11].produtoId
    ${Produto13}          Get Value From Json         ${response.json()}         $[12].produtoId
    ${Produto14}          Get Value From Json         ${response.json()}         $[13].produtoId
    ${Produto15}          Get Value From Json         ${response.json()}         $[14].produtoId

    Should Contain      ${Produto1}             030109119AB
    Should Contain      ${Produto2}             5U0035849C
    Should Contain      ${Produto3}             JZW698451
    Should Contain      ${Produto4}             JZW698451A
    Should Contain      ${Produto5}             GJZW012R2
    Should Contain      ${Produto6}             JZW615301
    Should Contain      ${Produto7}             JZZ129620C
    Should Contain      ${Produto8}             JZZ998002
    Should Contain      ${Produto9}             JZW413031A
    Should Contain      ${Produto10}            JZW998002K
    Should Contain      ${Produto11}            JZW698451C
    Should Contain      ${Produto12}            JZW698151AC
    Should Contain      ${Produto13}            JZW201511
    Should Contain      ${Produto14}            JZZ698151AA
    Should Contain      ${Produto15}            JZW998002Q
    

ENTÃO eu retiro os produtos da fila - SERCON
    &{retiro_produtos_json}           Sercon Retirar 2 Produtos Da Fila
    ${response}         POST        ${HOST}          json=${retiro_produtos_json}          

ENTÃO se não há produtos na fila - SERCON
    &{buscar_produtos_json}           Sercon Buscar Produtos Na Fila
    ${response}         POST        ${HOST}          json=${buscar_produtos_json}        expected_status=404
    ${resposta}      Get Value From Json         ${response.json()}         $.message
    Should Contain      ${resposta}             Nenhum produto na fila.       

ENTÃO eu retiro um produto da fila - SERCON
    &{retiro_produtos_json}           Sercon Retirar 1 Produtos Da Fila
    ${response}         POST        ${HOST}          json=${retiro_produtos_json}

ENTÃO eu retiro quatro produtos da fila - SERCON
    &{retiro_produtos_json}           Sercon Retirar 4 Produtos Da Fila
    ${response}         POST        ${HOST}          json=${retiro_produtos_json}

ENTÃO verifico o produto que está na fila - SERCON
    &{buscar_produtos_json}           Sercon Buscar Produtos Na Fila
    ${response}         POST        ${HOST}          json=${buscar_produtos_json}        expected_status=200
    ${resposta}      Get Value From Json         ${response.json()}         $[0].produtoId
    Should Contain      ${resposta}             JZW698451    

ENTÃO devo ativar os quize produtos - SERCON
    &{produtos_json}           Sercon Ativar 15 Produtos
    ${response}         POST        ${HOST}          json=${produtos_json}
    ${item}         Set Variable        ${response.json()}
    ${CONVERT} =        Convert To String    ${response.status_code}
    Should Contain    ${CONVERT}        200
    Log To Console    ${response.status_code}
    Log To Console    ${response.content}

ENTÃO eu retiro quinze produtos da fila - SERCON
    &{retiro_produtos_json}           Sercon Retirar 15 Produtos Da Fila
    ${response}         POST        ${HOST}          json=${retiro_produtos_json}

ENTÃO eu retiro dez produtos da fila - SERCON
    &{retiro_produtos_json}           Sercon Retirar 10 Produtos Da Fila
    ${response}         POST        ${HOST}          json=${retiro_produtos_json}

ENTÃO verifico se há um produto na fila - SERCON
    &{buscar_produtos_json}           Sercon Buscar Produtos Na Fila
    ${response}         POST        ${HOST}          json=${buscar_produtos_json}        expected_status=200
    Sleep               2
    ${valor1}       Get Value From Json         ${response.json()}         $[0].produtoId  
    Should Contain      ${valor1}              GJZW012R2

ENTÃO verifico os itens que estão na fila - SERCON
    &{buscar_produtos_json}           Sercon Buscar Produtos Na Fila
    ${response}         POST        ${HOST}          json=${buscar_produtos_json}        expected_status=200
    ${valor1}       Get Value From Json         ${response.json()}         $[0].produtoId       
    ${valor2}       Get Value From Json         ${response.json()}         $[1].produtoId     
    ${valor3}       Get Value From Json         ${response.json()}         $[2].produtoId       
    ${valor4}       Get Value From Json         ${response.json()}         $[3].produtoId      
    ${valor5}       Get Value From Json         ${response.json()}         $[4].produtoId       

    Should Contain      ${valor1}              JZW998002K       
    Should Contain      ${valor2}              JZW698151AC       
    Should Contain      ${valor3}              JZW201511      
    Should Contain      ${valor4}              JZZ698151AA      
    Should Contain      ${valor5}              JZW998002Q      

ENTÃO deve verificar se há pedidos - SERCON
    &{pedidos_json}           Sercon Pedidos
    ${response}         POST        ${HOST}          json=${pedidos_json}
    ${item}         Set Variable        ${response.json()}
    ${CONVERT} =        Convert To String    ${response.status_code}
    Should Contain    ${CONVERT}        200
    Log To Console    ${response.status_code}
    Log To Console    ${response.content}

ENTÃO verifico a nota fiscal do pedido - SERCON
    &{nf_json}           Sercon Nota Fiscal
    ${response}         POST        ${HOST}          json=${nf_json}
    ${CONVERT} =        Convert To String    ${response.status_code}
    Should Contain    ${CONVERT}        200
    Log To Console    ${response.status_code}
    Log To Console    ${response.content}