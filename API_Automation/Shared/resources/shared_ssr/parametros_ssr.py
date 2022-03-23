token_pedido_ssr = ""
def ssr_estoque():

    return{

        "cep_destino": "07929050",
        "url": "https://ssr.e-peca.com.br/checkout/pagamento",
        "produtos": [
            {
                "id": "78",
                "id_produto_variacao": "78",
                "preco_final": 78.99,
                "quantidade": 2,
                "codigosoriginais": [
                    "43957-86E",
                    "43957-86C",
                    "43957-86B",
                    "43957-86D",
                    "43957-86A",
                    "43957-86"
                ]
            },
            {
                "id": "101",
                "id_produto_variacao": "101",
                "preco_final": 220.89,
                "quantidade": 1,
                "codigosoriginais": [
                    "46127-04"
                ]
            }
        ]

    }

def ssr_verifica_frete_1():

    return{
        "cep_destino": "07929050",
        "url": "https://ssr.e-peca.com.br/checkout/carrinho",
        "produtos": [
            {
                "id": "101",
                "id_produto_variacao": "101",
                "preco_final": 220.89,
                "quantidade": 1,
                "codigosoriginais": [
                    "46127-04"
                ]
            }
        ]
    }


def ssr_pedido_valido_visa_1():

    return{
        "cliente": {
            "id_identificador": "45368311850",
            "email": "joaomarcos@e-peca.com.br",
            "nome_razao": "João Marcos dos Santos Silva",
            "endereco_cobranca": {
                "uf": "SP",
                "cep": "07929050",
                "nro": "159",
                "obs": None,
                "bairro": "Jardim",
                "cidade": "Francisco Morato",
                "logradouro": "Rua das Palmeiras",
                "complemento": "Próximo a escola"
            },
            "endereco_entrega": {
                "uf": "SP",
                "cep": "07929050",
                "nro": "159",
                "obs": None,
                "bairro": "Jardim",
                "cidade": "Francisco Morato",
                "logradouro": "Rua das Palmeiras",
                "complemento": "Próximo a escola"
            }
        },
        "forma_pagamento": {
            "id": 1,
            "nome": "Visa Crédito",
            "n_parcelas": 1,
            "detalhes_pagamento": {
                "hash_cartao": "c8773dbc4625366b5d3a499298feeadf939c86aefa42e4472ae8dffba70027f3b7304c77c25452274e8d3d09a376b9841997d99a8c0a1e76af1a5c77a79ee4dd",
                "pagador": {
                    "nome": "João Marcos",
                    "identificador": "45368311850",
                    "dt_nascimento": "29/09/1994",
                    "telefone": {
                        "ddd": "11",
                        "numero": "994757788"
                    }
                }
            }
        },
        "cupom_desconto": {
            "nome": "",
            "valor_total_produtos": 220.89
        },
        "origens": [
            {
                "cep_origem": "80740000",
                "cep_destino": "07929050",
                "url": "",
                "produtos": [
                    {
                        "id": "101",
                        "id_produto_variacao": 101,
                        "preco_final": 220.89,
                        "quantidade": 1,
                        "codigosoriginais": [
                            "46127-04"
                        ],
                        "subgrupo":"Mesas de Garfo",
                        "segmento":"Motocicleta",
                        "descricao":"Mesa de Garfo",
                        "largura":20.5,
                        "altura":25,
                        "profundidade":19,
                        "peso":2.01,
                        "foto":"101/360/Lv1/img01.jpg",
                        "INFO_BOUTIQUE":True,
                        "id_produto":101,
                        "id_produto_pai":101,
                        "id_loja":4,
                        "id_empresa":4,
                        "pn_produto":"46127-04",
                        "preco":220.89,
                        "preco_desconto":220.89,
                        "preco_original":220.89,
                        "desconto":0,
                        "estoque":3,
                        "estoque_minimo":0,
                        "info_boutique":True,
                        "info_gerais":{
                            "segmento": "Motocicleta",
                            "foto": "101/360/Lv1/img01.jpg",
                            "largura": 20.5,
                            "peso": 2.01,
                            "altura": 25,
                            "subgrupo": "Mesas de Garfo",
                            "tamanho_unico": "",
                            "profundidade": 19,
                            "descricao": "Mesa de Garfo"
                        },
                        "categoria": [

                        ],
                        "cep_origem":"80740000",
                        "vendido_por":"The One Harley-Davidson - Curitiba/PR",
                        "alias":"PR-CWB-01",
                        "status":"ATIVO",
                        "vitrine":{
                            "peso": 2.01,
                            "altura": 25,
                            "largura": 20.5,
                            "produto": 101,
                            "descricao": "Mesa de Garfo",
                            "profundidade": 19,
                            "segmento": "Motocicleta",
                            "foto": "101/360/Lv1/img01.jpg",
                            "subgrupo": "Mesas de Garfo"
                        },
                        "data_atualizacao": ""
                    }
                ],
                "embalagem": [
                    {
                        "id": 2,
                        "nome": "Caixa B",
                        "largura": 55,
                        "altura": 36,
                        "profundidade": 28,
                        "peso_max_embalagem": 10,
                        "peso_max": 10,
                        "peso_itens": 2.111,
                        "volume_embalagem": 55440,
                        "volume_max": 55440,
                        "volume_itens": 9737.5,
                        "volume_utilizado": 9737.5,
                        "itens_embalagem": 1,
                        "itens_volume": 1,
                        "peso_utilizado": 21.11,
                        "peso_utilizado_percentual": 21.11,
                        "volume_utilizado_percentual": 17.56,
                        "produtos": [
                            {
                                "id": "101",
                                "id_produto_variacao": "101",
                                "segmento": "Motocicleta",
                                "subgrupo": "Mesas de Garfo",
                                "descricao": "Mesa de Garfo",
                                "codigosoriginais": [
                                    "46127-04"
                                ],
                                "foto":"101/360/Lv1/img01.jpg",
                                "vendido_por":"The One Harley-Davidson - Curitiba/PR",
                                "id_loja":4,
                                "cep_origem":"80740000",
                                "INFO_BOUTIQUE":True,
                                "quantidade":1,
                                "preco_final":220.89,
                                "estoque":3,
                                "largura":20.5,
                                "altura":25,
                                "profundidade":19,
                                "peso":2.01,
                                "volume":9737.5,
                                "embalagem":[

                                ],
                                "posicao":[
                                    "altura",
                                    "largura",
                                    "profundidade"
                                ]
                            }
                        ],
                        "unidade":"cm cubicos",
                        "preco_final":220.89
                    }
                ],
                "vendido_por":"The One Harley-Davidson - Curitiba/PR",
                "frete":[
                    {
                        "empresa": "Correios",
                        "entrega_metodo_tipo": "EXPRESS",
                        "entrega_metodo_nome": "Correios Sedex",
                        "entrega_metodo_id": "2",
                        "entrega_custo_final": 100.47,
                        "entrega_estimada_dias": 6
                    }
                ]
            }
        ]
    }

