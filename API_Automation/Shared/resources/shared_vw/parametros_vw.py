from faker import Faker # pip install Faker
import random           # Do próprio python
fake = Faker()
cpf = random.randrange(00000000000, 99999999999)
email = fake.email()
nome = fake.name()
cpf_vazio = ""

def vw_cliente():
    return{
        "identificador": cpf,
        "email": email,
        "senha": "123456789jm",
        "nome_razao": nome,
        "detalhe_cliente": {
            "nome_razao": nome,
            "nome_fantasia": None,
            "tipo": "PF",
            "status": "ativo",
            "genero": "M",
            "email": email,
            "inscricao_estadual": "224956607",
            "dt_nascimento": "17/04/1996",
            "end_principal": {
                "uf": "SP",
                "cidade": "Francisco Morato",
                "bairro": "Jardim",
                "logradouro": "Rua das Seringueiras",
                "nro": "350",
                "complemento": "",
                "cep": "07929-000",
                "obs": None
            },
            "end_secundarios": [

            ],
            "telefones": [
                {
                    "descricao": "telefone01",
                    "numero": "(11) 940028922",
                    "tipo": ""
                },
                {
                    "descricao": "telefone02",
                    "numero": "",
                    "tipo": ""
                }
            ]
        }
    }

def vw_cliente_cpf_vazio():
    return{
        "identificador": "",
        "email": email,
        "senha": "123456789jm",
        "nome_razao": nome,
        "detalhe_cliente": {
            "nome_razao": nome,
            "nome_fantasia": None,
            "tipo": "PF",
            "status": "ativo",
            "genero": "M",
            "email": email,
            "inscricao_estadual": "224956607",
            "dt_nascimento": "17/04/1996",
            "end_principal": {
                "uf": "SP",
                "cidade": "Francisco Morato",
                "bairro": "Jardim",
                "logradouro": "Rua das Seringueiras",
                "nro": "350",
                "complemento": "",
                "cep": "07929-000",
                "obs": None
            },
            "end_secundarios": [

            ],
            "telefones": [
                {
                    "descricao": "telefone01",
                    "numero": "(11) 940028922",
                    "tipo": ""
                },
                {
                    "descricao": "telefone02",
                    "numero": "",
                    "tipo": ""
                }
            ]
        }
    }


def vw_cliente_ja_cadastrado():
    return{
        "identificador": cpf,
        "email": email,
        "senha": "123456789jm",
        "nome_razao": nome,
        "detalhe_cliente": {
            "nome_razao": nome,
            "nome_fantasia": None,
            "tipo": "PF",
            "status": "ativo",
            "genero": "M",
            "email": email,
            "inscricao_estadual": "224956607",
            "dt_nascimento": "17/04/1996",
            "end_principal": {
                "uf": "SP",
                "cidade": "Francisco Morato",
                "bairro": "Jardim",
                "logradouro": "Rua das Seringueiras",
                "nro": "350",
                "complemento": "",
                "cep": "07929-000",
                "obs": None
            },
            "end_secundarios": [

            ],
            "telefones": [
                {
                    "descricao": "telefone01",
                    "numero": "(11) 940028922",
                    "tipo": ""
                },
                {
                    "descricao": "telefone02",
                    "numero": "",
                    "tipo": ""
                }
            ]
        }
    }


def vw_estoque_disco():

    return{
        "cep_destino": "07950-250",
        "url": "https://vw.teste.e-peca.com.br/checkout/pagamento",
        "produtos": [
            {
                "id": "21",
                "id_produto_variacao": "21",
                "preco_final": 601.04,
                "quantidade": 1,
                "codigosoriginais": [
                    "JZW615301"
                ],
                "id_loja":47
            }
        ]
    }


def vw_verifica_frete_1():

    return{
        "cep_destino": "07950-250",
        "url": "https://vw.teste.e-peca.com.br/checkout/pagamento",
        "produtos": [
            {
                "id": "14",
                "id_produto_variacao": "14",
                "preco_final": 31.98,
                "quantidade": 1,
                "codigosoriginais": [
                    "JZZ129620C"
                ],
                "id_loja":51
            }
        ]
    }


def vw_verifica_frete_5():

    return{
        "cep_destino": "07929020",
        "url": "https://vw.teste.e-peca.com.br/checkout/carrinho",
        "produtos": [
            {
                "id": "21",
                "id_produto_variacao": "21",
                "preco_final": 601.04,
                "quantidade": 1,
                "codigosoriginais": [
                    "JZW615301"
                ],
                "id_loja":47
            },
            {
                "id": "57",
                "id_produto_variacao": "57",
                "preco_final": 104.25,
                "quantidade": 1,
                "codigosoriginais": [
                    "GJZW012R2"
                ],
                "id_loja":47
            }
        ]
    }


def vw_pedido_valido_1():
    return{
        "finger_print": "b71ed7776d9c278eb17ee2d74928212b0ab13fe5",
        "cliente": {
            "id_identificador": "81185859055",
            "email": "testeepeca@gmail.com",
            "nome_razao": "teste",
            "endereco_cobranca": {
                "uf": "SP",
                "cep": "07950-250",
                "nro": "106",
                "obs": None,
                "bairro": "Jardim Antomar",
                "cidade": "Francisco Morato",
                "logradouro": "Rua Luiz Vicentina Natalício",
                "complemento": ""
            },
            "endereco_entrega": {
                "uf": "SP",
                "cep": "07950-250",
                "nro": "106",
                "obs": None,
                "bairro": "Jardim Antomar",
                "cidade": "Francisco Morato",
                "logradouro": "Rua Luiz Vicentina Natalício",
                "complemento": ""
            }
        },
        "forma_pagamento": {
            "id": 99,
            "nome": "Mastercard Crédito",
            "n_parcelas": 1,
            "detalhes_pagamento": {
                "pagador": {
                    "payment_method_id": 99,
                    "card_name": "João Marcos",
                    "card_number": "5555555555554444",
                    "card_expdate_month": "12",
                    "card_expdate_year": "2027",
                    "card_cvv": "753",
                    "split": 1,
                    "identificador": "81185859055",
                    "dt_nascimento": "29/09/1994",
                    "telefone": {
                        "ddd": "11",
                        "numero": "111111111"
                    }
                }
            }
        },
        "cupom_desconto": {
            "nome": "",
            "valor_total_produtos": 104.25
        },
        "origens": [
            {
                "cep_origem": "01524-001",
                "cep_destino": "07950250",
                "url": "",
                "produtos": [
                    {
                        "id": "57",
                        "id_produto_variacao": "57",
                        "preco_final": 104.25,
                        "quantidade": 1,
                        "codigosoriginais": [
                            "GJZW012R2"
                        ],
                        "id_loja":47,
                        "subgrupo":"Aditivos de Radiador",
                        "segmento":"Veículos Leves",
                        "descricao":"Aditivo de Radiador",
                        "largura":9.2,
                        "altura":9.2,
                        "profundidade":20,
                        "peso":1.18,
                        "foto":"57/upload/GJZW012R2-1.JPG",
                        "INFO_BOUTIQUE":[

                        ],
                        "id_produto":"57",
                        "id_produto_pai":"57",
                        "id_empresa":47,
                        "pn_produto":"GJZW012R2",
                        "nome_marketplace":"EPECA",
                        "alias":"47-ERP-SINC-HBW",
                        "cep_origem":"01524-001",
                        "estoque_minimo":0,
                        "estoque_disponivel":47,
                        "estoque_seguranca":-2,
                        "filter":"",
                        "preco":104.25,
                        "preco_desconto":0,
                        "preco_prioritario":0,
                        "preco_majorado":104.25,
                        "preco_tabela":94.77,
                        "preco_manual":0,
                        "preco_publico":104.25,
                        "preco_selecionado":"MAJORADO",
                        "desconto":0,
                        "tamanho":"",
                        "tamanho_display":"",
                        "info_gerais":{
                            "segmento": "Veículos Leves",
                            "foto": "57/upload/GJZW012R2-1.JPG",
                            "largura": 9.2,
                            "altura": 9.2,
                            "peso": 1.18,
                            "subgrupo": "Aditivos de Radiador",
                            "categoria": [
                                {
                                    "departamento_nome": "Peças VW",
                                    "subgrupo_nome": "Aditivos de Radiador",
                                    "grupo_nome": "Aditivos de Radiador",
                                    "secao_nome": "Motor"
                                }
                            ],
                            "tamanho_unico": "",
                            "profundidade": 20,
                            "descricao": "Aditivo de Radiador"
                        },
                        "status": "ATIVO",
                        "data_cadastro": "2021-12-06T17:53:01.735261Z",
                        "data_atualizacao": "",
                        "data_ultima_compra": "2020-07-27T00:00:00.000Z",
                        "data_ultima_venda": "2020-07-31T00:00:00.000Z",
                        "vitrine": {
                            "peso": 1.18,
                            "altura": 9.2,
                            "largura": 9.2,
                            "produto": "57",
                            "descricao": "Aditivo de Radiador",
                            "profundidade": 20,
                            "segmento": "Veículos Leves",
                            "foto": "57/upload/GJZW012R2-1.JPG",
                            "subgrupo": "Aditivos de Radiador"
                        },
                        "vendido_por": "Piloto DMS/SINC",
                        "descricao_padrao": "Aditivo de Radiador",
                        "descricao_original": "Aditivo Radiador Original Volkswagen G12 Concentrado 1 Litro",
                        "timestamp": 0,
                        "codigos_originais": "GJZW012R2",
                        "codigo_original": "",
                        "foto_principal": "57/upload/GJZW012R2-1.JPG",
                        "estoque": 49
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
                        "peso_itens": 1.239,
                        "volume_embalagem": 10222.5,
                        "volume_max": 10222.5,
                        "volume_itens": 1692.8,
                        "volume_utilizado": 1692.8,
                        "itens_embalagem": 1,
                        "itens_volume": 1,
                        "peso_utilizado": 12.39,
                        "peso_utilizado_percentual": 12.39,
                        "volume_utilizado_percentual": 16.56,
                        "produtos": [
                            {
                                "id": "57",
                                "id_produto_variacao": "57",
                                "segmento": "Veículos Leves",
                                "subgrupo": "Aditivos de Radiador",
                                "descricao": "Aditivo de Radiador",
                                "codigosoriginais": [
                                    "GJZW012R2"
                                ],
                                "foto":"57/upload/GJZW012R2-1.JPG",
                                "vendido_por":"Piloto DMS/SINC",
                                "id_loja":47,
                                "cep_origem":"01524-001",
                                "INFO_BOUTIQUE":[

                                ],
                                "quantidade":1,
                                "preco_final":104.25,
                                "estoque":49,
                                "largura":9.2,
                                "altura":9.2,
                                "profundidade":20,
                                "peso":1.18,
                                "volume":1692.8,
                                "embalagem":[

                                ],
                                "posicao":[
                                    "profundidade",
                                    "largura",
                                    "altura"
                                ]
                            }
                        ],
                        "unidade":"cm cubicos",
                        "preco_final":104.25
                    }
                ],
                "vendido_por":"Piloto DMS/SINC",
                "frete":[
                    {
                        "empresa": "Correios",
                        "entrega_metodo_tipo": "EXPRESS",
                        "entrega_metodo_nome": "Correios Sedex",
                        "entrega_metodo_id": "2",
                        "entrega_custo_final": 22.82,
                        "entrega_estimada_dias": 2
                    }
                ]
            }
        ]
    }


