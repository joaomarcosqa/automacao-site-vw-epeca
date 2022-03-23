Documentation
... Suíte com recursos de sistema

*** Settings ***
Library     RequestsLibrary
Library     Collections
Library     ${EXECDIR}/API_Automation/Shared/resources/parametros.py
Library     JSONLibrary

***Keywords***
DADO que eu me conecte ao WebService
    Sleep             1 

QUANDO realizer conexão com sucesso
    Sleep             1

ENTÃO verifico se estou conectado    
    &{conexao_json}           Sercon Conexao
    ${response}         POST        ${HOST}          json=${conexao_json}
    ${item}         Set Variable        ${response.json()}
    ${CONVERT} =        Convert To String    ${response.status_code}
    Should Contain    ${CONVERT}        200
    Log To Console    ${response.status_code}
    Log To Console    ${response.content}

ENTÃO eu devo verificar o token
    &{token_json}           Sercon Token
    ${response}         POST        ${HOST}          json=${token_json}
    ${item}         Set Variable        ${response.json()}
    ${CONVERT} =        Convert To String    ${response.status_code}
    Should Contain    ${CONVERT}        200
    Log To Console    ${response.status_code}
    Log To Console    ${response.content}

ENTÃO devo ativar os produtos
    &{produtos_json}           Sercon Ativar 2 Produtos
    ${response}         POST        ${HOST}          json=${produtos_json}
    ${item}         Set Variable        ${response.json()}
    ${CONVERT} =        Convert To String    ${response.status_code}
    Should Contain    ${CONVERT}        200
    Log To Console    ${response.status_code}
    Log To Console    ${response.content}

ENTÃO devo ativar os dois produtos
    &{produtos_json}           Sercon Ativar 2 Produtos
    ${response}         POST        ${HOST}          json=${produtos_json}
    ${item}         Set Variable        ${response.json()}
    ${CONVERT} =        Convert To String    ${response.status_code}
    Should Contain    ${CONVERT}        200
    Log To Console    ${response.status_code}
    Log To Console    ${response.content}

ENTÃO devo ativar os quize produtos
    &{produtos_json}           Sercon Ativar 15 Produtos
    ${response}         POST        ${HOST}          json=${produtos_json}
    ${item}         Set Variable        ${response.json()}
    ${CONVERT} =        Convert To String    ${response.status_code}
    Should Contain    ${CONVERT}        200
    Log To Console    ${response.status_code}
    Log To Console    ${response.content}

ENTÃO verifico produtos na fila
    &{buscar_produtos_json}           Sercon Buscar Produtos Na Fila
    ${response}         POST        ${HOST}          json=${buscar_produtos_json}
    # ${item}         Set Variable        ${response.json()}  
    # ${CONVERT} =        Convert To String    ${response.status_code}
    # Should Contain    ${CONVERT}        200
    # Log To Console    ${response.status_code}
    # Log To Console    ${response.content}

ENTÃO se não há produtos na fila
    &{buscar_produtos_json}           Sercon Buscar Produtos Na Fila
    ${response}         POST        ${HOST}          json=${buscar_produtos_json}        expected_status=404
    ${resposta}      Get Value From Json         ${response.json()}         $.message
    Should Contain      ${resposta}             Nenhum produto na fila.   

ENTÃO verifico o produto que está na fila
    &{buscar_produtos_json}           Sercon Buscar Produtos Na Fila
    ${response}         POST        ${HOST}          json=${buscar_produtos_json}        expected_status=200
    ${resposta}      Get Value From Json         ${response.json()}         $[0].produtoId
    Should Contain      ${resposta}             JZW698451