def ssr_calculo_frete_1():
    return{
        "cliente": {
            "id_identificador": "45368311850",
            "email": "joaomarcos@e-peca.com.br",
            "nome_razao": "João Marcos dos Santos Silva",
            "endereco_cobranca": {
                "uf": "SP",
                "cep": "07929050",
                "nro": "159",
                "obs": None,
                "bairro": "Jardim",
                "cidade": "Francisco Morato",
                "logradouro": "Rua das Palmeiras",
                "complemento": "Próximo a escola"
            },
            "endereco_entrega": {
                "uf": "SP",
                "cep": "07929050",
                "nro": "159",
                "obs": None,
                "bairro": "Jardim",
                "cidade": "Francisco Morato",
                "logradouro": "Rua das Palmeiras",
                "complemento": "Próximo a escola"
            }
        },
        "cupom_desconto": {
            "nome": "",
            "valor_total_produtos": 220.89
        },
        "origens": [
            {
                "cep_origem": "80740000",
                "cep_destino": "07929050",
                "url": "",
                "produtos": [
                    {
                        "id": "101",
                        "id_produto_variacao": 101,
                        "preco_final": 220.89,
                        "quantidade": 1,
                        "codigosoriginais": [
                            "46127-04"
                        ],
                        "subgrupo":"Mesas de Garfo",
                        "segmento":"Motocicleta",
                        "descricao":"Mesa de Garfo",
                        "largura":20.5,
                        "altura":25,
                        "profundidade":19,
                        "peso":2.01,
                        "foto":"101/360/Lv1/img01.jpg",
                        "INFO_BOUTIQUE":True,
                        "id_produto":101,
                        "id_produto_pai":101,
                        "id_loja":4,
                        "id_empresa":4,
                        "pn_produto":"46127-04",
                        "preco":220.89,
                        "preco_desconto":220.89,
                        "preco_original":220.89,
                        "desconto":0,
                        "estoque":3,
                        "estoque_minimo":0,
                        "info_boutique":True,
                        "info_gerais":{
                            "segmento": "Motocicleta",
                            "foto": "101/360/Lv1/img01.jpg",
                            "largura": 20.5,
                            "peso": 2.01,
                            "altura": 25,
                            "subgrupo": "Mesas de Garfo",
                            "tamanho_unico": "",
                            "profundidade": 19,
                            "descricao": "Mesa de Garfo"
                        },
                        "categoria": [

                        ],
                        "cep_origem":"80740000",
                        "vendido_por":"The One Harley-Davidson - Curitiba/PR",
                        "alias":"PR-CWB-01",
                        "status":"ATIVO",
                        "vitrine":{
                            "peso": 2.01,
                            "altura": 25,
                            "largura": 20.5,
                            "produto": 101,
                            "descricao": "Mesa de Garfo",
                            "profundidade": 19,
                            "segmento": "Motocicleta",
                            "foto": "101/360/Lv1/img01.jpg",
                            "subgrupo": "Mesas de Garfo"
                        },
                        "data_atualizacao": ""
                    }
                ],
                "embalagem": [
                    {
                        "id": 2,
                        "nome": "Caixa B",
                        "largura": 55,
                        "altura": 36,
                        "profundidade": 28,
                        "peso_max_embalagem": 10,
                        "peso_max": 10,
                        "peso_itens": 2.111,
                        "volume_embalagem": 55440,
                        "volume_max": 55440,
                        "volume_itens": 9737.5,
                        "volume_utilizado": 9737.5,
                        "itens_embalagem": 1,
                        "itens_volume": 1,
                        "peso_utilizado": 21.11,
                        "peso_utilizado_percentual": 21.11,
                        "volume_utilizado_percentual": 17.56,
                        "produtos": [
                            {
                                "id": "101",
                                "id_produto_variacao": "101",
                                "segmento": "Motocicleta",
                                "subgrupo": "Mesas de Garfo",
                                "descricao": "Mesa de Garfo",
                                "codigosoriginais": [
                                    "46127-04"
                                ],
                                "foto":"101/360/Lv1/img01.jpg",
                                "vendido_por":"The One Harley-Davidson - Curitiba/PR",
                                "id_loja":4,
                                "cep_origem":"80740000",
                                "INFO_BOUTIQUE":True,
                                "quantidade":1,
                                "preco_final":220.89,
                                "estoque":3,
                                "largura":20.5,
                                "altura":25,
                                "profundidade":19,
                                "peso":2.01,
                                "volume":9737.5,
                                "embalagem":[

                                ],
                                "posicao":[
                                    "altura",
                                    "largura",
                                    "profundidade"
                                ]
                            }
                        ],
                        "unidade":"cm cubicos",
                        "preco_final":220.89
                    }
                ],
                "vendido_por":"The One Harley-Davidson - Curitiba/PR",
                "frete":[
                    {
                        "empresa": "Correios",
                        "entrega_metodo_tipo": "EXPRESS",
                        "entrega_metodo_nome": "Correios Sedex",
                        "entrega_metodo_id": "2",
                        "entrega_custo_final": 100.47,
                        "entrega_estimada_dias": 6
                    }
                ]
            }
        ]
    }

def ssr_calculo_frete_2():
    return{
        "cliente": {
            "id_identificador": "45368311850",
            "email": "joaomarcos@e-peca.com.br",
            "nome_razao": "João Marcos dos Santos Silva",
            "endereco_cobranca": {
                "uf": "SP",
                "cep": "07929050",
                "nro": "159",
                "obs": None,
                "bairro": "Jardim",
                "cidade": "Francisco Morato",
                "logradouro": "Rua das Palmeiras",
                "complemento": "Próximo a escola"
            },
            "endereco_entrega": {
                "uf": "SP",
                "cep": "07929050",
                "nro": "159",
                "obs": None,
                "bairro": "Jardim",
                "cidade": "Francisco Morato",
                "logradouro": "Rua das Palmeiras",
                "complemento": "Próximo a escola"
            }
        },
        "cupom_desconto": {
            "nome": "",
            "valor_total_produtos": 119.25
        },
        "origens": [
            {
                "cep_origem": "80740000",
                "cep_destino": "07929050",
                "url": "",
                "produtos": [
                    {
                        "id": "924",
                        "id_produto_variacao": 924,
                        "preco_final": 119.25,
                        "quantidade": 1,
                        "codigosoriginais": [
                            "67700043",
                            "67700043A",
                            "67700145",
                            "67700145A"
                        ],
                        "subgrupo":"Faróis",
                        "segmento":"Motocicleta",
                        "descricao":"Farol",
                        "largura":19,
                        "altura":30,
                        "profundidade":11.5,
                        "peso":1.1,
                        "foto":"924/360/Lv1/img01.jpg",
                        "INFO_BOUTIQUE":True,
                        "id_produto":924,
                        "id_produto_pai":924,
                        "id_loja":4,
                        "id_empresa":4,
                        "pn_produto":"67700043",
                        "preco":119.25,
                        "preco_desconto":119.25,
                        "preco_original":119.25,
                        "desconto":0,
                        "estoque":5,
                        "estoque_minimo":0,
                        "info_boutique":True,
                        "info_gerais":{
                            "segmento": "Motocicleta",
                            "foto": "924/360/Lv1/img01.jpg",
                            "largura": 19,
                            "peso": 1.1,
                            "altura": 30,
                            "subgrupo": "Faróis",
                            "tamanho_unico": "",
                            "profundidade": 11.5,
                            "descricao": "Farol"
                        },
                        "categoria": [

                        ],
                        "cep_origem":"80740000",
                        "vendido_por":"The One Harley-Davidson - Curitiba/PR",
                        "alias":"PR-CWB-01",
                        "status":"ATIVO",
                        "vitrine":{
                            "peso": 1.1,
                            "altura": 30,
                            "largura": 19,
                            "produto": 924,
                            "descricao": "Farol",
                            "profundidade": 11.5,
                            "segmento": "Motocicleta",
                            "foto": "924/360/Lv1/img01.jpg",
                            "subgrupo": "Faróis"
                        },
                        "data_atualizacao": ""
                    }
                ],
                "embalagem": [
                    {
                        "id": 2,
                        "nome": "Caixa B",
                        "largura": 55,
                        "altura": 36,
                        "profundidade": 28,
                        "peso_max_embalagem": 10,
                        "peso_max": 10,
                        "peso_itens": 1.155,
                        "volume_embalagem": 55440,
                        "volume_max": 55440,
                        "volume_itens": 6555,
                        "volume_utilizado": 6555,
                        "itens_embalagem": 1,
                        "itens_volume": 1,
                        "peso_utilizado": 11.55,
                        "peso_utilizado_percentual": 11.55,
                        "volume_utilizado_percentual": 11.82,
                        "produtos": [
                            {
                                "id": "924",
                                "id_produto_variacao": "924",
                                "segmento": "Motocicleta",
                                "subgrupo": "Faróis",
                                "descricao": "Farol",
                                "codigosoriginais": [
                                    "67700043",
                                    "67700043A",
                                    "67700145",
                                    "67700145A"
                                ],
                                "foto":"924/360/Lv1/img01.jpg",
                                "vendido_por":"The One Harley-Davidson - Curitiba/PR",
                                "id_loja":4,
                                "cep_origem":"80740000",
                                "INFO_BOUTIQUE":True,
                                "quantidade":1,
                                "preco_final":119.25,
                                "estoque":5,
                                "largura":19,
                                "altura":30,
                                "profundidade":11.5,
                                "peso":1.1,
                                "volume":6555,
                                "embalagem":[

                                ],
                                "posicao":[
                                    "altura",
                                    "largura",
                                    "profundidade"
                                ]
                            }
                        ],
                        "unidade":"cm cubicos",
                        "preco_final":119.25
                    }
                ],
                "vendido_por":"The One Harley-Davidson - Curitiba/PR",
                "frete":[
                    {
                        "empresa": "Retirada Na Loja",
                        "entrega_custo_final": 0,
                        "entrega_estimada_dias": 1,
                        "entrega_metodo_id": 195,
                        "entrega_metodo_nome": "Retirada na Loja",
                        "entrega_metodo_tipo": "PICKUP"
                    }
                ]
            }
        ]
    }