def vw_pedido_valido_visa_1():
    return{
        "finger_print": "b71ed7776d9c278eb17ee2d74928212b0ab13fe5",
        "cliente": {
            "id_identificador": "81185859055",
            "email": "testeepeca@gmail.com",
            "nome_razao": "teste",
            "endereco_cobranca": {
                "uf": "SP",
                "cep": "07950-250",
                "nro": "106",
                "obs": None,
                "bairro": "Jardim Antomar",
                "cidade": "Francisco Morato",
                "logradouro": "Rua Luiz Vicentina Natalício",
                "complemento": ""
            },
            "endereco_entrega": {
                "uf": "SP",
                "cep": "07950-250",
                "nro": "106",
                "obs": None,
                "bairro": "Jardim Antomar",
                "cidade": "Francisco Morato",
                "logradouro": "Rua Luiz Vicentina Natalício",
                "complemento": ""
            }
        },
        "forma_pagamento": {
            "id": 104,
            "nome": "Visa Crédito",
            "n_parcelas": 1,
            "detalhes_pagamento": {
                "pagador": {
                    "payment_method_id": 104,
                    "card_name": "João Marcos",
                    "card_number": "4012888888881881",
                    "card_expdate_month": "12",
                    "card_expdate_year": "2026",
                    "card_cvv": "146",
                    "split": 1,
                    "identificador": "81185859055",
                    "dt_nascimento": "29/09/1994",
                    "telefone": {
                        "ddd": "11",
                        "numero": "111111111"
                    }
                }
            }
        },
        "cupom_desconto": {
            "nome": "",
            "valor_total_produtos": 31.98
        },
        "origens": [
            {
                "cep_origem": "13075-520",
                "cep_destino": "07950250",
                "url": "",
                "produtos": [
                    {
                        "id": "14",
                        "id_produto_variacao": "14",
                        "preco_final": 31.98,
                        "quantidade": 1,
                        "codigosoriginais": [
                            "JZZ129620C"
                        ],
                        "id_loja":51,
                        "subgrupo":"Filtros de Ar de Motor",
                        "segmento":"Veículos Leves",
                        "descricao":"Filtro de Ar de Motor",
                        "largura":21.5,
                        "altura":5.8,
                        "profundidade":21,
                        "peso":0.22,
                        "foto":"14/upload/JZZ129620C.JPG",
                        "INFO_BOUTIQUE":[

                        ],
                        "id_produto":"14",
                        "id_produto_pai":"14",
                        "id_empresa":51,
                        "pn_produto":"JZZ129620C",
                        "nome_marketplace":"EPECA",
                        "alias":"51-PILOTO-SERCON",
                        "cep_origem":"13075-520",
                        "estoque_minimo":0,
                        "estoque_disponivel":325,
                        "estoque_seguranca":0,
                        "filter":"",
                        "preco":31.98,
                        "preco_desconto":0,
                        "preco_prioritario":0,
                        "preco_majorado":31.98,
                        "preco_tabela":31.98,
                        "preco_manual":0,
                        "preco_publico":31.98,
                        "preco_selecionado":"MAJORADO",
                        "desconto":0,
                        "tamanho":"",
                        "tamanho_display":"",
                        "info_gerais":{
                            "segmento": "Veículos Leves",
                            "foto": "14/upload/JZZ129620C.JPG",
                            "largura": 21.5,
                            "altura": 5.8,
                            "peso": 0.22,
                            "subgrupo": "Filtros de Ar de Motor",
                            "categoria": [
                                {
                                    "departamento_nome": "Peças VW",
                                    "subgrupo_nome": "Filtros de Ar de Motor",
                                    "grupo_nome": "Filtros de Ar de Motor",
                                    "secao_nome": "Motor"
                                }
                            ],
                            "tamanho_unico": "",
                            "profundidade": 21,
                            "descricao": "Filtro de Ar de Motor"
                        },
                        "status": "ATIVO",
                        "data_cadastro": "2021-12-06T17:53:01.734654Z",
                        "data_atualizacao": "",
                        "data_ultima_compra": "2021-04-01T00:00:00+00:00",
                        "data_ultima_venda": "2021-04-01T00:00:00+00:00",
                        "vitrine": {
                            "peso": 0.22,
                            "altura": 5.8,
                            "largura": 21.5,
                            "produto": "14",
                            "descricao": "Filtro de Ar de Motor",
                            "profundidade": 21,
                            "segmento": "Veículos Leves",
                            "foto": "14/upload/JZZ129620C.JPG",
                            "subgrupo": "Filtros de Ar de Motor"
                        },
                        "vendido_por": "Piloto DMS/SERCON",
                        "descricao_padrao": "Filtro de Ar de Motor",
                        "descricao_original": "Filtro De Ar Motor Gol Fox Voyage Polo 1.6",
                        "timestamp": 0,
                        "codigos_originais": "JZZ129620C",
                        "codigo_original": "",
                        "foto_principal": "14/upload/JZZ129620C.JPG",
                        "estoque": 325
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
                        "peso_itens": 0.231,
                        "volume_embalagem": 10222.5,
                        "volume_max": 10222.5,
                        "volume_itens": 2618.7,
                        "volume_utilizado": 2618.7,
                        "itens_embalagem": 1,
                        "itens_volume": 1,
                        "peso_utilizado": 2.31,
                        "peso_utilizado_percentual": 2.31,
                        "volume_utilizado_percentual": 25.62,
                        "produtos": [
                            {
                                "id": "14",
                                "id_produto_variacao": "14",
                                "segmento": "Veículos Leves",
                                "subgrupo": "Filtros de Ar de Motor",
                                "descricao": "Filtro de Ar de Motor",
                                "codigosoriginais": [
                                    "JZZ129620C"
                                ],
                                "foto":"14/upload/JZZ129620C.JPG",
                                "vendido_por":"Piloto DMS/SERCON",
                                "id_loja":51,
                                "cep_origem":"13075-520",
                                "INFO_BOUTIQUE":[

                                ],
                                "quantidade":1,
                                "preco_final":31.98,
                                "estoque":325,
                                "largura":21.5,
                                "altura":5.8,
                                "profundidade":21,
                                "peso":0.22,
                                "volume":2618.7,
                                "embalagem":[

                                ],
                                "posicao":[
                                    "largura",
                                    "profundidade",
                                    "altura"
                                ]
                            }
                        ],
                        "unidade":"cm cubicos",
                        "preco_final":31.98
                    }
                ],
                "vendido_por":"Piloto DMS/SERCON",
                "frete":[
                    {
                        "empresa": "Correios",
                        "entrega_metodo_tipo": "EXPRESS",
                        "entrega_metodo_nome": "Correios Sedex",
                        "entrega_metodo_id": "2",
                        "entrega_custo_final": 17.08,
                        "entrega_estimada_dias": 3
                    }
                ]
            }
        ]
    }