ENTÃO verifico os itens que estão na fila
    &{buscar_produtos_json}           Sercon Buscar Produtos Na Fila
    ${response}         POST        ${HOST}          json=${buscar_produtos_json}        expected_status=200
    ${valor1}       Get Value From Json         ${response.json()}         $[0].produtoId        #colocar a referência do código do produto 1
    ${valor2}       Get Value From Json         ${response.json()}         $[1].produtoId        #colocar a referência do código do produto 2
    ${valor3}       Get Value From Json         ${response.json()}         $[2].produtoId        #colocar a referência do código do produto 3
    ${valor4}       Get Value From Json         ${response.json()}         $[3].produtoId        #colocar a referência do código do produto 4
    ${valor5}       Get Value From Json         ${response.json()}         $[4].produtoId        #colocar a referência do código do produto 5
  
    Should Contain      ${valor1}              030109119AB       # codigo do produto que ainda está na fila
    Should Contain      ${valor2}              5U0035849C       # codigo do produto que ainda está na fila
    Should Contain      ${valor3}              JZW698451       # codigo do produto que ainda está na fila
    Should Contain      ${valor4}              JZW698451A       # codigo do produto que ainda está na fila
    Should Contain      ${valor5}              GJZW012R2       # codigo do produto que ainda está na fila

ENTÃO eu retiro produto da fila
    &{retiro_produtos_json}           Sercon Retirar 2 Produtos Da Fila
    ${response}         POST        ${HOST}          json=${retiro_produtos_json}
    # ${item}         Set Variable        ${response.json()}
    # ${CONVERT} =        Convert To String    ${response.status_code}
    # Should Contain    ${CONVERT}        204
    # Log To Console    ${response.status_code}
    # Log To Console    ${response.content}

ENTÃO eu retiro um produto da fila
    &{retiro_produtos_json}           Sercon Retirar 1 Produtos Da Fila
    ${response}         POST        ${HOST}          json=${retiro_produtos_json}

ENTÃO eu retiro quinze produtos da fila
    &{retiro_produtos_json}           Sercon Retirar 15 Produtos Da Fila
    ${response}         POST        ${HOST}          json=${retiro_produtos_json}

ENTÃO eu retiro dez produtos da fila
    &{retiro_produtos_json}           Sercon Retirar 10 Produtos Da Fila
    ${response}         POST        ${HOST}          json=${retiro_produtos_json}

ENTÃO fazer pedido
    &{pedidos_json}           Sercon Pedidos
    ${response}         POST        ${HOST}          json=${pedidos_json}
    ${item}         Set Variable        ${response.json()}
    ${CONVERT} =        Convert To String    ${response.status_code}
    Should Contain    ${CONVERT}        200
    Log To Console    ${response.status_code}
    Log To Console    ${response.content}

ENTÃO faço requisição da nf    
    &{nf_json}           Sercon Nota Fiscal
    ${response}         POST        ${HOST}          json=${nf_json}
    ${CONVERT} =        Convert To String    ${response.status_code}
    Should Contain    ${CONVERT}        200
    Log To Console    ${response.status_code}
    Log To Console    ${response.content}

ENTÃO verifico se estou conectado    

    &{token_json}           Dealernet Token
    ${response}         POST        ${HOST}          json=${token_json}
    ${item}         Set Variable        ${response.json()}
    ${CONVERT} =        Convert To String    ${response.status_code}
    Should Contain    ${CONVERT}        200
    Log To Console    ${response.status_code}
    Log To Console    ${response.content}


ENTÃO eu verifico se há conexão
    &{conexao_json}           Dealernet Conexao
    ${response}         POST        ${HOST}          json=${conexao_json}
    ${item}         Set Variable        ${response.json()}
    ${CONVERT} =        Convert To String    ${response.status_code}
    Should Contain    ${CONVERT}        200
    Log To Console    ${response.status_code}
    Log To Console    ${response.content}

ENTÃO eu ativo o produto
    &{conexao_json}           Dealernet Ativar Produto
    ${response}         POST        ${HOST}          json=${conexao_json}
    ${item}         Set Variable        ${response.json()}
    ${CONVERT} =        Convert To String    ${response.status_code}
    Should Contain    ${CONVERT}        200
    Log To Console    ${response.status_code}
    Log To Console    ${response.content}

ENTÃO devo buscar os produtos na fila
    &{fila_json}           Dealernet Buscar Produtos Na Fila
    ${response}         POST        ${HOST}          json=${fila_json}
    ${item}         Set Variable        ${response.json()}
    ${CONVERT} =        Convert To String    ${response.status_code}
    Should Contain    ${CONVERT}        200
    Log To Console    ${response.status_code}
    Log To Console    ${response.content}