def ssr_verifica_frete_2():

    return{

        "cep_destino": "07929050",
        "url": "https://ssr.e-peca.com.br/checkout/pagamento",
        "produtos": [
            {
                "id": "924",
                "id_produto_variacao": "924",
                "preco_final": 119.25,
                "quantidade": 1,
                "codigosoriginais": [
                    "67700043",
                    "67700043A",
                    "67700145",
                    "67700145A"
                ]
            }
        ]

    }

def ssr_pedido_valido_master_card_1():
    return{
        "cliente": {
            "id_identificador": "45368311850",
            "email": "joaomarcos@e-peca.com.br",
            "nome_razao": "João Marcos dos Santos Silva",
            "endereco_cobranca": {
                "uf": "SP",
                "cep": "07929050",
                "nro": "159",
                "obs": None,
                "bairro": "Jardim",
                "cidade": "Francisco Morato",
                "logradouro": "Rua das Palmeiras",
                "complemento": "Próximo a escola"
            },
            "endereco_entrega": {
                "uf": "SP",
                "cep": "07929050",
                "nro": "159",
                "obs": None,
                "bairro": "Jardim",
                "cidade": "Francisco Morato",
                "logradouro": "Rua das Palmeiras",
                "complemento": "Próximo a escola"
            }
        },
        "forma_pagamento": {
            "id": 7,
            "nome": "Mastercard Crédito",
            "n_parcelas": 1,
            "detalhes_pagamento": {
                "hash_cartao": "9bbcb515c1bf24fb4b27f7a89a65d2dff89d6a6aeeb82a1fdce84bafa7fc688b791ffb2bc1fb6f38d4d5331f75ddd0008b0b4af76923f112cc7a47f6a9fcfc0d",
                "pagador": {
                    "nome": "João Marcos",
                    "identificador": "45368311850",
                    "dt_nascimento": "29/09/1994",
                    "telefone": {
                        "ddd": "11",
                        "numero": "994757788"
                    }
                }
            }
        },
        "cupom_desconto": {
            "nome": "",
            "valor_total_produtos": 119.25
        },
        "origens": [
            {
                "cep_origem": "80740000",
                "cep_destino": "07929050",
                "url": "",
                "produtos": [
                    {
                        "id": "924",
                        "id_produto_variacao": 924,
                        "preco_final": 119.25,
                        "quantidade": 1,
                        "codigosoriginais": [
                            "67700043",
                            "67700043A",
                            "67700145",
                            "67700145A"
                        ],
                        "subgrupo":"Faróis",
                        "segmento":"Motocicleta",
                        "descricao":"Farol",
                        "largura":19,
                        "altura":30,
                        "profundidade":11.5,
                        "peso":1.1,
                        "foto":"924/360/Lv1/img01.jpg",
                        "INFO_BOUTIQUE":True,
                        "id_produto":924,
                        "id_produto_pai":924,
                        "id_loja":4,
                        "id_empresa":4,
                        "pn_produto":"67700043",
                        "preco":119.25,
                        "preco_desconto":119.25,
                        "preco_original":119.25,
                        "desconto":0,
                        "estoque":5,
                        "estoque_minimo":0,
                        "info_boutique":True,
                        "info_gerais":{
                            "segmento": "Motocicleta",
                            "foto": "924/360/Lv1/img01.jpg",
                            "largura": 19,
                            "peso": 1.1,
                            "altura": 30,
                            "subgrupo": "Faróis",
                            "tamanho_unico": "",
                            "profundidade": 11.5,
                            "descricao": "Farol"
                        },
                        "categoria": [

                        ],
                        "cep_origem":"80740000",
                        "vendido_por":"The One Harley-Davidson - Curitiba/PR",
                        "alias":"PR-CWB-01",
                        "status":"ATIVO",
                        "vitrine":{
                            "peso": 1.1,
                            "altura": 30,
                            "largura": 19,
                            "produto": 924,
                            "descricao": "Farol",
                            "profundidade": 11.5,
                            "segmento": "Motocicleta",
                            "foto": "924/360/Lv1/img01.jpg",
                            "subgrupo": "Faróis"
                        },
                        "data_atualizacao": ""
                    }
                ],
                "embalagem": [
                    {
                        "id": 2,
                        "nome": "Caixa B",
                        "largura": 55,
                        "altura": 36,
                        "profundidade": 28,
                        "peso_max_embalagem": 10,
                        "peso_max": 10,
                        "peso_itens": 1.155,
                        "volume_embalagem": 55440,
                        "volume_max": 55440,
                        "volume_itens": 6555,
                        "volume_utilizado": 6555,
                        "itens_embalagem": 1,
                        "itens_volume": 1,
                        "peso_utilizado": 11.55,
                        "peso_utilizado_percentual": 11.55,
                        "volume_utilizado_percentual": 11.82,
                        "produtos": [
                            {
                                "id": "924",
                                "id_produto_variacao": "924",
                                "segmento": "Motocicleta",
                                "subgrupo": "Faróis",
                                "descricao": "Farol",
                                "codigosoriginais": [
                                    "67700043",
                                    "67700043A",
                                    "67700145",
                                    "67700145A"
                                ],
                                "foto":"924/360/Lv1/img01.jpg",
                                "vendido_por":"The One Harley-Davidson - Curitiba/PR",
                                "id_loja":4,
                                "cep_origem":"80740000",
                                "INFO_BOUTIQUE":True,
                                "quantidade":1,
                                "preco_final":119.25,
                                "estoque":5,
                                "largura":19,
                                "altura":30,
                                "profundidade":11.5,
                                "peso":1.1,
                                "volume":6555,
                                "embalagem":[

                                ],
                                "posicao":[
                                    "altura",
                                    "largura",
                                    "profundidade"
                                ]
                            }
                        ],
                        "unidade":"cm cubicos",
                        "preco_final":119.25
                    }
                ],
                "vendido_por":"The One Harley-Davidson - Curitiba/PR",
                "frete":[
                    {
                        "empresa": "Retirada Na Loja",
                        "entrega_custo_final": 0,
                        "entrega_estimada_dias": 1,
                        "entrega_metodo_id": 195,
                        "entrega_metodo_nome": "Retirada na Loja",
                        "entrega_metodo_tipo": "PICKUP"
                    }
                ]
            }
        ]
    }

def ssr_verifica_frete_3():
    return{
        "cep_destino": "07929050",
        "url": "https://ssr.e-peca.com.br/checkout/pagamento",
        "produtos": [
            {
                "id": "78",
                "id_produto_variacao": "78",
                "preco_final": 78.99,
                "quantidade": 1,
                "codigosoriginais": [
                    "43957-86E",
                    "43957-86C",
                    "43957-86B",
                    "43957-86D",
                    "43957-86A",
                    "43957-86"
                ]
            }
        ]

    }