def vw_calculo_frete_1():
    return{
        "finger_print": "b71ed7776d9c278eb17ee2d74928212b0ab13fe5",
        "cliente": {
            "id_identificador": "81185859055",
            "email": "testeepeca@gmail.com",
            "nome_razao": "teste",
            "endereco_cobranca": {
                "uf": "SP",
                "cep": "07950-250",
                "nro": "106",
                "obs": None,
                "bairro": "Jardim Antomar",
                "cidade": "Francisco Morato",
                "logradouro": "Rua Luiz Vicentina Natalício",
                "complemento": ""
            },
            "endereco_entrega": {
                "uf": "SP",
                "cep": "07950-250",
                "nro": "106",
                "obs": None,
                "bairro": "Jardim Antomar",
                "cidade": "Francisco Morato",
                "logradouro": "Rua Luiz Vicentina Natalício",
                "complemento": ""
            }
        },
        "cupom_desconto": {
            "nome": ""
        },
        "origens": [
            {
                "cep_origem": "13075-520",
                "cep_destino": "07950250",
                "url": "",
                "produtos": [
                    {
                        "id": "14",
                        "id_produto_variacao": "14",
                        "preco_final": 31.98,
                        "quantidade": 1,
                        "codigosoriginais": [
                            "JZZ129620C"
                        ],
                        "id_loja":51,
                        "subgrupo":"Filtros de Ar de Motor",
                        "segmento":"Veículos Leves",
                        "descricao":"Filtro de Ar de Motor",
                        "largura":21.5,
                        "altura":5.8,
                        "profundidade":21,
                        "peso":0.22,
                        "foto":"14/upload/JZZ129620C.JPG",
                        "INFO_BOUTIQUE":[

                        ],
                        "id_produto":"14",
                        "id_produto_pai":"14",
                        "id_empresa":51,
                        "pn_produto":"JZZ129620C",
                        "nome_marketplace":"EPECA",
                        "alias":"51-PILOTO-SERCON",
                        "cep_origem":"13075-520",
                        "estoque_minimo":0,
                        "estoque_disponivel":325,
                        "estoque_seguranca":0,
                        "filter":"",
                        "preco":31.98,
                        "preco_desconto":0,
                        "preco_prioritario":0,
                        "preco_majorado":31.98,
                        "preco_tabela":31.98,
                        "preco_manual":0,
                        "preco_publico":31.98,
                        "preco_selecionado":"MAJORADO",
                        "desconto":0,
                        "tamanho":"",
                        "tamanho_display":"",
                        "info_gerais":{
                            "segmento": "Veículos Leves",
                            "foto": "14/upload/JZZ129620C.JPG",
                            "largura": 21.5,
                            "altura": 5.8,
                            "peso": 0.22,
                            "subgrupo": "Filtros de Ar de Motor",
                            "categoria": [
                                {
                                    "departamento_nome": "Peças VW",
                                    "subgrupo_nome": "Filtros de Ar de Motor",
                                    "grupo_nome": "Filtros de Ar de Motor",
                                    "secao_nome": "Motor"
                                }
                            ],
                            "tamanho_unico": "",
                            "profundidade": 21,
                            "descricao": "Filtro de Ar de Motor"
                        },
                        "status": "ATIVO",
                        "data_cadastro": "2021-12-06T17:53:01.734654Z",
                        "data_atualizacao": "",
                        "data_ultima_compra": "2021-04-01T00:00:00+00:00",
                        "data_ultima_venda": "2021-04-01T00:00:00+00:00",
                        "vitrine": {
                            "peso": 0.22,
                            "altura": 5.8,
                            "largura": 21.5,
                            "produto": "14",
                            "descricao": "Filtro de Ar de Motor",
                            "profundidade": 21,
                            "segmento": "Veículos Leves",
                            "foto": "14/upload/JZZ129620C.JPG",
                            "subgrupo": "Filtros de Ar de Motor"
                        },
                        "vendido_por": "Piloto DMS/SERCON",
                        "descricao_padrao": "Filtro de Ar de Motor",
                        "descricao_original": "Filtro De Ar Motor Gol Fox Voyage Polo 1.6",
                        "timestamp": 0,
                        "codigos_originais": "JZZ129620C",
                        "codigo_original": "",
                        "foto_principal": "14/upload/JZZ129620C.JPG",
                        "estoque": 325
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
                        "peso_itens": 0.231,
                        "volume_embalagem": 10222.5,
                        "volume_max": 10222.5,
                        "volume_itens": 2618.7,
                        "volume_utilizado": 2618.7,
                        "itens_embalagem": 1,
                        "itens_volume": 1,
                        "peso_utilizado": 2.31,
                        "peso_utilizado_percentual": 2.31,
                        "volume_utilizado_percentual": 25.62,
                        "produtos": [
                            {
                                "id": "14",
                                "id_produto_variacao": "14",
                                "segmento": "Veículos Leves",
                                "subgrupo": "Filtros de Ar de Motor",
                                "descricao": "Filtro de Ar de Motor",
                                "codigosoriginais": [
                                    "JZZ129620C"
                                ],
                                "foto":"14/upload/JZZ129620C.JPG",
                                "vendido_por":"Piloto DMS/SERCON",
                                "id_loja":51,
                                "cep_origem":"13075-520",
                                "INFO_BOUTIQUE":[

                                ],
                                "quantidade":1,
                                "preco_final":31.98,
                                "estoque":325,
                                "largura":21.5,
                                "altura":5.8,
                                "profundidade":21,
                                "peso":0.22,
                                "volume":2618.7,
                                "embalagem":[

                                ],
                                "posicao":[
                                    "largura",
                                    "profundidade",
                                    "altura"
                                ]
                            }
                        ],
                        "unidade":"cm cubicos",
                        "preco_final":31.98
                    }
                ],
                "vendido_por":"Piloto DMS/SERCON",
                "frete":[

                ]
            }
        ]
    }


def vw_calculo_frete_2():
    return{
        "finger_print": "b71ed7776d9c278eb17ee2d74928212b0ab13fe5",
        "cliente": {
            "id_identificador": "81185859055",
            "email": "testeepeca@gmail.com",
            "nome_razao": "teste",
            "endereco_cobranca": {
                "uf": "SP",
                "cep": "07950-250",
                "nro": "106",
                "obs": None,
                "bairro": "Jardim Antomar",
                "cidade": "Francisco Morato",
                "logradouro": "Rua Luiz Vicentina Natalício",
                "complemento": ""
            },
            "endereco_entrega": {
                "uf": "SP",
                "cep": "07950-250",
                "nro": "106",
                "obs": None,
                "bairro": "Jardim Antomar",
                "cidade": "Francisco Morato",
                "logradouro": "Rua Luiz Vicentina Natalício",
                "complemento": ""
            }
        },
        "cupom_desconto": {
            "nome": "",
            "valor_total_produtos": 598.5
        },
        "origens": [
            {
                "cep_origem": "01524-001",
                "cep_destino": "07950250",
                "url": "",
                "produtos": [
                    {
                        "id": "7",
                        "id_produto_variacao": "7",
                        "preco_final": 598.5,
                        "quantidade": 1,
                        "codigosoriginais": [
                            "JZZ915105B"
                        ],
                        "id_loja":47,
                        "subgrupo":"Baterias",
                        "segmento":"Veículos Leves",
                        "descricao":"Bateria",
                        "largura":18,
                        "altura":20.5,
                        "profundidade":19,
                        "peso":3.59,
                        "foto":"7/upload/JZZ915105B.jpg",
                        "INFO_BOUTIQUE":[

                        ],
                        "id_produto":"7",
                        "id_produto_pai":"7",
                        "id_empresa":47,
                        "pn_produto":"JZZ915105B",
                        "nome_marketplace":"EPECA",
                        "alias":"47-ERP-SINC-HBW",
                        "cep_origem":"01524-001",
                        "estoque_minimo":0,
                        "estoque_disponivel":8,
                        "estoque_seguranca":0,
                        "filter":"",
                        "preco":598.5,
                        "preco_desconto":0,
                        "preco_prioritario":0,
                        "preco_majorado":598.5,
                        "preco_tabela":544.09,
                        "preco_manual":0,
                        "preco_publico":598.5,
                        "preco_selecionado":"MAJORADO",
                        "desconto":0,
                        "tamanho":"",
                        "tamanho_display":"",
                        "info_gerais":{
                            "segmento": "Veículos Leves",
                            "foto": "7/upload/JZZ915105B.jpg",
                            "largura": 18,
                            "altura": 20.5,
                            "peso": 3.59,
                            "subgrupo": "Baterias",
                            "categoria": [
                                {
                                    "departamento_nome": "Peças VW",
                                    "subgrupo_nome": "Baterias",
                                    "grupo_nome": "Baterias",
                                    "secao_nome": "Elétrica, Eletrônica e Ignição"
                                }
                            ],
                            "tamanho_unico": "",
                            "profundidade": 19,
                            "descricao": "Bateria"
                        },
                        "status": "ATIVO",
                        "data_cadastro": "2021-12-06T17:53:01.734551Z",
                        "data_atualizacao": "",
                        "data_ultima_compra": "2020-02-18T00:00:00.000Z",
                        "data_ultima_venda": "2020-07-03T00:00:00.000Z",
                        "vitrine": {
                            "peso": 3.59,
                            "altura": 20.5,
                            "largura": 18,
                            "produto": "7",
                            "descricao": "Bateria",
                            "profundidade": 19,
                            "segmento": "Veículos Leves",
                            "foto": "7/upload/JZZ915105B.jpg",
                            "subgrupo": "Baterias"
                        },
                        "vendido_por": "Piloto DMS/SINC",
                        "descricao_padrao": "Bateria",
                        "descricao_original": "Bateria 75 Amperes H6 Amarok Jetta Novo Fusca Tiguan",
                        "timestamp": 0,
                        "codigos_originais": "JZZ915105B",
                        "codigo_original": "",
                        "foto_principal": "7/upload/JZZ915105B.jpg",
                        "estoque": 8
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
                        "peso_itens": 3.769,
                        "volume_embalagem": 55440,
                        "volume_max": 55440,
                        "volume_itens": 7011,
                        "volume_utilizado": 7011,
                        "itens_embalagem": 1,
                        "itens_volume": 1,
                        "peso_utilizado": 37.69,
                        "peso_utilizado_percentual": 37.69,
                        "volume_utilizado_percentual": 12.65,
                        "produtos": [
                            {
                                "id": "7",
                                "id_produto_variacao": "7",
                                "segmento": "Veículos Leves",
                                "subgrupo": "Baterias",
                                "descricao": "Bateria",
                                "codigosoriginais": [
                                    "JZZ915105B"
                                ],
                                "foto":"7/upload/JZZ915105B.jpg",
                                "vendido_por":"Piloto DMS/SINC",
                                "id_loja":47,
                                "cep_origem":"01524-001",
                                "INFO_BOUTIQUE":[

                                ],
                                "quantidade":1,
                                "preco_final":598.5,
                                "estoque":8,
                                "largura":18,
                                "altura":20.5,
                                "profundidade":19,
                                "peso":3.59,
                                "volume":7011,
                                "embalagem":[

                                ],
                                "posicao":[
                                    "altura",
                                    "profundidade",
                                    "largura"
                                ]
                            }
                        ],
                        "unidade":"cm cubicos",
                        "preco_final":598.5
                    }
                ],
                "vendido_por":"Piloto DMS/SINC",
                "frete":[
                    {
                        "empresa": "Correios",
                        "entrega_metodo_tipo": "EXPRESS",
                        "entrega_metodo_nome": "Correios Sedex",
                        "entrega_metodo_id": "2",
                        "entrega_custo_final": 37.86,
                        "entrega_estimada_dias": 2
                    }
                ]
            }
        ]
    }


