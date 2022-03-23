def sercon_conexao():

    return{
        "method": "GET",
        "endpoint": "http://191.13.225.81:8001/api/conexao/status",
        "body": "",
        "headers": {
            "x-api-key": "7844ca0f11195a8c13df9a13a76c89acdfb96730d70eb69e6159430c28ac9d01",
            "Content-Type": "application/json"
        }
    }


def sercon_token():

    return{
        "method": "POST",
        "endpoint": "http://191.13.225.81:8001/api/login",
        "body": {
            "login": "",
            "senha": ""
        },
        "headers": {
            "Content-Type": "application/json"
        }
    }


def sercon_ativar_produtos():

    return{
        "method": "POST",
        "endpoint": "http://191.13.225.81:8001/api/produtos",
        "body": [
            {
                "produtoId": "030109119AB",
                "erpEmpresaId": "0833",
                "codigoOriginal": "030/  109119/AB/",
                "status": "ATIVAR",
                "dtAtualizacao": "2021-08-30T14:53:48.653Z"
            }
        ],
        "headers": {
            "x-api-key": "7844ca0f11195a8c13df9a13a76c89acdfb96730d70eb69e6159430c28ac9d01",
            "Content-Type": "application/json"
        }
    }


def sercon_ativar_2_produtos():

    return{
        "method": "POST",
        "endpoint": "http://191.13.225.81:8001/api/produtos",
        "body": [
            {
                "produtoId": "030109119AB",
                "erpEmpresaId": "0833",
                "codigoOriginal": "030/  109119/AB/",
                "status": "ATIVAR",
                "dtAtualizacao": "2021-08-30T14:53:48.653Z"
            },
            {
                "produtoId": "JZW698451",
                "erpEmpresaId": "0833",
                "codigoOriginal": "JZW698451",
                "status": "ATIVAR",
                "dtAtualizacao": "2021-08-30T14:53:48.653Z"
            }
        ],
        "headers": {
            "x-api-key": "7844ca0f11195a8c13df9a13a76c89acdfb96730d70eb69e6159430c28ac9d01",
            "Content-Type": "application/json"
        }
    }


def sercon_ativar_5_produtos():

    return{
        "method": "POST",
        "endpoint": "http://191.13.225.81:8001/api/produtos",
        "body": [
            {
                "produtoId": "030109119AB",
                "erpEmpresaId": "0833",
                "codigoOriginal": "030/  109119/AB/",
                "status": "ATIVAR",
                "dtAtualizacao": "2021-08-30T14:53:48.653Z"
            },
            {
                "produtoId": "5U0035849C",
                "erpEmpresaId": "0833",
                "codigoOriginal": "5U0/  035849/C /",
                "status": "DESATIVAR",
                "dtAtualizacao": "2021-08-30T14:53:48.653Z"
            },
            {
                "produtoId": "JZW698451",
                "erpEmpresaId": "0833",
                "codigoOriginal": "030/  109119/AB/",
                "status": "ATIVAR",
                "dtAtualizacao": "2021-08-30T14:53:48.653Z"
            },
            {
                "produtoId": "JZW698451A",
                "erpEmpresaId": "0833",
                "codigoOriginal": "5U0/  035849/C /",
                "status": "DESATIVAR",
                "dtAtualizacao": "2021-08-30T14:53:48.653Z"
            },
            {
                "produtoId": "GJZW012R2",
                "erpEmpresaId": "0833",
                "codigoOriginal": "030/  109119/AB/",
                "status": "ATIVAR",
                "dtAtualizacao": "2021-08-30T14:53:48.653Z"
            }
        ],
        "headers": {
            "x-api-key": "7844ca0f11195a8c13df9a13a76c89acdfb96730d70eb69e6159430c28ac9d01",
            "Content-Type": "application/json"
        }
    }


def sercon_retirar_4_produtos_da_fila():

    return{
        "method": "PUT",
        "endpoint": "http://191.13.225.81:8001/api/produtos/fila",
        "body": [
            {
                "produtoId": "030109119AB",
                "erpEmpresaId": "0833"
            },
            {
                "produtoId": "5U0035849C",
                "erpEmpresaId": "0833"
            },
            {
                "produtoId": "JZW698451",
                "erpEmpresaId": "0833"
            },
            {
                "produtoId": "JZW698451A",
                "erpEmpresaId": "0833"
            }
        ],
        "headers": {
            "x-api-key": "7844ca0f11195a8c13df9a13a76c89acdfb96730d70eb69e6159430c28ac9d01",
            "Content-Type": "application/json"
        }
    }