def ssr_calculo_frete_3():
    return{
        "cliente": {
            "id_identificador": "45368311850",
            "email": "joaomarcos@e-peca.com.br",
            "nome_razao": "João Marcos dos Santos Silva",
            "endereco_cobranca": {
                "uf": "SP",
                "cep": "07929050",
                "nro": "159",
                "obs": None,
                "bairro": "Jardim",
                "cidade": "Francisco Morato",
                "logradouro": "Rua das Palmeiras",
                "complemento": "Próximo a escola"
            },
            "endereco_entrega": {
                "uf": "SP",
                "cep": "07929050",
                "nro": "159",
                "obs": None,
                "bairro": "Jardim",
                "cidade": "Francisco Morato",
                "logradouro": "Rua das Palmeiras",
                "complemento": "Próximo a escola"
            }
        },
        "cupom_desconto": {
            "nome": "",
            "valor_total_produtos": 78.99
        },
        "origens": [
            {
                "cep_origem": "14096000",
                "cep_destino": "07929050",
                "url": "",
                "produtos": [
                    {
                        "id": "78",
                        "id_produto_variacao": 78,
                        "preco_final": 78.99,
                        "quantidade": 1,
                        "codigosoriginais": [
                            "43957-86E",
                            "43957-86C",
                            "43957-86B",
                            "43957-86D",
                            "43957-86A",
                            "43957-86"
                        ],
                        "subgrupo":"Pastilhas de Freio",
                        "segmento":"Motocicleta",
                        "descricao":"Pastilha de Freio",
                        "largura":9.5,
                        "altura":11.5,
                        "profundidade":2.5,
                        "peso":0.8,
                        "foto":"78/360/Lv1/img01.jpg",
                        "INFO_BOUTIQUE":True,
                        "id_produto":78,
                        "id_produto_pai":78,
                        "id_loja":34,
                        "id_empresa":34,
                        "pn_produto":"43957-86",
                        "preco":78.99,
                        "preco_desconto":78.99,
                        "preco_original":78.99,
                        "desconto":0,
                        "estoque":2,
                        "estoque_minimo":0,
                        "info_boutique":True,
                        "info_gerais":{
                            "segmento": "Motocicleta",
                            "foto": "78/360/Lv1/img01.jpg",
                            "largura": 9.5,
                            "peso": 0.8,
                            "altura": 11.5,
                            "subgrupo": "Pastilhas de Freio",
                            "tamanho_unico": "",
                            "profundidade": 2.5,
                            "descricao": "Pastilha de Freio"
                        },
                        "categoria": [

                        ],
                        "cep_origem":"14096000",
                        "vendido_por":"Ribeirão Preto Harley-Davidson - Ribeirão Preto/SP",
                        "alias":"SP-RIB-01",
                        "status":"ATIVO",
                        "vitrine":{
                            "peso": 0.8,
                            "altura": 11.5,
                            "largura": 9.5,
                            "produto": 78,
                            "descricao": "Pastilha de Freio",
                            "profundidade": 2.5,
                            "segmento": "Motocicleta",
                            "foto": "78/360/Lv1/img01.jpg",
                            "subgrupo": "Pastilhas de Freio"
                        },
                        "data_atualizacao": ""
                    }
                ],
                "embalagem": [
                    {
                        "id": 1,
                        "nome": "Caixa A",
                        "largura": 29,
                        "altura": 23.5,
                        "profundidade": 15,
                        "peso_max_embalagem": 10,
                        "peso_max": 10,
                        "peso_itens": 0.84,
                        "volume_embalagem": 10222.5,
                        "volume_max": 10222.5,
                        "volume_itens": 273.125,
                        "volume_utilizado": 273.125,
                        "itens_embalagem": 1,
                        "itens_volume": 1,
                        "peso_utilizado": 8.4,
                        "peso_utilizado_percentual": 8.4,
                        "volume_utilizado_percentual": 2.67,
                        "produtos": [
                            {
                                "id": "78",
                                "id_produto_variacao": "78",
                                "segmento": "Motocicleta",
                                "subgrupo": "Pastilhas de Freio",
                                "descricao": "Pastilha de Freio",
                                "codigosoriginais": [
                                    "43957-86E",
                                    "43957-86C",
                                    "43957-86B",
                                    "43957-86D",
                                    "43957-86A",
                                    "43957-86"
                                ],
                                "foto":"78/360/Lv1/img01.jpg",
                                "vendido_por":"Ribeirão Preto Harley-Davidson - Ribeirão Preto/SP",
                                "id_loja":34,
                                "cep_origem":"14096000",
                                "INFO_BOUTIQUE":True,
                                "quantidade":1,
                                "preco_final":78.99,
                                "estoque":2,
                                "largura":9.5,
                                "altura":11.5,
                                "profundidade":2.5,
                                "peso":0.8,
                                "volume":273.125,
                                "embalagem":[

                                ],
                                "posicao":[
                                    "altura",
                                    "largura",
                                    "profundidade"
                                ]
                            }
                        ],
                        "unidade":"cm cubicos",
                        "preco_final":78.99
                    }
                ],
                "vendido_por":"Ribeirão Preto Harley-Davidson - Ribeirão Preto/SP",
                "frete":[
                    {
                        "empresa": "Correios",
                        "entrega_metodo_tipo": "EXPRESS",
                        "entrega_metodo_nome": "Correios Sedex",
                        "entrega_metodo_id": "2",
                        "entrega_custo_final": 37.23,
                        "entrega_estimada_dias": 5
                    }
                ]
            }
        ]
    }

def ssr_pedido_valido_master_card_2():
    return{
        "cliente": {
            "id_identificador": "45368311850",
            "email": "joaomarcos@e-peca.com.br",
            "nome_razao": "João Marcos dos Santos Silva",
            "endereco_cobranca": {
                "uf": "SP",
                "cep": "07929050",
                "nro": "159",
                "obs": None,
                "bairro": "Jardim",
                "cidade": "Francisco Morato",
                "logradouro": "Rua das Palmeiras",
                "complemento": "Próximo a escola"
            },
            "endereco_entrega": {
                "uf": "SP",
                "cep": "07929050",
                "nro": "159",
                "obs": None,
                "bairro": "Jardim",
                "cidade": "Francisco Morato",
                "logradouro": "Rua das Palmeiras",
                "complemento": "Próximo a escola"
            }
        },
        "forma_pagamento": {
            "id": 7,
            "nome": "Mastercard Crédito",
            "n_parcelas": 1,
            "detalhes_pagamento": {
                "hash_cartao": "",
                "pagador": {
                    "nome": "João Marcos",
                    "identificador": "45368311850",
                    "dt_nascimento": "29/09/1994",
                    "telefone": {
                        "ddd": "11",
                        "numero": "994757788"
                    }
                }
            }
        },
        "cupom_desconto": {
            "nome": "",
            "valor_total_produtos": 78.99
        },
        "origens": [
            {
                "cep_origem": "14096000",
                "cep_destino": "07929050",
                "url": "",
                "produtos": [
                    {
                        "id": "78",
                        "id_produto_variacao": 78,
                        "preco_final": 78.99,
                        "quantidade": 1,
                        "codigosoriginais": [
                            "43957-86E",
                            "43957-86C",
                            "43957-86B",
                            "43957-86D",
                            "43957-86A",
                            "43957-86"
                        ],
                        "subgrupo":"Pastilhas de Freio",
                        "segmento":"Motocicleta",
                        "descricao":"Pastilha de Freio",
                        "largura":9.5,
                        "altura":11.5,
                        "profundidade":2.5,
                        "peso":0.8,
                        "foto":"78/360/Lv1/img01.jpg",
                        "INFO_BOUTIQUE":True,
                        "id_produto":78,
                        "id_produto_pai":78,
                        "id_loja":34,
                        "id_empresa":34,
                        "pn_produto":"43957-86",
                        "preco":78.99,
                        "preco_desconto":78.99,
                        "preco_original":78.99,
                        "desconto":0,
                        "estoque":2,
                        "estoque_minimo":0,
                        "info_boutique":True,
                        "info_gerais":{
                            "segmento": "Motocicleta",
                            "foto": "78/360/Lv1/img01.jpg",
                            "largura": 9.5,
                            "peso": 0.8,
                            "altura": 11.5,
                            "subgrupo": "Pastilhas de Freio",
                            "tamanho_unico": "",
                            "profundidade": 2.5,
                            "descricao": "Pastilha de Freio"
                        },
                        "categoria": [

                        ],
                        "cep_origem":"14096000",
                        "vendido_por":"Ribeirão Preto Harley-Davidson - Ribeirão Preto/SP",
                        "alias":"SP-RIB-01",
                        "status":"ATIVO",
                        "vitrine":{
                            "peso": 0.8,
                            "altura": 11.5,
                            "largura": 9.5,
                            "produto": 78,
                            "descricao": "Pastilha de Freio",
                            "profundidade": 2.5,
                            "segmento": "Motocicleta",
                            "foto": "78/360/Lv1/img01.jpg",
                            "subgrupo": "Pastilhas de Freio"
                        },
                        "data_atualizacao": ""
                    }
                ],
                "embalagem": [
                    {
                        "id": 1,
                        "nome": "Caixa A",
                        "largura": 29,
                        "altura": 23.5,
                        "profundidade": 15,
                        "peso_max_embalagem": 10,
                        "peso_max": 10,
                        "peso_itens": 0.84,
                        "volume_embalagem": 10222.5,
                        "volume_max": 10222.5,
                        "volume_itens": 273.125,
                        "volume_utilizado": 273.125,
                        "itens_embalagem": 1,
                        "itens_volume": 1,
                        "peso_utilizado": 8.4,
                        "peso_utilizado_percentual": 8.4,
                        "volume_utilizado_percentual": 2.67,
                        "produtos": [
                            {
                                "id": "78",
                                "id_produto_variacao": "78",
                                "segmento": "Motocicleta",
                                "subgrupo": "Pastilhas de Freio",
                                "descricao": "Pastilha de Freio",
                                "codigosoriginais": [
                                    "43957-86E",
                                    "43957-86C",
                                    "43957-86B",
                                    "43957-86D",
                                    "43957-86A",
                                    "43957-86"
                                ],
                                "foto":"78/360/Lv1/img01.jpg",
                                "vendido_por":"Ribeirão Preto Harley-Davidson - Ribeirão Preto/SP",
                                "id_loja":34,
                                "cep_origem":"14096000",
                                "INFO_BOUTIQUE":True,
                                "quantidade":1,
                                "preco_final":78.99,
                                "estoque":2,
                                "largura":9.5,
                                "altura":11.5,
                                "profundidade":2.5,
                                "peso":0.8,
                                "volume":273.125,
                                "embalagem":[

                                ],
                                "posicao":[
                                    "altura",
                                    "largura",
                                    "profundidade"
                                ]
                            }
                        ],
                        "unidade":"cm cubicos",
                        "preco_final":78.99
                    }
                ],
                "vendido_por":"Ribeirão Preto Harley-Davidson - Ribeirão Preto/SP",
                "frete":[
                    {
                        "empresa": "Correios",
                        "entrega_metodo_tipo": "EXPRESS",
                        "entrega_metodo_nome": "Correios Sedex",
                        "entrega_metodo_id": "2",
                        "entrega_custo_final": 37.23,
                        "entrega_estimada_dias": 5
                    }
                ]
            }
        ]
    }