def vw_verifica_frete_2():

    return{
        "cep_destino": "07950-250",
        "url": "https://vw.teste.e-peca.com.br/checkout/pagamento",
        "produtos": [
            {
                "id": "7",
                "id_produto_variacao": "7",
                "preco_final": 598.5,
                "quantidade": 1,
                "codigosoriginais": [
                    "JZZ915105B"
                ],
                "id_loja":47
            }
        ]
    }


def vw_pedido_valido_master_card_1():
    return{
        "finger_print": "b71ed7776d9c278eb17ee2d74928212b0ab13fe5",
        "cliente": {
            "id_identificador": "81185859055",
            "email": "testeepeca@gmail.com",
            "nome_razao": "teste",
            "endereco_cobranca": {
                "uf": "SP",
                "cep": "07950-250",
                "nro": "106",
                "obs": None,
                "bairro": "Jardim Antomar",
                "cidade": "Francisco Morato",
                "logradouro": "Rua Luiz Vicentina Natalício",
                "complemento": ""
            },
            "endereco_entrega": {
                "uf": "SP",
                "cep": "07950-250",
                "nro": "106",
                "obs": None,
                "bairro": "Jardim Antomar",
                "cidade": "Francisco Morato",
                "logradouro": "Rua Luiz Vicentina Natalício",
                "complemento": ""
            }
        },
        "forma_pagamento": {
            "id": 99,
            "nome": "Mastercard Crédito",
            "n_parcelas": 1,
            "detalhes_pagamento": {
                "pagador": {
                    "payment_method_id": 99,
                    "card_name": "João Marcos",
                    "card_number": "5555555555554444",
                    "card_expdate_month": "12",
                    "card_expdate_year": "2023",
                    "card_cvv": "127",
                    "split": 1,
                    "identificador": "81185859055",
                    "dt_nascimento": "29/09/1994",
                    "telefone": {
                        "ddd": "11",
                        "numero": "111111111"
                    }
                }
            }
        },
        "cupom_desconto": {
            "nome": "",
            "valor_total_produtos": 598.5
        },
        "origens": [
            {
                "cep_origem": "01524-001",
                "cep_destino": "07950250",
                "url": "",
                "produtos": [
                    {
                        "id": "7",
                        "id_produto_variacao": "7",
                        "preco_final": 598.5,
                        "quantidade": 1,
                        "codigosoriginais": [
                            "JZZ915105B"
                        ],
                        "id_loja":47,
                        "subgrupo":"Baterias",
                        "segmento":"Veículos Leves",
                        "descricao":"Bateria",
                        "largura":18,
                        "altura":20.5,
                        "profundidade":19,
                        "peso":3.59,
                        "foto":"7/upload/JZZ915105B.jpg",
                        "INFO_BOUTIQUE":[

                        ],
                        "id_produto":"7",
                        "id_produto_pai":"7",
                        "id_empresa":47,
                        "pn_produto":"JZZ915105B",
                        "nome_marketplace":"EPECA",
                        "alias":"47-ERP-SINC-HBW",
                        "cep_origem":"01524-001",
                        "estoque_minimo":0,
                        "estoque_disponivel":8,
                        "estoque_seguranca":0,
                        "filter":"",
                        "preco":598.5,
                        "preco_desconto":0,
                        "preco_prioritario":0,
                        "preco_majorado":598.5,
                        "preco_tabela":544.09,
                        "preco_manual":0,
                        "preco_publico":598.5,
                        "preco_selecionado":"MAJORADO",
                        "desconto":0,
                        "tamanho":"",
                        "tamanho_display":"",
                        "info_gerais":{
                            "segmento": "Veículos Leves",
                            "foto": "7/upload/JZZ915105B.jpg",
                            "largura": 18,
                            "altura": 20.5,
                            "peso": 3.59,
                            "subgrupo": "Baterias",
                            "categoria": [
                                {
                                    "departamento_nome": "Peças VW",
                                    "subgrupo_nome": "Baterias",
                                    "grupo_nome": "Baterias",
                                    "secao_nome": "Elétrica, Eletrônica e Ignição"
                                }
                            ],
                            "tamanho_unico": "",
                            "profundidade": 19,
                            "descricao": "Bateria"
                        },
                        "status": "ATIVO",
                        "data_cadastro": "2021-12-06T17:53:01.734551Z",
                        "data_atualizacao": "",
                        "data_ultima_compra": "2020-02-18T00:00:00.000Z",
                        "data_ultima_venda": "2020-07-03T00:00:00.000Z",
                        "vitrine": {
                            "peso": 3.59,
                            "altura": 20.5,
                            "largura": 18,
                            "produto": "7",
                            "descricao": "Bateria",
                            "profundidade": 19,
                            "segmento": "Veículos Leves",
                            "foto": "7/upload/JZZ915105B.jpg",
                            "subgrupo": "Baterias"
                        },
                        "vendido_por": "Piloto DMS/SINC",
                        "descricao_padrao": "Bateria",
                        "descricao_original": "Bateria 75 Amperes H6 Amarok Jetta Novo Fusca Tiguan",
                        "timestamp": 0,
                        "codigos_originais": "JZZ915105B",
                        "codigo_original": "",
                        "foto_principal": "7/upload/JZZ915105B.jpg",
                        "estoque": 8
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
                        "peso_itens": 3.769,
                        "volume_embalagem": 55440,
                        "volume_max": 55440,
                        "volume_itens": 7011,
                        "volume_utilizado": 7011,
                        "itens_embalagem": 1,
                        "itens_volume": 1,
                        "peso_utilizado": 37.69,
                        "peso_utilizado_percentual": 37.69,
                        "volume_utilizado_percentual": 12.65,
                        "produtos": [
                            {
                                "id": "7",
                                "id_produto_variacao": "7",
                                "segmento": "Veículos Leves",
                                "subgrupo": "Baterias",
                                "descricao": "Bateria",
                                "codigosoriginais": [
                                    "JZZ915105B"
                                ],
                                "foto":"7/upload/JZZ915105B.jpg",
                                "vendido_por":"Piloto DMS/SINC",
                                "id_loja":47,
                                "cep_origem":"01524-001",
                                "INFO_BOUTIQUE":[

                                ],
                                "quantidade":1,
                                "preco_final":598.5,
                                "estoque":8,
                                "largura":18,
                                "altura":20.5,
                                "profundidade":19,
                                "peso":3.59,
                                "volume":7011,
                                "embalagem":[

                                ],
                                "posicao":[
                                    "altura",
                                    "profundidade",
                                    "largura"
                                ]
                            }
                        ],
                        "unidade":"cm cubicos",
                        "preco_final":598.5
                    }
                ],
                "vendido_por":"Piloto DMS/SINC",
                "frete":[
                    {
                        "empresa": "Correios",
                        "entrega_metodo_tipo": "EXPRESS",
                        "entrega_metodo_nome": "Correios Sedex",
                        "entrega_metodo_id": "2",
                        "entrega_custo_final": 37.86,
                        "entrega_estimada_dias": 2
                    }
                ]
            }
        ]
    }


def vw_verifica_frete_3():
    return{
        "cep_destino": "07950-250",
        "url": "https://vw.teste.e-peca.com.br/checkout/pagamento",
        "produtos": [
            {
                "id": "49",
                "id_produto_variacao": "49",
                "preco_final": 264.46,
                "quantidade": 1,
                "codigosoriginais": [
                    "JZZ698451AB"
                ],
                "id_loja":47
            }
        ]
    }


