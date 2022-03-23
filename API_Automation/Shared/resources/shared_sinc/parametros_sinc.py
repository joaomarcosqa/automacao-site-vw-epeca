def sinc_conexao():

    return{
        "method": "GET",
        "endpoint": "http://supportweb.com.br:60002/omn/ws/conexao/status",
        "body": "",
        "headers": {
            "token": "1219b1db73d64caa8449a6121925a02c",
            "Content-Type": "application/json"
        }
    }


def sinc_token():

    return{
        "method": "POST",
        "endpoint": "http://supportweb.com.br:60002/supervisor/ws/login",
        "body": {
            "login": "EPECAS",
            "senha": "EPECASVW"
        },
        "headers": {
            "Content-Type": "application/json"
        }
    }


def sinc_ativar_produtos():

    return{
        "method": "POST",
        "endpoint": "http://supportweb.com.br:60002/omn/ws/produtos",
        "body": [
            {
                "produtoId": "JZZ915105",
                "erpEmpresaId": "100",
                "codigoOriginal": "JZZ915105",
                "status": "ATIVAR",
                "dtAtualizacao": "2021-09-14T11:11:12.940733Z"
            },
            {
                "produtoId": "JZZ915105A",
                "erpEmpresaId": "100",
                "codigoOriginal": "JZZ915105A",
                "status": "ATIVAR",
                "dtAtualizacao": "2021-09-14T11:11:12.940733Z"
            },
            {
                "produtoId": "JZZ915105B",
                "erpEmpresaId": "100",
                "codigoOriginal": "JZZ915105B",
                "status": "ATIVAR",
                "dtAtualizacao": "2021-09-14T11:11:12.940733Z"
            },
            {
                "produtoId": "JZZ819653D",
                "erpEmpresaId": "100",
                "codigoOriginal": "JZZ819653D",
                "status": "ATIVAR",
                "dtAtualizacao": "2021-09-14T11:11:12.940733Z"
            },
            {
                "produtoId": "JZZ819653",
                "erpEmpresaId": "100",
                "codigoOriginal": "JZZ819653",
                "status": "ATIVAR",
                "dtAtualizacao": "2021-09-14T11:11:12.940733Z"
            },
            {
                "produtoId": "JZZ129620A",
                "erpEmpresaId": "100",
                "codigoOriginal": "JZZ129620A",
                "status": "ATIVAR",
                "dtAtualizacao": "2021-09-14T11:11:12.940733Z"
            },
            {
                "produtoId": "JZZ129620B",
                "erpEmpresaId": "100",
                "codigoOriginal": "JZZ129620B",
                "status": "ATIVAR",
                "dtAtualizacao": "2021-09-14T11:11:12.940733Z"
            },
            {
                "produtoId": "JZZ129620D",
                "erpEmpresaId": "100",
                "codigoOriginal": "JZZ129620D",
                "status": "ATIVAR",
                "dtAtualizacao": "2021-09-14T11:11:12.940733Z"
            },
            {
                "produtoId": "JZZ129620",
                "erpEmpresaId": "100",
                "codigoOriginal": "JZZ129620",
                "status": "ATIVAR",
                "dtAtualizacao": "2021-09-14T11:11:12.940733Z"
            },
            {
                "produtoId": "JZZ129620C",
                "erpEmpresaId": "100",
                "codigoOriginal": "JZZ129620C",
                "status": "ATIVAR",
                "dtAtualizacao": "2021-09-14T11:11:12.940733Z"
            }
        ],
        "headers": {
            "token": "e7c5338da1d846c498c0ff618a531871",
            "Content-Type": "application/json"
        }
    }


def sinc_ativar_2_produtos():

    return{
        "method": "POST",
        "endpoint": "http://supportweb.com.br:60002/omn/ws/produtos",
        "body": [
            {
                "produtoId": "JZZ915105",
                "erpEmpresaId": "100",
                "codigoOriginal": "JZZ915105",
                "status": "ATIVAR",
                "dtAtualizacao": "2021-09-14T11:11:12.940733Z"
            },
            {
                "produtoId": "JZZ915105A",
                "erpEmpresaId": "100",
                "codigoOriginal": "JZZ915105A",
                "status": "ATIVAR",
                "dtAtualizacao": "2021-09-14T11:11:12.940733Z"
            }
        ],
        "headers": {
            "token": "e7c5338da1d846c498c0ff618a531871",
            "Content-Type": "application/json"
        }
    }


def sinc_buscar_produtos_na_fila():

    return{
        "method": "GET",
        "endpoint": "http://supportweb.com.br:60002/omn/ws/produtos/fila",
        "body": "",
        "headers": {
            "token": "ed80cdeb67024edda0ae86052b61b77a",
            "Content-Type": "application/json"
        }
    }


def sinc_retirar_produtos_da_fila():

    return{
        "method": "PUT",
        "endpoint": "http://supportweb.com.br:60002/omn/ws/produtos/fila",
        "body": [
            {
                "produtoId": "JZZ129620",
                "erpEmpresaId": "100"
            }
        ],
        "headers": {
            "token": "1219b1db73d64caa8449a6121925a02c",
            "Content-Type": "application/json"
        }
    }