def ssr_verifica_frete_4():
    return{
        "cep_destino": "07929050",
        "url": "https://ssr.e-peca.com.br/checkout/pagamento",
        "produtos": [
            {
                "id": "732",
                "id_produto_variacao": "732",
                "preco_final": 7.63,
                "quantidade": 1,
                "codigosoriginais": [
                    "10200105"
                ]
            }
        ]
    }

def ssr_calculo_frete_4():
    return{
        "cliente": {
            "id_identificador": "45368311850",
            "email": "joaomarcos@e-peca.com.br",
            "nome_razao": "João Marcos dos Santos Silva",
            "endereco_cobranca": {
                "uf": "SP",
                "cep": "07929050",
                "nro": "159",
                "obs": None,
                "bairro": "Jardim",
                "cidade": "Francisco Morato",
                "logradouro": "Rua das Palmeiras",
                "complemento": "Próximo a escola"
            },
            "endereco_entrega": {
                "uf": "SP",
                "cep": "07929050",
                "nro": "159",
                "obs": None,
                "bairro": "Jardim",
                "cidade": "Francisco Morato",
                "logradouro": "Rua das Palmeiras",
                "complemento": "Próximo a escola"
            }
        },
        "cupom_desconto": {
            "nome": "",
            "valor_total_produtos": 7.63
        },
        "origens": [
            {
                "cep_origem": "86020000",
                "cep_destino": "07929050",
                "url": "",
                "produtos": [
                    {
                        "id": "732",
                        "id_produto_variacao": 732,
                        "preco_final": 7.63,
                        "quantidade": 1,
                        "codigosoriginais": [
                            "10200105"
                        ],
                        "subgrupo":"Parafusos",
                        "segmento":"Motocicleta",
                        "descricao":"Parafuso",
                        "largura":7.5,
                        "altura":13,
                        "profundidade":0.5,
                        "peso":0.03,
                        "foto":"732/upload/10200105_AVULSA_01.jpg",
                        "INFO_BOUTIQUE":True,
                        "id_produto":732,
                        "id_produto_pai":732,
                        "id_loja":5,
                        "id_empresa":5,
                        "pn_produto":"10200105",
                        "preco":7.63,
                        "preco_desconto":7.63,
                        "preco_original":7.63,
                        "desconto":0,
                        "estoque":10,
                        "estoque_minimo":0,
                        "info_boutique":True,
                        "info_gerais":{
                            "segmento": "Motocicleta",
                            "foto": "732/upload/10200105_AVULSA_01.jpg",
                            "largura": 7.5,
                            "peso": 0.03,
                            "altura": 13,
                            "subgrupo": "Parafusos",
                            "tamanho_unico": "",
                            "profundidade": 0.5,
                            "descricao": "Parafuso"
                        },
                        "categoria": [

                        ],
                        "cep_origem":"86020000",
                        "vendido_por":"Red Wheel Harley-Davidson - Londrina/PR",
                        "alias":"PR-LON-01",
                        "status":"ATIVO",
                        "vitrine":{
                            "peso": 0.03,
                            "altura": 13,
                            "largura": 7.5,
                            "produto": 732,
                            "descricao": "Parafuso",
                            "profundidade": 0.5,
                            "segmento": "Motocicleta",
                            "foto": "732/upload/10200105_AVULSA_01.jpg",
                            "subgrupo": "Parafusos"
                        },
                        "data_atualizacao": ""
                    }
                ],
                "embalagem": [
                    {
                        "id": 1,
                        "nome": "Caixa A",
                        "largura": 29,
                        "altura": 23.5,
                        "profundidade": 15,
                        "peso_max_embalagem": 10,
                        "peso_max": 10,
                        "peso_itens": 0.032,
                        "volume_embalagem": 10222.5,
                        "volume_max": 10222.5,
                        "volume_itens": 48.75,
                        "volume_utilizado": 48.75,
                        "itens_embalagem": 1,
                        "itens_volume": 1,
                        "peso_utilizado": 0.32,
                        "peso_utilizado_percentual": 0.32,
                        "volume_utilizado_percentual": 0.48,
                        "produtos": [
                            {
                                "id": "732",
                                "id_produto_variacao": "732",
                                "segmento": "Motocicleta",
                                "subgrupo": "Parafusos",
                                "descricao": "Parafuso",
                                "codigosoriginais": [
                                    "10200105"
                                ],
                                "foto":"732/upload/10200105_AVULSA_01.jpg",
                                "vendido_por":"Red Wheel Harley-Davidson - Londrina/PR",
                                "id_loja":5,
                                "cep_origem":"86020000",
                                "INFO_BOUTIQUE":True,
                                "quantidade":1,
                                "preco_final":7.63,
                                "estoque":10,
                                "largura":7.5,
                                "altura":13,
                                "profundidade":0.5,
                                "peso":0.03,
                                "volume":48.75,
                                "embalagem":[

                                ],
                                "posicao":[
                                    "altura",
                                    "largura",
                                    "profundidade"
                                ]
                            }
                        ],
                        "unidade":"cm cubicos",
                        "preco_final":7.63
                    }
                ],
                "vendido_por":"Red Wheel Harley-Davidson - Londrina/PR",
                "frete":[
                    {
                        "empresa": "Jadlog",
                        "entrega_metodo_tipo": "STANDARD",
                        "entrega_metodo_nome": "JadLog Standard",
                        "entrega_metodo_id": "3",
                        "entrega_custo_final": 22.94,
                        "entrega_estimada_dias": 11
                    }
                ]
            }
        ]
    }