def vw_calculo_frete_3():
    return{
        "finger_print": "b71ed7776d9c278eb17ee2d74928212b0ab13fe5",
        "cliente": {
            "id_identificador": "81185859055",
            "email": "testeepeca@gmail.com",
            "nome_razao": "teste",
            "endereco_cobranca": {
                "uf": "SP",
                "cep": "07950-250",
                "nro": "106",
                "obs": None,
                "bairro": "Jardim Antomar",
                "cidade": "Francisco Morato",
                "logradouro": "Rua Luiz Vicentina Natalício",
                "complemento": ""
            },
            "endereco_entrega": {
                "uf": "SP",
                "cep": "07950-250",
                "nro": "106",
                "obs": None,
                "bairro": "Jardim Antomar",
                "cidade": "Francisco Morato",
                "logradouro": "Rua Luiz Vicentina Natalício",
                "complemento": ""
            }
        },
        "cupom_desconto": {
            "nome": ""
        },
        "origens": [
            {
                "cep_origem": "01524-001",
                "cep_destino": "07950250",
                "url": "",
                "produtos": [
                    {
                        "id": "49",
                        "id_produto_variacao": "49",
                        "preco_final": 264.46,
                        "quantidade": 1,
                        "codigosoriginais": [
                            "JZZ698451AB"
                        ],
                        "id_loja":47,
                        "subgrupo":"Pastilhas de Freio",
                        "segmento":"Veículos Leves",
                        "descricao":"Pastilha de Freio",
                        "largura":8,
                        "altura":7,
                        "profundidade":11.5,
                        "peso":0.95,
                        "foto":"49/upload/JZZ698451AB.jpg",
                        "INFO_BOUTIQUE":[

                        ],
                        "id_produto":"49",
                        "id_produto_pai":"49",
                        "id_empresa":47,
                        "pn_produto":"JZZ698451AB",
                        "nome_marketplace":"EPECA",
                        "alias":"47-ERP-SINC-HBW",
                        "cep_origem":"01524-001",
                        "estoque_minimo":0,
                        "estoque_disponivel":6,
                        "estoque_seguranca":0,
                        "filter":"",
                        "preco":264.46,
                        "preco_desconto":0,
                        "preco_prioritario":0,
                        "preco_majorado":264.46,
                        "preco_tabela":240.42,
                        "preco_manual":0,
                        "preco_publico":264.46,
                        "preco_selecionado":"MAJORADO",
                        "desconto":0,
                        "tamanho":"",
                        "tamanho_display":"",
                        "info_gerais":{
                            "segmento": "Veículos Leves",
                            "foto": "49/upload/JZZ698451AB.jpg",
                            "largura": 8,
                            "altura": 7,
                            "peso": 0.95,
                            "subgrupo": "Pastilhas de Freio",
                            "categoria": [
                                {
                                    "departamento_nome": "Peças VW",
                                    "subgrupo_nome": "Pastilhas de Freio",
                                    "grupo_nome": "Pastilhas de Freio",
                                    "secao_nome": "Freios e Direção"
                                }
                            ],
                            "tamanho_unico": "",
                            "profundidade": 11.5,
                            "descricao": "Pastilha de Freio"
                        },
                        "status": "ATIVO",
                        "data_cadastro": "2021-12-06T17:53:01.735140Z",
                        "data_atualizacao": "",
                        "data_ultima_compra": "2018-11-01T00:00:00.000Z",
                        "data_ultima_venda": "1899-12-30T00:00:00.000Z",
                        "vitrine": {
                            "peso": 0.95,
                            "altura": 7,
                            "largura": 8,
                            "produto": "49",
                            "descricao": "Pastilha de Freio",
                            "profundidade": 11.5,
                            "segmento": "Veículos Leves",
                            "foto": "49/upload/JZZ698451AB.jpg",
                            "subgrupo": "Pastilhas de Freio"
                        },
                        "vendido_por": "Piloto DMS/SINC",
                        "descricao_padrao": "Pastilha de Freio",
                        "descricao_original": "Pastilhas de Freio Traseiras Polo",
                        "timestamp": 0,
                        "codigos_originais": "JZZ698451AB",
                        "codigo_original": "",
                        "foto_principal": "49/upload/JZZ698451AB.jpg",
                        "estoque": 6
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
                        "peso_itens": 0.997,
                        "volume_embalagem": 10222.5,
                        "volume_max": 10222.5,
                        "volume_itens": 644,
                        "volume_utilizado": 644,
                        "itens_embalagem": 1,
                        "itens_volume": 1,
                        "peso_utilizado": 9.97,
                        "peso_utilizado_percentual": 9.97,
                        "volume_utilizado_percentual": 6.3,
                        "produtos": [
                            {
                                "id": "49",
                                "id_produto_variacao": "49",
                                "segmento": "Veículos Leves",
                                "subgrupo": "Pastilhas de Freio",
                                "descricao": "Pastilha de Freio",
                                "codigosoriginais": [
                                    "JZZ698451AB"
                                ],
                                "foto":"49/upload/JZZ698451AB.jpg",
                                "vendido_por":"Piloto DMS/SINC",
                                "id_loja":47,
                                "cep_origem":"01524-001",
                                "INFO_BOUTIQUE":[

                                ],
                                "quantidade":1,
                                "preco_final":264.46,
                                "estoque":6,
                                "largura":8,
                                "altura":7,
                                "profundidade":11.5,
                                "peso":0.95,
                                "volume":644,
                                "embalagem":[

                                ],
                                "posicao":[
                                    "profundidade",
                                    "largura",
                                    "altura"
                                ]
                            }
                        ],
                        "unidade":"cm cubicos",
                        "preco_final":264.46
                    }
                ],
                "vendido_por":"Piloto DMS/SINC",
                "frete":[

                ]
            }
        ]
    }


def vw_pedido_valido_master_card_2():
    return{
        "finger_print": "b71ed7776d9c278eb17ee2d74928212b0ab13fe5",
        "cliente": {
            "id_identificador": "81185859055",
            "email": "testeepeca@gmail.com",
            "nome_razao": "teste",
            "endereco_cobranca": {
                "uf": "SP",
                "cep": "07950-250",
                "nro": "106",
                "obs": None,
                "bairro": "Jardim Antomar",
                "cidade": "Francisco Morato",
                "logradouro": "Rua Luiz Vicentina Natalício",
                "complemento": ""
            },
            "endereco_entrega": {
                "uf": "SP",
                "cep": "07950-250",
                "nro": "106",
                "obs": None,
                "bairro": "Jardim Antomar",
                "cidade": "Francisco Morato",
                "logradouro": "Rua Luiz Vicentina Natalício",
                "complemento": ""
            }
        },
        "forma_pagamento": {
            "id": 99,
            "nome": "Mastercard Crédito",
            "n_parcelas": 1,
            "detalhes_pagamento": {
                "pagador": {
                    "payment_method_id": 99,
                    "card_name": "João Marcos",
                    "card_number": "5555555555554444",
                    "card_expdate_month": "07",
                    "card_expdate_year": "2025",
                    "card_cvv": "321",
                    "split": 1,
                    "identificador": "81185859055",
                    "dt_nascimento": "29/09/1994",
                    "telefone": {
                        "ddd": "11",
                        "numero": "111111111"
                    }
                }
            }
        },
        "cupom_desconto": {
            "nome": "",
            "valor_total_produtos": 264.46
        },
        "origens": [
            {
                "cep_origem": "01524-001",
                "cep_destino": "07950250",
                "url": "",
                "produtos": [
                    {
                        "id": "49",
                        "id_produto_variacao": "49",
                        "preco_final": 264.46,
                        "quantidade": 1,
                        "codigosoriginais": [
                            "JZZ698451AB"
                        ],
                        "id_loja":47,
                        "subgrupo":"Pastilhas de Freio",
                        "segmento":"Veículos Leves",
                        "descricao":"Pastilha de Freio",
                        "largura":8,
                        "altura":7,
                        "profundidade":11.5,
                        "peso":0.95,
                        "foto":"49/upload/JZZ698451AB.jpg",
                        "INFO_BOUTIQUE":[

                        ],
                        "id_produto":"49",
                        "id_produto_pai":"49",
                        "id_empresa":47,
                        "pn_produto":"JZZ698451AB",
                        "nome_marketplace":"EPECA",
                        "alias":"47-ERP-SINC-HBW",
                        "cep_origem":"01524-001",
                        "estoque_minimo":0,
                        "estoque_disponivel":6,
                        "estoque_seguranca":0,
                        "filter":"",
                        "preco":264.46,
                        "preco_desconto":0,
                        "preco_prioritario":0,
                        "preco_majorado":264.46,
                        "preco_tabela":240.42,
                        "preco_manual":0,
                        "preco_publico":264.46,
                        "preco_selecionado":"MAJORADO",
                        "desconto":0,
                        "tamanho":"",
                        "tamanho_display":"",
                        "info_gerais":{
                            "segmento": "Veículos Leves",
                            "foto": "49/upload/JZZ698451AB.jpg",
                            "largura": 8,
                            "altura": 7,
                            "peso": 0.95,
                            "subgrupo": "Pastilhas de Freio",
                            "categoria": [
                                {
                                    "departamento_nome": "Peças VW",
                                    "subgrupo_nome": "Pastilhas de Freio",
                                    "grupo_nome": "Pastilhas de Freio",
                                    "secao_nome": "Freios e Direção"
                                }
                            ],
                            "tamanho_unico": "",
                            "profundidade": 11.5,
                            "descricao": "Pastilha de Freio"
                        },
                        "status": "ATIVO",
                        "data_cadastro": "2021-12-06T17:53:01.735140Z",
                        "data_atualizacao": "",
                        "data_ultima_compra": "2018-11-01T00:00:00.000Z",
                        "data_ultima_venda": "1899-12-30T00:00:00.000Z",
                        "vitrine": {
                            "peso": 0.95,
                            "altura": 7,
                            "largura": 8,
                            "produto": "49",
                            "descricao": "Pastilha de Freio",
                            "profundidade": 11.5,
                            "segmento": "Veículos Leves",
                            "foto": "49/upload/JZZ698451AB.jpg",
                            "subgrupo": "Pastilhas de Freio"
                        },
                        "vendido_por": "Piloto DMS/SINC",
                        "descricao_padrao": "Pastilha de Freio",
                        "descricao_original": "Pastilhas de Freio Traseiras Polo",
                        "timestamp": 0,
                        "codigos_originais": "JZZ698451AB",
                        "codigo_original": "",
                        "foto_principal": "49/upload/JZZ698451AB.jpg",
                        "estoque": 6
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
                        "peso_itens": 0.997,
                        "volume_embalagem": 10222.5,
                        "volume_max": 10222.5,
                        "volume_itens": 644,
                        "volume_utilizado": 644,
                        "itens_embalagem": 1,
                        "itens_volume": 1,
                        "peso_utilizado": 9.97,
                        "peso_utilizado_percentual": 9.97,
                        "volume_utilizado_percentual": 6.3,
                        "produtos": [
                            {
                                "id": "49",
                                "id_produto_variacao": "49",
                                "segmento": "Veículos Leves",
                                "subgrupo": "Pastilhas de Freio",
                                "descricao": "Pastilha de Freio",
                                "codigosoriginais": [
                                    "JZZ698451AB"
                                ],
                                "foto":"49/upload/JZZ698451AB.jpg",
                                "vendido_por":"Piloto DMS/SINC",
                                "id_loja":47,
                                "cep_origem":"01524-001",
                                "INFO_BOUTIQUE":[

                                ],
                                "quantidade":1,
                                "preco_final":264.46,
                                "estoque":6,
                                "largura":8,
                                "altura":7,
                                "profundidade":11.5,
                                "peso":0.95,
                                "volume":644,
                                "embalagem":[

                                ],
                                "posicao":[
                                    "profundidade",
                                    "largura",
                                    "altura"
                                ]
                            }
                        ],
                        "unidade":"cm cubicos",
                        "preco_final":264.46
                    }
                ],
                "vendido_por":"Piloto DMS/SINC",
                "frete":[
                    {
                        "empresa": "Correios",
                        "entrega_metodo_tipo": "EXPRESS",
                        "entrega_metodo_nome": "Correios Sedex",
                        "entrega_metodo_id": "2",
                        "entrega_custo_final": 21.67,
                        "entrega_estimada_dias": 2
                    }
                ]
            }
        ]
    }