ENTÃO devo retirar os produtos da fila
    &{fila_json}           Dealernet Retirar Produtos Da Fila
    ${response}         POST        ${HOST}          json=${fila_json}
    ${item}         Set Variable        ${response.json()}
    ${CONVERT} =        Convert To String    ${response.status_code}
    Should Contain    ${CONVERT}        200
    Log To Console    ${response.status_code}
    Log To Console    ${response.content}

ENTÃO deve verificar se há pedidos
    &{pedidos_json}           Dealernet Pedidos
    ${response}         POST        ${HOST}          json=${pedidos_json}
    ${item}         Set Variable        ${response.json()}
    ${CONVERT} =        Convert To String    ${response.status_code}
    Should Contain    ${CONVERT}        200
    Log To Console    ${response.status_code}
    Log To Console    ${response.content}  

ENTÃO deve verificar se há pedidos string
    &{pedidos_string_json}           Dealernet Pedidos String
    ${response}         POST        ${HOST}          json=${pedidos_string_json}
    ${item}         Set Variable        ${response.json()}
    ${CONVERT} =        Convert To String    ${response.status_code}
    Should Contain    ${CONVERT}        200
    Log To Console    ${response.status_code}
    Log To Console    ${response.content}  

ENTÃO verifico a nota fiscal do pedido
    &{nf_json}           Dealernet Nota Fiscal
    ${response}         POST        ${HOST}          json=${nf_json}
    ${CONVERT} =        Convert To String    ${response.status_code}
    Should Contain    ${CONVERT}        200
    Log To Console    ${response.status_code}
    Log To Console    ${response.content}       

ENTÃO devo verificar o token
    &{token_json}           Sinc Token
    ${response}         POST        ${HOST}          json=${token_json}
    ${CONVERT} =        Convert To String    ${response.status_code}
    Should Contain    ${CONVERT}        200
    Log To Console    ${response.status_code}
    Log To Console    ${response.content}    

ENTÃO estabeleço a conexao    
    &{conexao_json}           Sinc Conexao
    ${response}         POST        ${HOST}          json=${conexao_json}
    ${CONVERT} =        Convert To String    ${response.status_code}
    Should Contain    ${CONVERT}        200
    Log To Console    ${response.status_code}
    Log To Console    ${response.content}    

ENTÃO eu ativo os produtos
    &{produtos_json}           Sinc Ativar Produtos
    ${response}         POST        ${HOST}          json=${produtos_json}
    ${CONVERT} =        Convert To String    ${response.status_code}
    Should Contain    ${CONVERT}        200
    Log To Console    ${response.status_code}
    Log To Console    ${response.content}     

ENTÃO devo buscar produtos que estão na fila    
    &{produtos_fila_json}           Sinc Buscar Produtos Na Fila
    ${response}         POST        ${HOST}          json=${produtos_fila_json}
    ${CONVERT} =        Convert To String    ${response.status_code}
    Should Contain    ${CONVERT}        200
    Log To Console    ${response.status_code}
    Log To Console    ${response.content}     


ENTÃO devo retirar os podutos que estão na fila     
    &{produtos_fila_json}           Sinc Retirar Produtos Da Fila
    ${response}         POST        ${HOST}          json=${produtos_fila_json}
    ${CONVERT} =        Convert To String    ${response.status_code}
    Should Contain    ${CONVERT}        200
    Log To Console    ${response.status_code}
    Log To Console    ${response.content}     

ENTÃO devo verificar o pedido
    &{pedidos_json}           Sinc Pedidos
    ${response}         POST        ${HOST}          json=${pedidos_json}
    ${CONVERT} =        Convert To String    ${response.status_code}
    Should Contain    ${CONVERT}        200
    Log To Console    ${response.status_code}
    Log To Console    ${response.content}     

ENTÃO devo checar a nota fiscal
    &{nf_json}           Sinc Nota Fiscal
    ${response}         POST        ${HOST}          json=${nf_json}
    ${CONVERT} =        Convert To String    ${response.status_code}
    Should Contain    ${CONVERT}        200
    Log To Console    ${response.status_code}
    Log To Console    ${response.content} 