def sercon_ativar_15_produtos():

    return{
        "method": "POST",
        "endpoint": "http://191.13.225.81:8001/api/produtos",
        "body": [
            {
                "produtoId": "030109119AB",
                "erpEmpresaId": "0833",
                "codigoOriginal": "030109119AB",
                "status": "ATIVAR",
                "dtAtualizacao": "2021-08-30T14:53:48.653Z"
            },
            {
                "produtoId": "5U0035849C",
                "erpEmpresaId": "0833",
                "codigoOriginal": "5U0035849C",
                "status": "DESATIVAR",
                "dtAtualizacao": "2021-08-30T14:53:48.653Z"
            },
            {
                "produtoId": "JZW698451",
                "erpEmpresaId": "0833",
                "codigoOriginal": "JZW698451",
                "status": "ATIVAR",
                "dtAtualizacao": "2021-08-30T14:53:48.653Z"
            },
            {
                "produtoId": "JZW698451A",
                "erpEmpresaId": "0833",
                "codigoOriginal": "JZW698451A",
                "status": "DESATIVAR",
                "dtAtualizacao": "2021-08-30T14:53:48.653Z"
            },
            {
                "produtoId": "GJZW012R2",
                "erpEmpresaId": "0833",
                "codigoOriginal": "GJZW012R2",
                "status": "ATIVAR",
                "dtAtualizacao": "2021-08-30T14:53:48.653Z"
            },
            {
                "produtoId": "JZW615301",
                "erpEmpresaId": "0833",
                "codigoOriginal": "JZW615301",
                "status": "ATIVAR",
                "dtAtualizacao": "2021-08-30T14:53:48.653Z"
            },
            {
                "produtoId": "JZZ129620C",
                "erpEmpresaId": "0833",
                "codigoOriginal": "JZZ129620C",
                "status": "ATIVAR",
                "dtAtualizacao": "2021-08-30T14:53:48.653Z"
            },
            {
                "produtoId": "JZZ998002",
                "erpEmpresaId": "0833",
                "codigoOriginal": "JZZ998002",
                "status": "ATIVAR",
                "dtAtualizacao": "2021-08-30T14:53:48.653Z"
            },
            {
                "produtoId": "JZW413031A",
                "erpEmpresaId": "0833",
                "codigoOriginal": "JZW413031A",
                "status": "ATIVAR",
                "dtAtualizacao": "2021-08-30T14:53:48.653Z"
            },
            {
                "produtoId": "JZW998002K",
                "erpEmpresaId": "0833",
                "codigoOriginal": "JZW998002K",
                "status": "ATIVAR",
                "dtAtualizacao": "2021-08-30T14:53:48.653Z"
            },
            {
                "produtoId": "JZW698451C",
                "erpEmpresaId": "0833",
                "codigoOriginal": "JZW698451C",
                "status": "ATIVAR",
                "dtAtualizacao": "2021-08-30T14:53:48.653Z"
            },
            {
                "produtoId": "JZW698151AC",
                "erpEmpresaId": "0833",
                "codigoOriginal": "JZW698151AC",
                "status": "ATIVAR",
                "dtAtualizacao": "2021-08-30T14:53:48.653Z"
            },
            {
                "produtoId": "JZW201511",
                "erpEmpresaId": "0833",
                "codigoOriginal": "JZW201511",
                "status": "ATIVAR",
                "dtAtualizacao": "2021-08-30T14:53:48.653Z"
            },
            {
                "produtoId": "JZZ698151AA",
                "erpEmpresaId": "0833",
                "codigoOriginal": "JZZ698151AA",
                "status": "ATIVAR",
                "dtAtualizacao": "2021-08-30T14:53:48.653Z"
            },
            {
                "produtoId": "JZW998002Q",
                "erpEmpresaId": "0833",
                "codigoOriginal": "JZW998002Q",
                "status": "ATIVAR",
                "dtAtualizacao": "2021-08-30T14:53:48.653Z"
            }
        ],
        "headers": {
            "x-api-key": "7844ca0f11195a8c13df9a13a76c89acdfb96730d70eb69e6159430c28ac9d01",
            "Content-Type": "application/json"
        }
    }