def ssr_pedido_valido_visa_2():
    return{
        "cliente": {
            "id_identificador": "45368311850",
            "email": "joaomarcos@e-peca.com.br",
            "nome_razao": "João Marcos dos Santos Silva",
            "endereco_cobranca": {
                "uf": "SP",
                "cep": "07929050",
                "nro": "159",
                "obs": None,
                "bairro": "Jardim",
                "cidade": "Francisco Morato",
                "logradouro": "Rua das Palmeiras",
                "complemento": "Próximo a escola"
            },
            "endereco_entrega": {
                "uf": "SP",
                "cep": "07929050",
                "nro": "159",
                "obs": None,
                "bairro": "Jardim",
                "cidade": "Francisco Morato",
                "logradouro": "Rua das Palmeiras",
                "complemento": "Próximo a escola"
            }
        },
        "forma_pagamento": {
            "id": 1,
            "nome": "Visa Crédito",
            "n_parcelas": 1,
            "detalhes_pagamento": {
                "hash_cartao": "38ddc6a5b83a98095ec7a59f3d57c7dc15ec8b2fa3d39ba21ff9bba251cfd136bdef398ad7ffe489a913bcd0f1519de5dfa26aa912af4850fad205d451a5cc10",
                "pagador": {
                    "nome": "João Marcos",
                    "identificador": "45368311850",
                    "dt_nascimento": "29/09/1994",
                    "telefone": {
                        "ddd": "11",
                        "numero": "994757788"
                    }
                }
            }
        },
        "cupom_desconto": {
            "nome": "",
            "valor_total_produtos": 7.63
        },
        "origens": [
            {
                "cep_origem": "86020000",
                "cep_destino": "07929050",
                "url": "",
                "produtos": [
                    {
                        "id": "732",
                        "id_produto_variacao": 732,
                        "preco_final": 7.63,
                        "quantidade": 1,
                        "codigosoriginais": [
                            "10200105"
                        ],
                        "subgrupo":"Parafusos",
                        "segmento":"Motocicleta",
                        "descricao":"Parafuso",
                        "largura":7.5,
                        "altura":13,
                        "profundidade":0.5,
                        "peso":0.03,
                        "foto":"732/upload/10200105_AVULSA_01.jpg",
                        "INFO_BOUTIQUE":True,
                        "id_produto":732,
                        "id_produto_pai":732,
                        "id_loja":5,
                        "id_empresa":5,
                        "pn_produto":"10200105",
                        "preco":7.63,
                        "preco_desconto":7.63,
                        "preco_original":7.63,
                        "desconto":0,
                        "estoque":10,
                        "estoque_minimo":0,
                        "info_boutique":True,
                        "info_gerais":{
                            "segmento": "Motocicleta",
                            "foto": "732/upload/10200105_AVULSA_01.jpg",
                            "largura": 7.5,
                            "peso": 0.03,
                            "altura": 13,
                            "subgrupo": "Parafusos",
                            "tamanho_unico": "",
                            "profundidade": 0.5,
                            "descricao": "Parafuso"
                        },
                        "categoria": [

                        ],
                        "cep_origem":"86020000",
                        "vendido_por":"Red Wheel Harley-Davidson - Londrina/PR",
                        "alias":"PR-LON-01",
                        "status":"ATIVO",
                        "vitrine":{
                            "peso": 0.03,
                            "altura": 13,
                            "largura": 7.5,
                            "produto": 732,
                            "descricao": "Parafuso",
                            "profundidade": 0.5,
                            "segmento": "Motocicleta",
                            "foto": "732/upload/10200105_AVULSA_01.jpg",
                            "subgrupo": "Parafusos"
                        },
                        "data_atualizacao": ""
                    }
                ],
                "embalagem": [
                    {
                        "id": 1,
                        "nome": "Caixa A",
                        "largura": 29,
                        "altura": 23.5,
                        "profundidade": 15,
                        "peso_max_embalagem": 10,
                        "peso_max": 10,
                        "peso_itens": 0.032,
                        "volume_embalagem": 10222.5,
                        "volume_max": 10222.5,
                        "volume_itens": 48.75,
                        "volume_utilizado": 48.75,
                        "itens_embalagem": 1,
                        "itens_volume": 1,
                        "peso_utilizado": 0.32,
                        "peso_utilizado_percentual": 0.32,
                        "volume_utilizado_percentual": 0.48,
                        "produtos": [
                            {
                                "id": "732",
                                "id_produto_variacao": "732",
                                "segmento": "Motocicleta",
                                "subgrupo": "Parafusos",
                                "descricao": "Parafuso",
                                "codigosoriginais": [
                                    "10200105"
                                ],
                                "foto":"732/upload/10200105_AVULSA_01.jpg",
                                "vendido_por":"Red Wheel Harley-Davidson - Londrina/PR",
                                "id_loja":5,
                                "cep_origem":"86020000",
                                "INFO_BOUTIQUE":True,
                                "quantidade":1,
                                "preco_final":7.63,
                                "estoque":10,
                                "largura":7.5,
                                "altura":13,
                                "profundidade":0.5,
                                "peso":0.03,
                                "volume":48.75,
                                "embalagem":[

                                ],
                                "posicao":[
                                    "altura",
                                    "largura",
                                    "profundidade"
                                ]
                            }
                        ],
                        "unidade":"cm cubicos",
                        "preco_final":7.63
                    }
                ],
                "vendido_por":"Red Wheel Harley-Davidson - Londrina/PR",
                "frete":[
                    {
                        "empresa": "Jadlog",
                        "entrega_metodo_tipo": "STANDARD",
                        "entrega_metodo_nome": "JadLog Standard",
                        "entrega_metodo_id": "3",
                        "entrega_custo_final": 22.94,
                        "entrega_estimada_dias": 11
                    }
                ]
            }
        ]
    }


def ssr_pedido_valido():

    return{
        "cliente": {
            "id_identificador": "45368311850",
            "email": "joaomarcos@e-peca.com.br",
            "nome_razao": "João Marcos dos Santos Silva",
            "endereco_cobranca": {
                "uf": "SP",
                "cep": "07929050",
                "nro": "159",
                "obs": "Escola Chico Xavier",
                "bairro": "Jardim",
                "cidade": "Francisco Morato",
                "logradouro": "Rua das Palmeiras",
                "complemento": "Próximo a escola"
            },
            "endereco_entrega": {
                "uf": "SP",
                "cep": "07929050",
                "nro": "159",
                "obs": "Escola Chico Xavier",
                "bairro": "Jardim",
                "cidade": "Francisco Morato",
                "logradouro": "Rua das Palmeiras",
                "complemento": "Próximo a escola"
            }
        },
        "forma_pagamento": {
            "id": 7,
            "nome": "Mastercard Crédito",
            "n_parcelas": 1,
            "detalhes_pagamento": {
                "hash_cartao": "639070e655fba341da78011d0cf267a6b3a1a9b9b65ce510c224938e684201951fca6656e47146afa07d6fa11a94024ad2101b76be681026b117ef8a671ccf3b",
                "pagador": {
                    "nome": "teste",
                    "identificador": "45368311850",
                    "dt_nascimento": "29/09/1994",
                    "telefone": {
                        "ddd": "11",
                        "numero": "994757788"
                    }
                }
            }
        },
        "cupom_desconto": {
            "nome": "",
            "valor_total_produtos": 788.96
        },
        "origens": [
            {
                "cep_origem": "80740000",
                "cep_destino": "07929050",
                "url": "",
                "produtos": [
                    {
                        "id": "1321",
                        "id_produto_variacao": 1321,
                        "preco_final": 788.96,
                        "quantidade": 1,
                        "codigosoriginais": [
                            "56162-09"
                        ],
                        "subgrupo":"Tampas de Manopla",
                        "segmento":"Motocicleta",
                        "descricao":"Tampa de Manopla",
                        "largura":7.5,
                        "altura":12,
                        "profundidade":1,
                        "peso":0.02,
                        "foto":"1321/upload/56162-09 I.jpg",
                        "INFO_BOUTIQUE":True,
                        "id_produto":1321,
                        "id_produto_pai":1321,
                        "id_loja":4,
                        "id_empresa":4,
                        "pn_produto":"56162-09",
                        "preco":788.96,
                        "preco_desconto":788.96,
                        "preco_original":788.96,
                        "desconto":0,
                        "estoque":87,
                        "estoque_minimo":0,
                        "info_boutique":True,
                        "info_gerais":{
                            "segmento": "Motocicleta",
                            "foto": "1321/upload/56162-09 I.jpg",
                            "largura": 7.5,
                            "peso": 0.02,
                            "altura": 12,
                            "subgrupo": "Tampas de Manopla",
                            "tamanho_unico": "",
                            "profundidade": 1,
                            "descricao": "Tampa de Manopla"
                        },
                        "categoria": [

                        ],
                        "cep_origem":"80740000",
                        "vendido_por":"The One Harley-Davidson - Curitiba/PR",
                        "alias":"PR-CWB-01",
                        "status":"ATIVO",
                        "vitrine":{
                            "peso": 0.02,
                            "altura": 12,
                            "largura": 7.5,
                            "produto": 1321,
                            "descricao": "Tampa de Manopla",
                            "profundidade": 1,
                            "segmento": "Motocicleta",
                            "foto": "1321/upload/56162-09 I.jpg",
                            "subgrupo": "Tampas de Manopla"
                        },
                        "data_atualizacao": ""
                    }
                ],
                "embalagem": [
                    {
                        "id": 1,
                        "nome": "Caixa A",
                        "largura": 29,
                        "altura": 23.5,
                        "profundidade": 15,
                        "peso_max_embalagem": 10,
                        "peso_max": 10,
                        "peso_itens": 0.021,
                        "volume_embalagem": 10222.5,
                        "volume_max": 10222.5,
                        "volume_itens": 90,
                        "volume_utilizado": 90,
                        "itens_embalagem": 1,
                        "itens_volume": 1,
                        "peso_utilizado": 0.21,
                        "peso_utilizado_percentual": 0.21,
                        "volume_utilizado_percentual": 0.88,
                        "produtos": [
                            {
                                "id": "1321",
                                "id_produto_variacao": "1321",
                                "segmento": "Motocicleta",
                                "subgrupo": "Tampas de Manopla",
                                "descricao": "Tampa de Manopla",
                                "codigosoriginais": [
                                    "56162-09"
                                ],
                                "foto":"1321/upload/56162-09 I.jpg",
                                "vendido_por":"The One Harley-Davidson - Curitiba/PR",
                                "id_loja":4,
                                "cep_origem":"80740000",
                                "INFO_BOUTIQUE":True,
                                "quantidade":1,
                                "preco_final":788.96,
                                "estoque":87,
                                "largura":7.5,
                                "altura":12,
                                "profundidade":1,
                                "peso":0.02,
                                "volume":90,
                                "embalagem":[

                                ],
                                "posicao":[
                                    "altura",
                                    "largura",
                                    "profundidade"
                                ]
                            }
                        ],
                        "unidade":"cm cubicos",
                        "preco_final":788.96
                    }
                ],
                "vendido_por":"The One Harley-Davidson - Curitiba/PR",
                "frete":[
                    {
                        "empresa": "Retirada Na Loja",
                        "entrega_custo_final": 0,
                        "entrega_estimada_dias": 1,
                        "entrega_metodo_id": 195,
                        "entrega_metodo_nome": "Retirada na Loja",
                        "entrega_metodo_tipo": "PICKUP"
                    }
                ]
            }
        ]
    }