ENTÃO devo validar o token
    &{token}           Nbs Token
    ${response}         POST        ${HOST}          json=${token}
    ${item}         Set Variable        ${response.json()}
    ${CONVERT} =        Convert To String    ${response.status_code}
    Should Contain    ${CONVERT}        200
    Log To Console    ${response.status_code}
    Log To Console    ${response.content}

ENTÃO devo verificar a conexao  
    &{conexao_json}           Nbs Conexao
    ${response}         POST        ${HOST}          json=${conexao_json}
    ${item}         Set Variable        ${response.json()}
    ${CONVERT} =        Convert To String    ${response.status_code}
    Should Contain    ${CONVERT}        200
    Log To Console    ${response.status_code}
    Log To Console    ${response.content}

ENTÃO realizar a ativação dos produtos
    &{produtos_json}           Nbs Ativar Produtos
    ${response}         POST        ${HOST}          json=${produtos_json}
    ${item}         Set Variable        ${response.json()}
    ${CONVERT} =        Convert To String    ${response.status_code}
    Should Contain    ${CONVERT}        200
    Log To Console    ${response.status_code}
    Log To Console    ${response.content}

ENTÃO devo buscar os produtos contidos na fila
    &{fila_json}           Nbs Buscar Produtos Fila
    ${response}         POST        ${HOST}          json=${fila_json}
    ${item}         Set Variable        ${response.json()}
    ${CONVERT} =        Convert To String    ${response.status_code}
    Should Contain    ${CONVERT}        200
    Log To Console    ${response.status_code}
    Log To Console    ${response.content}   

ENTÃO devo retirar os produtos que estão contidos na fila
    &{retirar_fila_json}           Nbs Retirar Produtos Da Fila
    ${response}         POST        ${HOST}          json=${retirar_fila_json}
    ${item}         Set Variable        ${response.json()}
    ${CONVERT} =        Convert To String    ${response.status_code}
    Should Contain    ${CONVERT}        200
    Log To Console    ${response.status_code}
    Log To Console    ${response.content}       

ENTÃO devo analisar o pedido    
    &{pedidos_json}           Nbs Pedidos
    ${response}         POST        ${HOST}          json=${pedidos_json}
    ${item}         Set Variable        ${response.json()}
    ${CONVERT} =        Convert To String    ${response.status_code}
    Should Contain    ${CONVERT}        200
    Log To Console    ${response.status_code}
    Log To Console    ${response.content}       

ENTÃO devo verificar a nota fiscal    
    &{nf_json}           Nbs Nota Fiscal
    ${response}         POST        ${HOST}          json=${nf_json}
    ${CONVERT} =        Convert To String    ${response.status_code}
    Should Contain    ${CONVERT}        200
    Log To Console    ${response.status_code}
    Log To Console    ${response.content} 

DADO que eu me conecte ao WebService de login SSR
    Create Session    MinhaConexao    ${HOST_SIGNIN}

DADO que eu me conecte ao WebService de frete SSR
    Sleep           1

ENTÃO faço login
    &{json_login}           Ssr Login
    ${response}         POST        ${HOST_SIGNIN}          json=${json_login}
    ${JSON_CLIENTE}             Set Variable        ${response.json()}
    ${JSON_STATUS}      Get Value From Json         ${JSON_CLIENTE}         $.message
    Should Contain      ${JSON_STATUS}              SUCESSO: Cadastro realizado
    ${CONVERT} =        Convert To String           ${response.status_code}
    Should Contain      ${CONVERT}      200
 
ENTÃO faço login sem sucesso
    &{json_login_falho}           Ssr Loginfalho
    ${response}         POST        ${HOST_SIGNIN}          json=${json_login_falho}
    ${JSON_CLIENTE}             Set Variable        ${response.json()}
    ${JSON_STATUS}      Get Value From Json         ${JSON_CLIENTE}         $.message
    Should Contain      ${JSON_STATUS}              API ERROR
    ${CONVERT} =        Convert To String           ${response.status_code}
    Should Contain      ${CONVERT}      500


ENTÃO verifico o frete
    &{json_frete}           Ssr Verifica Frete
    ${response}         POST        ${HOST_FRETE}          json=${json_frete}
    ${CONVERT} =        Convert To String    ${response.status_code}
    ${JSON_STATUS}      Get Value From Json         ${response.json()}         $.message
    Should Contain      ${JSON_STATUS}              Cotação de frete realizado.
    ${CONVERT} =        Convert To String           ${response.status_code}
    Should Contain    ${CONVERT}        200
    Log To Console    ${response.status_code}
    Log To Console    ${response.content} 