def sercon_buscar_produtos_na_fila():

    return{
        "method": "GET",
        "endpoint": "http://191.13.225.81:8001/api/produtos/fila",
        "body": "",
        "headers": {
            "x-api-key": "7844ca0f11195a8c13df9a13a76c89acdfb96730d70eb69e6159430c28ac9d01",
            "Content-Type": "application/json"
        }
    }


def sercon_retirar_produtos_da_fila():

    return{
        "method": "PUT",
        "endpoint": "http://191.13.225.81:8001/api/produtos/fila",
        "body": [
            {
                "produtoId": "030109119AB",
                "erpEmpresaId": "0833"
            },
            {
                "produtoId": "5U0035849C",
                "erpEmpresaId": "0833"
            },
            {
                "produtoId": "GJZW012R2",
                "erpEmpresaId": "0833"
            },
            {
                "produtoId": "JZW698451",
                "erpEmpresaId": "0833"
            },
            {
                "produtoId": "JZW698451A",
                "erpEmpresaId": "0833"
            }
        ],
        "headers": {
            "x-api-key": "7844ca0f11195a8c13df9a13a76c89acdfb96730d70eb69e6159430c28ac9d01",
            "Content-Type": "application/json"
        }
    }


def sercon_retirar_1_produtos_da_fila():

    return{
        "method": "PUT",
        "endpoint": "http://191.13.225.81:8001/api/produtos/fila",
        "body": [
            {
                "produtoId": "030109119AB",
                "erpEmpresaId": "0833"
            }
        ],
        "headers": {
            "x-api-key": "7844ca0f11195a8c13df9a13a76c89acdfb96730d70eb69e6159430c28ac9d01",
            "Content-Type": "application/json"
        }

    }


def sercon_retirar_2_produtos_da_fila():

    return{
        "method": "PUT",
        "endpoint": "http://191.13.225.81:8001/api/produtos/fila",
        "body": [
            {
                "produtoId": "030109119AB",
                "erpEmpresaId": "0833"
            },
            {
                "produtoId": "JZW698451",
                "erpEmpresaId": "0833"
            }
        ],
        "headers": {
            "x-api-key": "7844ca0f11195a8c13df9a13a76c89acdfb96730d70eb69e6159430c28ac9d01",
            "Content-Type": "application/json"
        }

    }


def sercon_retirar_10_produtos_da_fila():

    return{
        "method": "PUT",
        "endpoint": "http://191.13.225.81:8001/api/produtos/fila",
        "body": [
            {
                "produtoId": "030109119AB",
                "erpEmpresaId": "0833"
            },
            {
                "produtoId": "JZW615301",
                "erpEmpresaId": "0833"
            },
            {
                "produtoId": "JZZ129620C",
                "erpEmpresaId": "0833"
            },
            {
                "produtoId": "JZZ998002",
                "erpEmpresaId": "0833"
            },
            {
                "produtoId": "JZW413031A",
                "erpEmpresaId": "0833"
            },
            {
                "produtoId": "JZW698451C",
                "erpEmpresaId": "0833"
            },
            {
                "produtoId": "JZW698451",
                "erpEmpresaId": "0833"
            },
            {
                "produtoId": "5U0035849C",
                "erpEmpresaId": "0833"
            },
            {
                "produtoId": "JZW698451A",
                "erpEmpresaId": "0833"
            },
            {
                "produtoId": "GJZW012R2",
                "erpEmpresaId": "0833"
            }
        ],
        "headers": {
            "x-api-key": "7844ca0f11195a8c13df9a13a76c89acdfb96730d70eb69e6159430c28ac9d01",
            "Content-Type": "application/json"
        }
    }