def ssr_login():

    return{
        "email": "joaomarcos@e-peca.com.br",
        "senha": "123456joao"
    }


def ssr_login_sem_sucesso():

    return{
        "email": "joaomarcos@e-peca.com.br",
        "senha": "2343564643"
    }


def ssr_login_senha_curta():

    return{
        "email": "joaomarcos@e-peca.com.br",
        "senha": "123"
    }


def ssr_login_com_email_valido_senha_invalida():

    return{
        "email": "joaomarcos@e-peca.com.br",
        "senha": "ASFDGFHJH"
    }


def ssr_login_com_senha_valida_email_invalido():

    return{
        "email": "teste@e-peca.com.br",
        "senha": "123456joao"
    }


def ssr_verifica_frete():

    return{
        "cep_destino": "01025010",
        "url": "https://ssr.e-peca.com.br/checkout/carrinho",
        "produtos": [
            {
                "id": "78",
                "id_produto_variacao": "78",
                "preco_final": 78.99,
                "quantidade": 2,
                "codigosoriginais": [
                    "43957-86E",
                    "43957-86C",
                    "43957-86B",
                    "43957-86D",
                    "43957-86A",
                    "43957-86"
                ]
            },
            {
                "id": "101",
                "id_produto_variacao": "101",
                "preco_final": 220.89,
                "quantidade": 1,
                "codigosoriginais": [
                    "46127-04"
                ]
            }
        ]

    }


def ssr_frete_invalido():

    return{
        "cep_destino": "00000-000",
        "url": "https://ssr.e-peca.com.br/produto/1807/kit-de-juntas-de-primaria-harley-davidson",
        "produtos": [
            {
                "id": 1807,
                "id_produto_variacao": 1807,
                "preco_final": 10,
                "quantidade": 1,
                "codigosoriginais": [
                    "25700746"
                ]
            }
        ]
    }


def ssr_frete_invalido_1():

    return{
        "cep_destino": "12345-678",
        "url": "https://ssr.e-peca.com.br/produto/1807/kit-de-juntas-de-primaria-harley-davidson",
        "produtos": [
            {
                "id": 1807,
                "id_produto_variacao": 1807,
                "preco_final": 10,
                "quantidade": 1,
                "codigosoriginais": [
                    "25700746"
                ]
            }
        ]
    }


def ssr_frete_invalido_2():

    return{
        "cep_destino": "22222-222",
        "url": "https://ssr.e-peca.com.br/produto/1807/kit-de-juntas-de-primaria-harley-davidson",
        "produtos": [
            {
                "id": 1807,
                "id_produto_variacao": 1807,
                "preco_final": 10,
                "quantidade": 1,
                "codigosoriginais": [
                    "25700746"
                ]
            }
        ]
    }


def ssr_frete_invalido_3():

    return{
        "cep_destino": "88888-888",
        "url": "https://ssr.e-peca.com.br/produto/1807/kit-de-juntas-de-primaria-harley-davidson",
        "produtos": [
            {
                "id": 1807,
                "id_produto_variacao": 1807,
                "preco_final": 10,
                "quantidade": 1,
                "codigosoriginais": [
                    "25700746"
                ]
            }
        ]
    }


def ssr_frete_curto():

    return{
        "cep_destino": "07929-0",
        "url": "https://ssr.e-peca.com.br/produto/1807/kit-de-juntas-de-primaria-harley-davidson",
        "produtos": [
            {
                "id": 1807,
                "id_produto_variacao": 1807,
                "preco_final": 10,
                "quantidade": 1,
                "codigosoriginais": [
                    "25700746"
                ]
            }
        ]
    }


def ssr_cep_sao_paulo():

    return{
        "cep_destino": "01153-000",
        "url": "https://ssr.e-peca.com.br/produto/1807/kit-de-juntas-de-primaria-harley-davidson",
        "produtos": [
            {
                "id": 1807,
                "id_produto_variacao": 1807,
                "preco_final": 10,
                "quantidade": 1,
                "codigosoriginais": [
                    "25700746"
                ]
            }
        ]
    }


def ssr_cep_alagoas():

    return{
        "cep_destino": "57010-002",
        "url": "https://ssr.e-peca.com.br/produto/1807/kit-de-juntas-de-primaria-harley-davidson",
        "produtos": [
            {
                "id": 1807,
                "id_produto_variacao": 1807,
                "preco_final": 10,
                "quantidade": 1,
                "codigosoriginais": [
                    "25700746"
                ]
            }
        ]
    }


def ssr_cep_amapa():

    return{
        "cep_destino": "68950-000",
        "url": "https://ssr.e-peca.com.br/produto/1807/kit-de-juntas-de-primaria-harley-davidson",
        "produtos": [
            {
                "id": 1807,
                "id_produto_variacao": 1807,
                "preco_final": 10,
                "quantidade": 1,
                "codigosoriginais": [
                    "25700746"
                ]
            }
        ]
    }


def ssr_cep_bahia():

    return{
        "cep_destino": "40020-025",
        "url": "https://ssr.e-peca.com.br/produto/1807/kit-de-juntas-de-primaria-harley-davidson",
        "produtos": [
            {
                "id": 1807,
                "id_produto_variacao": 1807,
                "preco_final": 10,
                "quantidade": 1,
                "codigosoriginais": [
                    "25700746"
                ]
            }
        ]
    }


def ssr_cep_ceara():

    return{
        "cep_destino": "60010-030",
        "url": "https://ssr.e-peca.com.br/produto/1807/kit-de-juntas-de-primaria-harley-davidson",
        "produtos": [
            {
                "id": 1807,
                "id_produto_variacao": 1807,
                "preco_final": 10,
                "quantidade": 1,
                "codigosoriginais": [
                    "25700746"
                ]
            }
        ]
    }


def ssr_frete_com_simbolos():

    return{
        "cep_destino": "@#$@!-025",
        "url": "https://ssr.e-peca.com.br/produto/1807/kit-de-juntas-de-primaria-harley-davidson",
        "produtos": [
            {
                "id": 1807,
                "id_produto_variacao": 1807,
                "preco_final": 10,
                "quantidade": 1,
                "codigosoriginais": [
                    "25700746"
                ]
            }
        ]
    }