DADO que eu me conecte ao WebService de cálculo de frete SSR
    Sleep           1

ENTÃO devo analisar o calculo do frete

    &{json_frete}           Ssr Calculo Frete
    ${response}         POST        ${HOST_CALC_FRETE}          json=${json_frete}
    ${CONVERT} =        Convert To String    ${response.status_code}
    ${JSON_STATUS}      Get Value From Json         ${response.json()}         $.message
    Should Contain      ${JSON_STATUS}              SUCESSO: Na realização dos cálculos dos produtos.
    ${CONVERT} =        Convert To String           ${response.status_code}
    Should Contain    ${CONVERT}        200
    Log To Console    ${response.status_code}
    Log To Console    ${response.content} 

DADO que eu me conecte ao WebService de compra
    Sleep           1

ENTÃO devo verificar se há estoque para realizar a compra 
    &{json_teste_frete}           Ssr Estoque
    ${response}         POST        ${HOST_FRETE}          json=${json_teste_frete}
    ${item}         Set Variable        ${response.json()}
    Log     ${item}
    ${RECEBE_QTD_ESTOQUE}        Get Value From Json     ${item}        $.data[0].produtos[0].estoque
    ${RECEBE_QTD_PRODUTOS}        Get Value From Json     ${item}        $.data[0].produtos[0].quantidade
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

ENTÃO verifico se o frete é inválido
    &{json_frete}           Ssr Frete Invalido
    ${response}         POST        ${HOST_FRETE}          json=${json_frete}
    ${CONVERT} =        Convert To String    ${response.status_code}
    ${JSON_STATUS}      Get Value From Json         ${response.json()}         $.data
    Should Contain      ${JSON_STATUS}[0]              CEP_INVALIDO
    Log To Console    ${response.status_code}
    Log To Console    ${response.content} 

ENTÃO verifico se o frete é inválido com símbolos  
    &{json_frete}           Ssr Frete Com Simbolos
    ${response}         POST        ${HOST_FRETE}          json=${json_frete}
    ${CONVERT} =        Convert To String    ${response.status_code}
    ${JSON_STATUS}      Get Value From Json         ${response.json()}         $.data
    Should Contain      ${JSON_STATUS}[0]              CEP_INVALIDO
    Log To Console    ${response.status_code}
    Log To Console    ${response.content} 

DADO que eu deseje realizar um teste de API
    Sleep                   1

QUANDO startar os testes
    Sleep                   1 

ENTÃO devo limpar a fila de itens    
    &{retiro_produtos_json}           Sercon Retirar 15 Produtos Da Fila
    ${response}         POST        ${HOST}          json=${retiro_produtos_json}

ENTÃO devo limpar a fila de itens sinc

ENTÃO devo ativar os produtos sinc
    &{produtos_json}           Sinc Ativar 2 Produtos
    ${response}         POST        ${HOST}          json=${produtos_json}
    ${item}         Set Variable        ${response.json()}
    ${CONVERT} =        Convert To String    ${response.status_code}
    Should Contain    ${CONVERT}        200
    Log To Console    ${response.status_code}
    Log To Console    ${response.content}

ENTÃO verifico produtos da sinc que estão na fila
    &{buscar_produtos_json}           Sinc Buscar Produtos Na Fila
    ${response}         POST        ${HOST}          json=${buscar_produtos_json}

ENTÃO eu retiro produtos sinc da fila
    &{retiro_produtos_json}           Sinc Retirar 2 Produtos Da Fila
    ${response}         POST        ${HOST}          json=${retiro_produtos_json}    

ENTÃO se não há produtos na fila sinc
    &{buscar_produtos_json}           Sinc Buscar Produtos Na Fila
    ${response}         POST        ${HOST}          json=${buscar_produtos_json}        expected_status=404
    ${resposta}      Get Value From Json         ${response.json()}         $.message
    Should Contain      ${resposta}             Nenhum produto na fila. 