def vw_verifica_frete_4():
    return{
        "cep_destino": "07950-250",
        "url": "https://vw.teste.e-peca.com.br/checkout/pagamento",
        "produtos": [
            {
                "id": "21",
                "id_produto_variacao": "21",
                "preco_final": 601.04,
                "quantidade": 1,
                "codigosoriginais": [
                    "JZW615301"
                ],
                "id_loja":47
            }
        ]
    }


def vw_calculo_frete_4():
    return{
        "finger_print": "b71ed7776d9c278eb17ee2d74928212b0ab13fe5",
        "cliente": {
            "id_identificador": "81185859055",
            "email": "testeepeca@gmail.com",
            "nome_razao": "teste",
            "endereco_cobranca": {
                "uf": "SP",
                "cep": "07950-250",
                "nro": "106",
                "obs": None,
                "bairro": "Jardim Antomar",
                "cidade": "Francisco Morato",
                "logradouro": "Rua Luiz Vicentina Natalício",
                "complemento": ""
            },
            "endereco_entrega": {
                "uf": "SP",
                "cep": "07950-250",
                "nro": "106",
                "obs": None,
                "bairro": "Jardim Antomar",
                "cidade": "Francisco Morato",
                "logradouro": "Rua Luiz Vicentina Natalício",
                "complemento": ""
            }
        },
        "cupom_desconto": {
            "nome": ""
        },
        "origens": [
            {
                "cep_origem": "01524-001",
                "cep_destino": "07950250",
                "url": "",
                "produtos": [
                    {
                        "id": "21",
                        "id_produto_variacao": "21",
                        "preco_final": 601.04,
                        "quantidade": 1,
                        "codigosoriginais": [
                            "JZW615301"
                        ],
                        "id_loja":47,
                        "subgrupo":"Discos de Freio",
                        "segmento":"Veículos Leves",
                        "descricao":"Disco de Freio",
                        "largura":28,
                        "altura":4,
                        "profundidade":28,
                        "peso":6,
                        "foto":"21/upload/JZW615301-1.JPG",
                        "INFO_BOUTIQUE":[

                        ],
                        "id_produto":"21",
                        "id_produto_pai":"21",
                        "id_empresa":47,
                        "pn_produto":"JZW615301",
                        "nome_marketplace":"EPECA",
                        "alias":"47-ERP-SINC-HBW",
                        "cep_origem":"01524-001",
                        "estoque_minimo":0,
                        "estoque_disponivel":4,
                        "estoque_seguranca":0,
                        "filter":"",
                        "preco":601.04,
                        "preco_desconto":0,
                        "preco_prioritario":0,
                        "preco_majorado":601.04,
                        "preco_tabela":546.4,
                        "preco_manual":0,
                        "preco_publico":601.04,
                        "preco_selecionado":"MAJORADO",
                        "desconto":0,
                        "tamanho":"",
                        "tamanho_display":"",
                        "info_gerais":{
                            "segmento": "Veículos Leves",
                            "foto": "21/upload/JZW615301-1.JPG",
                            "largura": 28,
                            "altura": 4,
                            "peso": 6,
                            "subgrupo": "Discos de Freio",
                            "categoria": [
                                {
                                    "departamento_nome": "Peças VW",
                                    "subgrupo_nome": "Discos de Freio",
                                    "grupo_nome": "Discos de Freio",
                                    "secao_nome": "Freios e Direção"
                                }
                            ],
                            "tamanho_unico": "",
                            "profundidade": 28,
                            "descricao": "Disco de Freio"
                        },
                        "status": "ATIVO",
                        "data_cadastro": "2021-12-06T17:53:01.734752Z",
                        "data_atualizacao": "",
                        "data_ultima_compra": "2020-01-07T00:00:00.000Z",
                        "data_ultima_venda": "2019-09-19T00:00:00.000Z",
                        "vitrine": {
                            "peso": 6,
                            "altura": 4,
                            "largura": 28,
                            "produto": "21",
                            "descricao": "Disco de Freio",
                            "profundidade": 28,
                            "segmento": "Veículos Leves",
                            "foto": "21/upload/JZW615301-1.JPG",
                            "subgrupo": "Discos de Freio"
                        },
                        "vendido_por": "Piloto DMS/SINC",
                        "descricao_padrao": "Disco de Freio",
                        "descricao_original": "Disco Freio Dianteiro Golf Bora New Beetle",
                        "timestamp": 0,
                        "codigos_originais": "JZW615301",
                        "codigo_original": "",
                        "foto_principal": "21/upload/JZW615301-1.JPG",
                        "estoque": 4
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
                        "peso_itens": 6.3,
                        "volume_embalagem": 55440,
                        "volume_max": 55440,
                        "volume_itens": 3136,
                        "volume_utilizado": 3136,
                        "itens_embalagem": 1,
                        "itens_volume": 1,
                        "peso_utilizado": 63,
                        "peso_utilizado_percentual": 63,
                        "volume_utilizado_percentual": 5.66,
                        "produtos": [
                            {
                                "id": "21",
                                "id_produto_variacao": "21",
                                "segmento": "Veículos Leves",
                                "subgrupo": "Discos de Freio",
                                "descricao": "Disco de Freio",
                                "codigosoriginais": [
                                    "JZW615301"
                                ],
                                "foto":"21/upload/JZW615301-1.JPG",
                                "vendido_por":"Piloto DMS/SINC",
                                "id_loja":47,
                                "cep_origem":"01524-001",
                                "INFO_BOUTIQUE":[

                                ],
                                "quantidade":1,
                                "preco_final":601.04,
                                "estoque":4,
                                "largura":28,
                                "altura":4,
                                "profundidade":28,
                                "peso":6,
                                "volume":3136,
                                "embalagem":[

                                ],
                                "posicao":[
                                    "largura",
                                    "profundidade",
                                    "altura"
                                ]
                            }
                        ],
                        "unidade":"cm cubicos",
                        "preco_final":601.04
                    }
                ],
                "vendido_por":"Piloto DMS/SINC",
                "frete":[

                ]
            }
        ]
    }