def sercon_retirar_15_produtos_da_fila():

    return{
        "method": "PUT",
        "endpoint": "http://191.13.225.81:8001/api/produtos/fila",
        "body": [
            {
                "produtoId": "030109119AB",
                "erpEmpresaId": "0833"
            },
            {
                "produtoId": "JZW615301",
                "erpEmpresaId": "0833"
            },
            {
                "produtoId": "JZZ129620C",
                "erpEmpresaId": "0833"
            },
            {
                "produtoId": "JZZ998002",
                "erpEmpresaId": "0833"
            },
            {
                "produtoId": "JZW413031A",
                "erpEmpresaId": "0833"
            },
            {
                "produtoId": "JZW698451C",
                "erpEmpresaId": "0833"
            },
            {
                "produtoId": "JZW698451",
                "erpEmpresaId": "0833"
            },
            {
                "produtoId": "5U0035849C",
                "erpEmpresaId": "0833"
            },
            {
                "produtoId": "JZW698451A",
                "erpEmpresaId": "0833"
            },
            {
                "produtoId": "GJZW012R2",
                "erpEmpresaId": "0833"
            },
            {
                "produtoId": "JZW998002K",
                "erpEmpresaId": "0833"
            },
            {
                "produtoId": "JZW698151AC",
                "erpEmpresaId": "0833"
            },
            {
                "produtoId": "JZW998002Q",
                "erpEmpresaId": "0833"
            },
            {
                "produtoId": "JZW201511",
                "erpEmpresaId": "0833"
            },
            {
                "produtoId": "JZZ698151AA",
                "erpEmpresaId": "0833"
            }
        ],
        "headers": {
            "x-api-key": "7844ca0f11195a8c13df9a13a76c89acdfb96730d70eb69e6159430c28ac9d01",
            "Content-Type": "application/json"
        }
    }


def sercon_pedidos():

    return{
        "method": "POST",
        "endpoint": "http://191.13.225.81:8001/api/pedidos",
        "body": [
            {
                "ecommercePedidoId": "5122222222",
                "vendedorId": "EPECAS",
                "erpEmpresaId": "0833",
                "valorPedido": 248.26,
                "valorFrete": 20.55,
                "dtCriacao": "2021-10-15",
                "dtPagamento": "2021-10-15",
                "cliente": {
                    "tipoCliente": "PF",
                    "cnpjCpf": "94277498060",
                    "inscricaoRg": "1115666647",
                    "nomeRazao": "Sergio Teste",
                    "nomeFantasia": "Sergio Teste",
                    "dddTelefone01": "49",
                    "telefone01": "99999-9999",
                    "dddTelefone02": "",
                    "telefone02": "",
                    "email": "sergio@e-peca.com.br",
                    "genero": "M",
                    "dtNascimento": "1986-06-24",
                    "endereco": {
                        "rua": "Rua Marco Bigarella",
                        "numero": "61",
                        "complemento": "apto 12-A",
                        "uf": "PR",
                        "cidade": "Curitiba",
                        "bairro": "Tarumã",
                        "cep": "82530350",
                        "observacao": "",
                        "codigoIbge": "4106902"
                    }
                },
                "logistica": {
                    "freteId": "1",
                    "dtEntregaEstimada": "2021-10-19",
                    "presente": False,
                    "presenteMensagem": "",
                    "enderecoEntrega": {
                        "rua": "Rua Marco Bigarella",
                        "numero": "61",
                        "complemento": "apto 12-A",
                        "uf": "PR",
                        "cidade": "Curitiba",
                        "bairro": "Tarumã",
                        "cep": "82530350",
                        "observacao": "",
                        "codigoIbge": "4106902"
                    }
                },
                "pagamento": {
                    "formaPagamentoId": "17",
                    "bandeiraCartao": "VISA",
                    "numeroParcelas": "2",
                    "nsu": "41533",
                    "authCodePagamento": "40151"
                },
                "produtos": [
                    {
                        "produtoId": "JZW201511",
                        "precoVenda": 227.71,
                        "quantidade": 1
                    }
                ],
                "informacoesAdicionais": {
                    "intermediador": {
                        "cnpjAdquirencia": "14338304000178",
                        "razaoSocialAdquirencia": "YAPAY PAGAMENTOS ONLINE LTDA",
                        "cnpjIntermediador": "25382893000108",
                        "razaoSocialIntermediador": "E-PECA DESENVOLVIMENTO DE SISTEMAS LTDA",
                        "idRegraValidacao": "2"
                    }
                }
            }
        ],
        "headers": {
            "x-api-key": "7844ca0f11195a8c13df9a13a76c89acdfb96730d70eb69e6159430c28ac9d01",
            "Content-Type": "application/json"
        }
    }


def sercon_nota_fiscal():

    return{
        "method": "GET",
        "endpoint": "http://191.13.225.81:8001/api/pedido/5122222222/nota_fiscal",
        "body": [],
        "headers": {
            "x-api-key": "7844ca0f11195a8c13df9a13a76c89acdfb96730d70eb69e6159430c28ac9d01",
            "Content-Type": "application/json"
        }
    }