def ssr_calculo_frete():
    return{
        "cliente": {
            "id_identificador": "45368311850",
            "email": "joaomarcos@e-peca.com.br",
            "nome_razao": "João Marcos dos Santos Silva",
            "endereco_cobranca": {
                "uf": "SP",
                "cep": "07929050",
                "nro": "159",
                "obs": "Escola Chico Xavier",
                "bairro": "Jardim",
                "cidade": "Francisco Morato",
                "logradouro": "Rua das Palmeiras",
                "complemento": "Próximo a escola"
            },
            "endereco_entrega": {
                "uf": "SP",
                "cep": "07929050",
                "nro": "159",
                "obs": "Escola Chico Xavier",
                "bairro": "Jardim",
                "cidade": "Francisco Morato",
                "logradouro": "Rua das Palmeiras",
                "complemento": "Próximo a escola"
            }
        },
        "cupom_desconto": {
            "nome": ""
        },
        "origens": [
            {
                "cep_origem": "14096000",
                "cep_destino": "07929050",
                "url": "",
                "produtos": [
                    {
                        "id": "78",
                        "id_produto_variacao": 78,
                        "preco_final": 78.99,
                        "quantidade": 2,
                        "codigosoriginais": [
                            "43957-86E",
                            "43957-86C",
                            "43957-86B",
                            "43957-86D",
                            "43957-86A",
                            "43957-86"
                        ],
                        "subgrupo":"Pastilhas de Freio",
                        "segmento":"Motocicleta",
                        "descricao":"Pastilha de Freio",
                        "largura":9.5,
                        "altura":11.5,
                        "profundidade":2.5,
                        "peso":0.8,
                        "foto":"78/360/Lv1/img01.jpg",
                        "INFO_BOUTIQUE":True,
                        "id_produto":78,
                        "id_produto_pai":78,
                        "id_loja":34,
                        "id_empresa":34,
                        "pn_produto":"43957-86",
                        "preco":78.99,
                        "preco_desconto":78.99,
                        "preco_original":78.99,
                        "desconto":0,
                        "estoque":2,
                        "estoque_minimo":0,
                        "info_boutique":True,
                        "info_gerais":{
                            "segmento": "Motocicleta",
                            "foto": "78/360/Lv1/img01.jpg",
                            "largura": 9.5,
                            "peso": 0.8,
                            "altura": 11.5,
                            "subgrupo": "Pastilhas de Freio",
                            "tamanho_unico": "",
                            "profundidade": 2.5,
                            "descricao": "Pastilha de Freio"
                        },
                        "categoria": [

                        ],
                        "cep_origem":"14096000",
                        "vendido_por":"Ribeirão Preto Harley-Davidson - Ribeirão Preto/SP",
                        "alias":"SP-RIB-01",
                        "status":"ATIVO",
                        "vitrine":{
                            "peso": 0.8,
                            "altura": 11.5,
                            "largura": 9.5,
                            "produto": 78,
                            "descricao": "Pastilha de Freio",
                            "profundidade": 2.5,
                            "segmento": "Motocicleta",
                            "foto": "78/360/Lv1/img01.jpg",
                            "subgrupo": "Pastilhas de Freio"
                        },
                        "data_atualizacao": ""
                    }
                ],
                "embalagem": [
                    {
                        "id": 1,
                        "nome": "Caixa A",
                        "largura": 29,
                        "altura": 23.5,
                        "profundidade": 15,
                        "peso_max_embalagem": 10,
                        "peso_max": 10,
                        "peso_itens": 2.52,
                        "volume_embalagem": 10222.5,
                        "volume_max": 10222.5,
                        "volume_itens": 546.25,
                        "volume_utilizado": 546.25,
                        "itens_embalagem": 2,
                        "itens_volume": 2,
                        "peso_utilizado": 25.2,
                        "peso_utilizado_percentual": 25.2,
                        "volume_utilizado_percentual": 5.34,
                        "produtos": [
                            {
                                "id": "78",
                                "id_produto_variacao": "78",
                                "segmento": "Motocicleta",
                                "subgrupo": "Pastilhas de Freio",
                                "descricao": "Pastilha de Freio",
                                "codigosoriginais": [
                                    "43957-86E",
                                    "43957-86C",
                                    "43957-86B",
                                    "43957-86D",
                                    "43957-86A",
                                    "43957-86"
                                ],
                                "foto":"78/360/Lv1/img01.jpg",
                                "vendido_por":"Ribeirão Preto Harley-Davidson - Ribeirão Preto/SP",
                                "id_loja":34,
                                "cep_origem":"14096000",
                                "INFO_BOUTIQUE":True,
                                "quantidade":1,
                                "preco_final":78.99,
                                "estoque":2,
                                "largura":9.5,
                                "altura":11.5,
                                "profundidade":5,
                                "peso":1.6,
                                "volume":273.125,
                                "embalagem":[

                                ],
                                "posicao":[
                                    "altura",
                                    "largura",
                                    "profundidade"
                                ]
                            },
                            {
                                "id": "78",
                                "id_produto_variacao": "78",
                                "segmento": "Motocicleta",
                                "subgrupo": "Pastilhas de Freio",
                                "descricao": "Pastilha de Freio",
                                "codigosoriginais": [
                                    "43957-86E",
                                    "43957-86C",
                                    "43957-86B",
                                    "43957-86D",
                                    "43957-86A",
                                    "43957-86"
                                ],
                                "foto":"78/360/Lv1/img01.jpg",
                                "vendido_por":"Ribeirão Preto Harley-Davidson - Ribeirão Preto/SP",
                                "id_loja":34,
                                "cep_origem":"14096000",
                                "INFO_BOUTIQUE":True,
                                "quantidade":1,
                                "preco_final":78.99,
                                "estoque":2,
                                "largura":9.5,
                                "altura":11.5,
                                "profundidade":2.5,
                                "peso":0.8,
                                "volume":273.125,
                                "embalagem":[

                                ],
                                "posicao":[
                                    "altura",
                                    "largura",
                                    "profundidade"
                                ]
                            }
                        ],
                        "unidade":"cm cubicos",
                        "preco_final":157.98
                    }
                ],
                "vendido_por":"Ribeirão Preto Harley-Davidson - Ribeirão Preto/SP",
                "frete":[

                ]
            },
            {
                "cep_origem": "80740000",
                "cep_destino": "07929050",
                "url": "",
                "produtos": [
                    {
                        "id": "101",
                        "id_produto_variacao": 101,
                        "preco_final": 220.89,
                        "quantidade": 1,
                        "codigosoriginais": [
                            "46127-04"
                        ],
                        "subgrupo":"Mesas de Garfo",
                        "segmento":"Motocicleta",
                        "descricao":"Mesa de Garfo",
                        "largura":20.5,
                        "altura":25,
                        "profundidade":19,
                        "peso":2.01,
                        "foto":"101/360/Lv1/img01.jpg",
                        "INFO_BOUTIQUE":True,
                        "id_produto":101,
                        "id_produto_pai":101,
                        "id_loja":4,
                        "id_empresa":4,
                        "pn_produto":"46127-04",
                        "preco":220.89,
                        "preco_desconto":220.89,
                        "preco_original":220.89,
                        "desconto":0,
                        "estoque":3,
                        "estoque_minimo":0,
                        "info_boutique":True,
                        "info_gerais":{
                            "segmento": "Motocicleta",
                            "foto": "101/360/Lv1/img01.jpg",
                            "largura": 20.5,
                            "peso": 2.01,
                            "altura": 25,
                            "subgrupo": "Mesas de Garfo",
                            "tamanho_unico": "",
                            "profundidade": 19,
                            "descricao": "Mesa de Garfo"
                        },
                        "categoria": [

                        ],
                        "cep_origem":"80740000",
                        "vendido_por":"The One Harley-Davidson - Curitiba/PR",
                        "alias":"PR-CWB-01",
                        "status":"ATIVO",
                        "vitrine":{
                            "peso": 2.01,
                            "altura": 25,
                            "largura": 20.5,
                            "produto": 101,
                            "descricao": "Mesa de Garfo",
                            "profundidade": 19,
                            "segmento": "Motocicleta",
                            "foto": "101/360/Lv1/img01.jpg",
                            "subgrupo": "Mesas de Garfo"
                        },
                        "data_atualizacao": ""
                    }
                ],
                "embalagem": [
                    {
                        "id": 2,
                        "nome": "Caixa B",
                        "largura": 55,
                        "altura": 36,
                        "profundidade": 28,
                        "peso_max_embalagem": 10,
                        "peso_max": 10,
                        "peso_itens": 2.111,
                        "volume_embalagem": 55440,
                        "volume_max": 55440,
                        "volume_itens": 9737.5,
                        "volume_utilizado": 9737.5,
                        "itens_embalagem": 1,
                        "itens_volume": 1,
                        "peso_utilizado": 21.11,
                        "peso_utilizado_percentual": 21.11,
                        "volume_utilizado_percentual": 17.56,
                        "produtos": [
                            {
                                "id": "101",
                                "id_produto_variacao": "101",
                                "segmento": "Motocicleta",
                                "subgrupo": "Mesas de Garfo",
                                "descricao": "Mesa de Garfo",
                                "codigosoriginais": [
                                    "46127-04"
                                ],
                                "foto":"101/360/Lv1/img01.jpg",
                                "vendido_por":"The One Harley-Davidson - Curitiba/PR",
                                "id_loja":4,
                                "cep_origem":"80740000",
                                "INFO_BOUTIQUE":True,
                                "quantidade":1,
                                "preco_final":220.89,
                                "estoque":3,
                                "largura":20.5,
                                "altura":25,
                                "profundidade":19,
                                "peso":2.01,
                                "volume":9737.5,
                                "embalagem":[

                                ],
                                "posicao":[
                                    "altura",
                                    "largura",
                                    "profundidade"
                                ]
                            }
                        ],
                        "unidade":"cm cubicos",
                        "preco_final":220.89
                    }
                ],
                "vendido_por":"The One Harley-Davidson - Curitiba/PR",
                "frete":[

                ]
            }
        ]
    }