def vw_pedido_valido_visa_2():
    return{
        "finger_print": "b71ed7776d9c278eb17ee2d74928212b0ab13fe5",
        "cliente": {
            "id_identificador": "81185859055",
            "email": "testeepeca@gmail.com",
            "nome_razao": "teste",
            "endereco_cobranca": {
                "uf": "SP",
                "cep": "07950-250",
                "nro": "106",
                "obs": None,
                "bairro": "Jardim Antomar",
                "cidade": "Francisco Morato",
                "logradouro": "Rua Luiz Vicentina Natalício",
                "complemento": ""
            },
            "endereco_entrega": {
                "uf": "SP",
                "cep": "07950-250",
                "nro": "106",
                "obs": None,
                "bairro": "Jardim Antomar",
                "cidade": "Francisco Morato",
                "logradouro": "Rua Luiz Vicentina Natalício",
                "complemento": ""
            }
        },
        "forma_pagamento": {
            "id": 104,
            "nome": "Visa Crédito",
            "n_parcelas": 1,
            "detalhes_pagamento": {
                "pagador": {
                    "payment_method_id": 104,
                    "card_name": "João Marcos",
                    "card_number": "4012888888881881",
                    "card_expdate_month": "12",
                    "card_expdate_year": "2023",
                    "card_cvv": "147",
                    "split": 1,
                    "identificador": "81185859055",
                    "dt_nascimento": "29/09/1994",
                    "telefone": {
                        "ddd": "11",
                        "numero": "111111111"
                    }
                }
            }
        },
        "cupom_desconto": {
            "nome": "",
            "valor_total_produtos": 601.04
        },
        "origens": [
            {
                "cep_origem": "01524-001",
                "cep_destino": "07950250",
                "url": "",
                "produtos": [
                    {
                        "id": "21",
                        "id_produto_variacao": "21",
                        "preco_final": 601.04,
                        "quantidade": 1,
                        "codigosoriginais": [
                            "JZW615301"
                        ],
                        "id_loja":47,
                        "subgrupo":"Discos de Freio",
                        "segmento":"Veículos Leves",
                        "descricao":"Disco de Freio",
                        "largura":28,
                        "altura":4,
                        "profundidade":28,
                        "peso":6,
                        "foto":"21/upload/JZW615301-1.JPG",
                        "INFO_BOUTIQUE":[

                        ],
                        "id_produto":"21",
                        "id_produto_pai":"21",
                        "id_empresa":47,
                        "pn_produto":"JZW615301",
                        "nome_marketplace":"EPECA",
                        "alias":"47-ERP-SINC-HBW",
                        "cep_origem":"01524-001",
                        "estoque_minimo":0,
                        "estoque_disponivel":4,
                        "estoque_seguranca":0,
                        "filter":"",
                        "preco":601.04,
                        "preco_desconto":0,
                        "preco_prioritario":0,
                        "preco_majorado":601.04,
                        "preco_tabela":546.4,
                        "preco_manual":0,
                        "preco_publico":601.04,
                        "preco_selecionado":"MAJORADO",
                        "desconto":0,
                        "tamanho":"",
                        "tamanho_display":"",
                        "info_gerais":{
                            "segmento": "Veículos Leves",
                            "foto": "21/upload/JZW615301-1.JPG",
                            "largura": 28,
                            "altura": 4,
                            "peso": 6,
                            "subgrupo": "Discos de Freio",
                            "categoria": [
                                {
                                    "departamento_nome": "Peças VW",
                                    "subgrupo_nome": "Discos de Freio",
                                    "grupo_nome": "Discos de Freio",
                                    "secao_nome": "Freios e Direção"
                                }
                            ],
                            "tamanho_unico": "",
                            "profundidade": 28,
                            "descricao": "Disco de Freio"
                        },
                        "status": "ATIVO",
                        "data_cadastro": "2021-12-06T17:53:01.734752Z",
                        "data_atualizacao": "",
                        "data_ultima_compra": "2020-01-07T00:00:00.000Z",
                        "data_ultima_venda": "2019-09-19T00:00:00.000Z",
                        "vitrine": {
                            "peso": 6,
                            "altura": 4,
                            "largura": 28,
                            "produto": "21",
                            "descricao": "Disco de Freio",
                            "profundidade": 28,
                            "segmento": "Veículos Leves",
                            "foto": "21/upload/JZW615301-1.JPG",
                            "subgrupo": "Discos de Freio"
                        },
                        "vendido_por": "Piloto DMS/SINC",
                        "descricao_padrao": "Disco de Freio",
                        "descricao_original": "Disco Freio Dianteiro Golf Bora New Beetle",
                        "timestamp": 0,
                        "codigos_originais": "JZW615301",
                        "codigo_original": "",
                        "foto_principal": "21/upload/JZW615301-1.JPG",
                        "estoque": 4
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
                        "peso_itens": 6.3,
                        "volume_embalagem": 55440,
                        "volume_max": 55440,
                        "volume_itens": 3136,
                        "volume_utilizado": 3136,
                        "itens_embalagem": 1,
                        "itens_volume": 1,
                        "peso_utilizado": 63,
                        "peso_utilizado_percentual": 63,
                        "volume_utilizado_percentual": 5.66,
                        "produtos": [
                            {
                                "id": "21",
                                "id_produto_variacao": "21",
                                "segmento": "Veículos Leves",
                                "subgrupo": "Discos de Freio",
                                "descricao": "Disco de Freio",
                                "codigosoriginais": [
                                    "JZW615301"
                                ],
                                "foto":"21/upload/JZW615301-1.JPG",
                                "vendido_por":"Piloto DMS/SINC",
                                "id_loja":47,
                                "cep_origem":"01524-001",
                                "INFO_BOUTIQUE":[

                                ],
                                "quantidade":1,
                                "preco_final":601.04,
                                "estoque":4,
                                "largura":28,
                                "altura":4,
                                "profundidade":28,
                                "peso":6,
                                "volume":3136,
                                "embalagem":[

                                ],
                                "posicao":[
                                    "largura",
                                    "profundidade",
                                    "altura"
                                ]
                            }
                        ],
                        "unidade":"cm cubicos",
                        "preco_final":601.04
                    }
                ],
                "vendido_por":"Piloto DMS/SINC",
                "frete":[
                    {
                        "empresa": "Jadlog",
                        "entrega_metodo_tipo": "STANDARD",
                        "entrega_metodo_nome": "JadLog Standard",
                        "entrega_metodo_id": "3",
                        "entrega_custo_final": 62.56,
                        "entrega_estimada_dias": 9
                    }
                ]
            }
        ]
    }


def vw_pedido_valido():

    return{
        "finger_print": "b71ed7776d9c278eb17ee2d74928212b0ab13fe5",
        "cliente": {
            "id_identificador": "81185859055",
            "email": "testeepeca@gmail.com",
            "nome_razao": "teste",
            "endereco_cobranca": {
                "uf": "SP",
                "cep": "07950-250",
                "nro": "106",
                "obs": None,
                "bairro": "Jardim Antomar",
                "cidade": "Francisco Morato",
                "logradouro": "Rua Luiz Vicentina Natalício",
                "complemento": ""
            },
            "endereco_entrega": {
                "uf": "SP",
                "cep": "07950-250",
                "nro": "106",
                "obs": None,
                "bairro": "Jardim Antomar",
                "cidade": "Francisco Morato",
                "logradouro": "Rua Luiz Vicentina Natalício",
                "complemento": ""
            }
        },
        "forma_pagamento": {
            "id": 99,
            "nome": "Mastercard Crédito",
            "n_parcelas": 1,
            "detalhes_pagamento": {
                "pagador": {
                    "payment_method_id": 99,
                    "card_name": "João Marcos",
                    "card_number": "5555555555554444",
                    "card_expdate_month": "12",
                    "card_expdate_year": "2025",
                    "card_cvv": "124",
                    "split": 1,
                    "identificador": "81185859055",
                    "dt_nascimento": "29/09/1994",
                    "telefone": {
                        "ddd": "11",
                        "numero": "111111111"
                    }
                }
            }
        },
        "cupom_desconto": {
            "nome": "",
            "valor_total_produtos": 104.25
        },
        "origens": [
            {
                "cep_origem": "01524-001",
                "cep_destino": "07950250",
                "url": "",
                "produtos": [
                    {
                        "id": "57",
                        "id_produto_variacao": "57",
                        "preco_final": 104.25,
                        "quantidade": 1,
                        "codigosoriginais": [
                            "GJZW012R2"
                        ],
                        "id_loja":47,
                        "subgrupo":"Aditivos de Radiador",
                        "segmento":"Veículos Leves",
                        "descricao":"Aditivo de Radiador",
                        "largura":9.2,
                        "altura":9.2,
                        "profundidade":20,
                        "peso":1.18,
                        "foto":"57/upload/GJZW012R2-1.JPG",
                        "INFO_BOUTIQUE":[

                        ],
                        "id_produto":"57",
                        "id_produto_pai":"57",
                        "id_empresa":47,
                        "pn_produto":"GJZW012R2",
                        "nome_marketplace":"EPECA",
                        "alias":"47-ERP-SINC-HBW",
                        "cep_origem":"01524-001",
                        "estoque_minimo":0,
                        "estoque_disponivel":47,
                        "estoque_seguranca":-2,
                        "filter":"",
                        "preco":104.25,
                        "preco_desconto":0,
                        "preco_prioritario":0,
                        "preco_majorado":104.25,
                        "preco_tabela":94.77,
                        "preco_manual":0,
                        "preco_publico":104.25,
                        "preco_selecionado":"MAJORADO",
                        "desconto":0,
                        "tamanho":"",
                        "tamanho_display":"",
                        "info_gerais":{
                            "segmento": "Veículos Leves",
                            "foto": "57/upload/GJZW012R2-1.JPG",
                            "largura": 9.2,
                            "altura": 9.2,
                            "peso": 1.18,
                            "subgrupo": "Aditivos de Radiador",
                            "categoria": [
                                {
                                    "departamento_nome": "Peças VW",
                                    "subgrupo_nome": "Aditivos de Radiador",
                                    "grupo_nome": "Aditivos de Radiador",
                                    "secao_nome": "Motor"
                                }
                            ],
                            "tamanho_unico": "",
                            "profundidade": 20,
                            "descricao": "Aditivo de Radiador"
                        },
                        "status": "ATIVO",
                        "data_cadastro": "2021-12-06T17:53:01.735261Z",
                        "data_atualizacao": "",
                        "data_ultima_compra": "2020-07-27T00:00:00.000Z",
                        "data_ultima_venda": "2020-07-31T00:00:00.000Z",
                        "vitrine": {
                            "peso": 1.18,
                            "altura": 9.2,
                            "largura": 9.2,
                            "produto": "57",
                            "descricao": "Aditivo de Radiador",
                            "profundidade": 20,
                            "segmento": "Veículos Leves",
                            "foto": "57/upload/GJZW012R2-1.JPG",
                            "subgrupo": "Aditivos de Radiador"
                        },
                        "vendido_por": "Piloto DMS/SINC",
                        "descricao_padrao": "Aditivo de Radiador",
                        "descricao_original": "Aditivo Radiador Original Volkswagen G12 Concentrado 1 Litro",
                        "timestamp": 0,
                        "codigos_originais": "GJZW012R2",
                        "codigo_original": "",
                        "foto_principal": "57/upload/GJZW012R2-1.JPG",
                        "estoque": 49
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
                        "peso_itens": 1.239,
                        "volume_embalagem": 10222.5,
                        "volume_max": 10222.5,
                        "volume_itens": 1692.8,
                        "volume_utilizado": 1692.8,
                        "itens_embalagem": 1,
                        "itens_volume": 1,
                        "peso_utilizado": 12.39,
                        "peso_utilizado_percentual": 12.39,
                        "volume_utilizado_percentual": 16.56,
                        "produtos": [
                            {
                                "id": "57",
                                "id_produto_variacao": "57",
                                "segmento": "Veículos Leves",
                                "subgrupo": "Aditivos de Radiador",
                                "descricao": "Aditivo de Radiador",
                                "codigosoriginais": [
                                    "GJZW012R2"
                                ],
                                "foto":"57/upload/GJZW012R2-1.JPG",
                                "vendido_por":"Piloto DMS/SINC",
                                "id_loja":47,
                                "cep_origem":"01524-001",
                                "INFO_BOUTIQUE":[

                                ],
                                "quantidade":1,
                                "preco_final":104.25,
                                "estoque":49,
                                "largura":9.2,
                                "altura":9.2,
                                "profundidade":20,
                                "peso":1.18,
                                "volume":1692.8,
                                "embalagem":[

                                ],
                                "posicao":[
                                    "profundidade",
                                    "largura",
                                    "altura"
                                ]
                            }
                        ],
                        "unidade":"cm cubicos",
                        "preco_final":104.25
                    }
                ],
                "vendido_por":"Piloto DMS/SINC",
                "frete":[
                    {
                        "empresa": "Correios",
                        "entrega_metodo_tipo": "EXPRESS",
                        "entrega_metodo_nome": "Correios Sedex",
                        "entrega_metodo_id": "2",
                        "entrega_custo_final": 22.82,
                        "entrega_estimada_dias": 2
                    }
                ]
            }
        ]
    }