def sinc_retirar_2_produtos_da_fila():
    return{
            "method": "PUT",
            "endpoint": "http://supportweb.com.br:60002/omn/ws/produtos/fila",
            "body": [
                {
                    "produtoId": "JZZ915105",
                    "erpEmpresaId": "100"
                },
                {
                    "produtoId": "JZZ915105A",
                    "erpEmpresaId": "100"
                }
            ],
            "headers": {
                "token": "1219b1db73d64caa8449a6121925a02c",
                "Content-Type": "application/json"
            }
    }

def sinc_retirar_15_produtos_da_fila():
    return{
            "method": "PUT",
            "endpoint": "http://supportweb.com.br:60002/omn/ws/produtos/fila",
            "body": [
                {
                    "produtoId": "JZZ915105",
                    "erpEmpresaId": "100"
                },
                {
                    "produtoId": "JZZ915105A",
                    "erpEmpresaId": "100"
                },
                {
                    "produtoId": "JZZ915105A",
                    "erpEmpresaId": "100"
                },
                {
                    "produtoId": "JZZ915105A",
                    "erpEmpresaId": "100"
                },
                {
                    "produtoId": "JZZ915105A",
                    "erpEmpresaId": "100"
                },
                {
                    "produtoId": "JZZ915105A",
                    "erpEmpresaId": "100"
                },
                {
                    "produtoId": "JZZ915105A",
                    "erpEmpresaId": "100"
                },
                {
                    "produtoId": "JZZ915105A",
                    "erpEmpresaId": "100"
                },
                {
                    "produtoId": "JZZ915105A",
                    "erpEmpresaId": "100"
                },
                {
                    "produtoId": "JZZ915105A",
                    "erpEmpresaId": "100"
                },
                {
                    "produtoId": "JZZ915105A",
                    "erpEmpresaId": "100"
                },
                {
                    "produtoId": "JZZ915105A",
                    "erpEmpresaId": "100"
                },
                {
                    "produtoId": "JZZ915105A",
                    "erpEmpresaId": "100"
                },
                {
                    "produtoId": "JZZ915105A",
                    "erpEmpresaId": "100"
                }
            ],
            "headers": {
                "token": "1219b1db73d64caa8449a6121925a02c",
                "Content-Type": "application/json"
            }
    }


def sinc_pedidos():

    return{
        "method": "POST",
        "endpoint": "http://supportweb.com.br:60002/omn/ws/pedidos",
        "body": [
            {
                "ecommercePedidoId": "2264459306",
                "vendedorId": "4049525852",
                "erpEmpresaId": "47",
                "valorPedido": 76.5,
                "valorFrete": 37.79,
                "dtCriacao": "2021-11-01",
                "dtPagamento": "2021-11-01",
                "cliente": {
                    "tipoCliente": "PF",
                    "cnpjCpf": "16487465003",
                    "inscricaoRg": "196182098",
                    "nomeRazao": "Sergio Teste",
                    "nomeFantasia": "None",
                    "dddTelefone01": "41",
                    "telefone01": "996786632",
                    "dddTelefone02": "41",
                    "telefone02": "996786632",
                    "email": "sergio@e-peca.com.br",
                    "genero": "M",
                    "dtNascimento": "1986-06-24",
                    "endereco": {
                        "rua": "MARCO BIGARELLA",
                        "numero": "455",
                        "complemento": "apto",
                        "uf": "PR",
                        "cidade": "Curitiba",
                        "bairro": "Tarumã",
                        "cep": "82530350",
                        "observacao": "edificio teste",
                        "codigoIbge": "4106902"
                    }
                },
                "logistica": {
                    "freteId": "34028316003129",
                    "dtEntregaEstimada": "2021-11-04",
                    "presente": False,
                    "presenteMensagem": "",
                    "enderecoEntrega": {
                        "rua": "MARCO BIGARELLA",
                        "numero": "455",
                        "complemento": "apto",
                        "uf": "PR",
                        "cidade": "Curitiba",
                        "bairro": "Tarumã",
                        "cep": "82530350",
                        "observacao": "edificio teste",
                        "codigoIbge": "4106902"
                    }
                },
                "pagamento": {
                    "formaPagamentoId": "10",
                    "bandeiraCartao": "Hipercard Crédito",
                    "numeroParcelas": "1",
                    "nsu": "1233",
                    "authCodePagamento": "1233"
                },
                "produtos": [
                    {
                        "produtoId": "JZZ819653C",
                        "precoVenda": 38.71,
                        "quantidade": 1
                    }
                ]
            }
        ],
        "headers": {
            "token": "2912ab131f64416c9eb489e260fc6309",
            "Content-Type": "application/json"
        }
    }


def sinc_nota_fiscal():

    return{
        "method": "GET",
        "endpoint": "http://supportweb.com.br:60002/omn/ws/pedido/47111147333/nota_fiscal",
        "body": [],
        "headers": {
            "token": "d21451969f994728b3e5132858b47fc1",
            "Content-Type": "application/json"
        }
    }