def vw_login():

    return{
        "email": "testeepeca@gmail.com",
        "senha": "123456teste"
    }


def vw_login_sem_sucesso():

    return{
        "email": "joaomarcos@e-peca.com.br",
        "senha": "2343564643"
    }


def vw_login_senha_curta():

    return{
        "email": "joaomarcos@e-peca.com.br",
        "senha": "123"
    }


def vw_login_com_email_valido_senha_invalida():

    return{
        "email": "testeepeca@gmail.com",
        "senha": "ASFDGFHJH"
    }


def vw_login_com_senha_valida_email_invalido():

    return{
        "email": "teste@e-peca.com.br",
        "senha": "123456joao"
    }


def vw_verifica_frete():

    return{
        "cep_destino": "07929-020",
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


def vw_frete_invalido():

    return{
        "cep_destino": "00000-000",
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


def vw_frete_invalido_1():

    return{
        "cep_destino": "12345-678",
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


def vw_frete_invalido_2():

    return{
        "cep_destino": "22222-222",
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


def vw_frete_invalido_3():

    return{
        "cep_destino": "88888-888",
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


def vw_frete_curto():

    return{
        "cep_destino": "07929",
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


def vw_cep_sao_paulo():

    return{
        "cep_destino": "01153-000",
        "url": "https://vw.teste.e-peca.com.br/checkout/carrinho",
        "produtos": [
            {
                "id": "57",
                "id_produto_variacao": "57",
                "preco_final": 104.25,
                "quantidade": 1,
                "codigosoriginais": [
                    "GJZW012R2"
                ],
                "id_loja":47
            }
        ]
    }


def vw_cep_alagoas():

    return{
        "cep_destino": "57010-002",
        "url": "https://vw.teste.e-peca.com.br/checkout/carrinho",
        "produtos": [
            {
                "id": "57",
                "id_produto_variacao": "57",
                "preco_final": 104.25,
                "quantidade": 1,
                "codigosoriginais": [
                    "GJZW012R2"
                ],
                "id_loja":47
            }
        ]
    }


def vw_cep_amapa():

    return{
        "cep_destino": "68950-000",
        "url": "https://vw.teste.e-peca.com.br/checkout/carrinho",
        "produtos": [
            {
                "id": "57",
                "id_produto_variacao": "57",
                "preco_final": 104.25,
                "quantidade": 1,
                "codigosoriginais": [
                    "GJZW012R2"
                ],
                "id_loja":47
            }
        ]
    }


def vw_cep_bahia():

    return{
        "cep_destino": "40020-025",
        "url": "https://vw.teste.e-peca.com.br/checkout/carrinho",
        "produtos": [
            {
                "id": "57",
                "id_produto_variacao": "57",
                "preco_final": 104.25,
                "quantidade": 1,
                "codigosoriginais": [
                    "GJZW012R2"
                ],
                "id_loja":47
            }
        ]
    }


def vw_cep_ceara():

    return{
        "cep_destino": "60010-030",
        "url": "https://vw.teste.e-peca.com.br/checkout/carrinho",
        "produtos": [
            {
                "id": "57",
                "id_produto_variacao": "57",
                "preco_final": 104.25,
                "quantidade": 1,
                "codigosoriginais": [
                    "GJZW012R2"
                ],
                "id_loja":47
            }
        ]
    }


def vw_frete_com_simbolos():

    return{
        "cep_destino": "07929-%@0",
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


def vw_calculo_frete():
    return{
        "finger_print": "b71ed7776d9c278eb17ee2d74928212b0ab13fe5",
        "cliente": {
            "id_identificador": "81185859055",
            "email": "testeepeca@gmail.com",
            "nome_razao": "teste",
            "endereco_cobranca": {
                "uf": "SP",
                "cep": "07950-250",
                "nro": "106",
                "obs": None,
                "bairro": "Jardim Antomar",
                "cidade": "Francisco Morato",
                "logradouro": "Rua Luiz Vicentina Natalício",
                "complemento": ""
            },
            "endereco_entrega": {
                "uf": "SP",
                "cep": "07950-250",
                "nro": "106",
                "obs": None,
                "bairro": "Jardim Antomar",
                "cidade": "Francisco Morato",
                "logradouro": "Rua Luiz Vicentina Natalício",
                "complemento": ""
            }
        },
        "cupom_desconto": {
            "nome": "",
            "valor_total_produtos": 104.25
        },
        "origens": [
            {
                "cep_origem": "01524-001",
                "cep_destino": "07950250",
                "url": "",
                "produtos": [
                    {
                        "id": "57",
                        "id_produto_variacao": "57",
                        "preco_final": 104.25,
                        "quantidade": 1,
                        "codigosoriginais": [
                            "GJZW012R2"
                        ],
                        "id_loja":47,
                        "subgrupo":"Aditivos de Radiador",
                        "segmento":"Veículos Leves",
                        "descricao":"Aditivo de Radiador",
                        "largura":9.2,
                        "altura":9.2,
                        "profundidade":20,
                        "peso":1.18,
                        "foto":"57/upload/GJZW012R2-1.JPG",
                        "INFO_BOUTIQUE":[

                        ],
                        "id_produto":"57",
                        "id_produto_pai":"57",
                        "id_empresa":47,
                        "pn_produto":"GJZW012R2",
                        "nome_marketplace":"EPECA",
                        "alias":"47-ERP-SINC-HBW",
                        "cep_origem":"01524-001",
                        "estoque_minimo":0,
                        "estoque_disponivel":47,
                        "estoque_seguranca":-2,
                        "filter":"",
                        "preco":104.25,
                        "preco_desconto":0,
                        "preco_prioritario":0,
                        "preco_majorado":104.25,
                        "preco_tabela":94.77,
                        "preco_manual":0,
                        "preco_publico":104.25,
                        "preco_selecionado":"MAJORADO",
                        "desconto":0,
                        "tamanho":"",
                        "tamanho_display":"",
                        "info_gerais":{
                            "segmento": "Veículos Leves",
                            "foto": "57/upload/GJZW012R2-1.JPG",
                            "largura": 9.2,
                            "altura": 9.2,
                            "peso": 1.18,
                            "subgrupo": "Aditivos de Radiador",
                            "categoria": [
                                {
                                    "departamento_nome": "Peças VW",
                                    "subgrupo_nome": "Aditivos de Radiador",
                                    "grupo_nome": "Aditivos de Radiador",
                                    "secao_nome": "Motor"
                                }
                            ],
                            "tamanho_unico": "",
                            "profundidade": 20,
                            "descricao": "Aditivo de Radiador"
                        },
                        "status": "ATIVO",
                        "data_cadastro": "2021-12-06T17:53:01.735261Z",
                        "data_atualizacao": "",
                        "data_ultima_compra": "2020-07-27T00:00:00.000Z",
                        "data_ultima_venda": "2020-07-31T00:00:00.000Z",
                        "vitrine": {
                            "peso": 1.18,
                            "altura": 9.2,
                            "largura": 9.2,
                            "produto": "57",
                            "descricao": "Aditivo de Radiador",
                            "profundidade": 20,
                            "segmento": "Veículos Leves",
                            "foto": "57/upload/GJZW012R2-1.JPG",
                            "subgrupo": "Aditivos de Radiador"
                        },
                        "vendido_por": "Piloto DMS/SINC",
                        "descricao_padrao": "Aditivo de Radiador",
                        "descricao_original": "Aditivo Radiador Original Volkswagen G12 Concentrado 1 Litro",
                        "timestamp": 0,
                        "codigos_originais": "GJZW012R2",
                        "codigo_original": "",
                        "foto_principal": "57/upload/GJZW012R2-1.JPG",
                        "estoque": 49
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
                        "peso_itens": 1.239,
                        "volume_embalagem": 10222.5,
                        "volume_max": 10222.5,
                        "volume_itens": 1692.8,
                        "volume_utilizado": 1692.8,
                        "itens_embalagem": 1,
                        "itens_volume": 1,
                        "peso_utilizado": 12.39,
                        "peso_utilizado_percentual": 12.39,
                        "volume_utilizado_percentual": 16.56,
                        "produtos": [
                            {
                                "id": "57",
                                "id_produto_variacao": "57",
                                "segmento": "Veículos Leves",
                                "subgrupo": "Aditivos de Radiador",
                                "descricao": "Aditivo de Radiador",
                                "codigosoriginais": [
                                    "GJZW012R2"
                                ],
                                "foto":"57/upload/GJZW012R2-1.JPG",
                                "vendido_por":"Piloto DMS/SINC",
                                "id_loja":47,
                                "cep_origem":"01524-001",
                                "INFO_BOUTIQUE":[

                                ],
                                "quantidade":1,
                                "preco_final":104.25,
                                "estoque":49,
                                "largura":9.2,
                                "altura":9.2,
                                "profundidade":20,
                                "peso":1.18,
                                "volume":1692.8,
                                "embalagem":[

                                ],
                                "posicao":[
                                    "profundidade",
                                    "largura",
                                    "altura"
                                ]
                            }
                        ],
                        "unidade":"cm cubicos",
                        "preco_final":104.25
                    }
                ],
                "vendido_por":"Piloto DMS/SINC",
                "frete":[
                    {
                        "empresa": "Correios",
                        "entrega_metodo_tipo": "EXPRESS",
                        "entrega_metodo_nome": "Correios Sedex",
                        "entrega_metodo_id": "2",
                        "entrega_custo_final": 22.82,
                        "entrega_estimada_dias": 2
                    }
                ]
            }
        ]

    }
