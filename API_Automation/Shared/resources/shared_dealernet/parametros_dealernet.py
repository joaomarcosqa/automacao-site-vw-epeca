def dealernet_token():

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


def dealernet_conexao():

    return{
        "method": "GET",
        "endpoint": "https://dealernetwebapi.dealernetworkflow.com.br/DealernetWebApi/DealernetApi?Identificador=47253307000168&API=MarketPlace&Method=VW_EPECAS_STATUS",
        "body": "",
        "headers": {
            "Content-Type": "application/json"
        }
    }


def dealernet_ativar_produto():

    return{
        "method": "POST",
        "endpoint": "https://dealernetwebapi.dealernetworkflow.com.br/DealernetWebApi/DealernetApi/RAW?Identificador=47253307000168&API=MarketPlace&Method=VW_EPECAS_PRODUTOFILAIN",
        "body": "[{\"produtoId\": \"N/ 909707/02/\",\"erpEmpresaId\": \"6\",\"codigoOriginal\": \"N/ 909707/02/\",\"status\": \"ATIVAR\",\"dtAtualizacao\": \"2021-12-02T15:20:58.653\"}]",
        "headers": {
            "Content-Type": "application/json"
        }
    }


def dealernet_buscar_produtos_na_fila():

    return{
        "method": "GET",
        "endpoint": "https://dealernetwebapi.dealernetworkflow.com.br/DealernetWebApi/DealernetApi?Identificador=47253307000168&API=MarketPlace&Method=VW_EPECAS_PRODUTOFILAOUT",
        "body": "",
        "headers": {
            "Content-Type": "application/json"
        }
    }


def dealernet_retirar_produtos_da_fila():

    return{
        "method": "POST",
        "endpoint": "https://dealernetwebapi.dealernetworkflow.com.br/DealernetWebApi/DealernetApi/RAW?Identificador=47253307000168&API=MarketPlace&Method=VW_EPECAS_PRODUTOFILAREMOVE",
        "body": "[ { \"produtoId\": \"N90970702\", \"erpEmpresaId\": \"47253307000168\" } ]",
        "headers": {
            "Content-Type": "application/json"
        }
    }


def dealernet_pedidos():

    return{
        "method": "POST",
        "endpoint": "http://191.13.225.81:8001/api/pedidos",
        "body": [
            {
                "ecommercePedidoId": "51654555555",
                "vendedorId": "1",
                "erpEmpresaId": "47253307000168",
                "valorPedido": 248.26,
                "valorFrete": 20.55,
                "dtCriacao": "2021-12-02",
                "dtPagamento": "2021-12-02",
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
                    "numeroParcelas": "1",
                    "nsu": "41533",
                    "authCodePagamento": "40151",
                    "transactionId": "40151",
                    "parcelas": [
                        {
                            "parcelaReferencia": 1,
                            "quantidadeParcelas": 1,
                            "valorParcela": 248.26,
                            "dtLiquidacao": "2021-12-02"
                        }
                    ]
                },
                "produtos": [
                    {
                        "produtoId": "N90970702",
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
            "Content-Type": "application/json"
        }
    }


def dealernet_pedidos_string():

    return{
        "method": "POST",
        "endpoint": "https://dealernetwebapi.dealernetworkflow.com.br/DealernetWebApi/DealernetApi/RAW?Identificador=47253307000168&API=MarketPlace&Method=VW_EPECAS_CADASTRARPEDIDO",
        "body": "[ { \"ecommercePedidoId\": \"51654555555\", \"vendedorId\": \"1\", \"erpEmpresaId\": \"47253307000168\", \"valorPedido\": 248.26, \"valorFrete\": 20.55, \"dtCriacao\": \"2021-12-02\", \"dtPagamento\": \"2021-12-02\", \"cliente\": { \"tipoCliente\": \"PF\", \"cnpjCpf\": \"94277498060\", \"inscricaoRg\": \"1115666647\", \"nomeRazao\": \"Sergio Teste\", \"nomeFantasia\": \"Sergio Teste\", \"dddTelefone01\": \"49\", \"telefone01\": \"99999-9999\", \"dddTelefone02\": \"\", \"telefone02\": \"\", \"email\": \"sergio@e-peca.com.br\", \"genero\": \"M\", \"dtNascimento\": \"1986-06-24\", \"endereco\": { \"rua\": \"Rua Marco Bigarella\", \"numero\": \"61\", \"complemento\": \"apto 12-A\", \"uf\": \"PR\", \"cidade\": \"Curitiba\", \"bairro\": \"Tarumã\", \"cep\": \"82530350\", \"observacao\": \"\", \"codigoIbge\": \"4106902\" } }, \"logistica\": { \"freteId\": \"1\", \"dtEntregaEstimada\": \"2021-10-19\", \"presente\": false, \"presenteMensagem\": \"\", \"enderecoEntrega\": { \"rua\": \"Rua Marco Bigarella\", \"numero\": \"61\", \"complemento\": \"apto 12-A\", \"uf\": \"PR\", \"cidade\": \"Curitiba\", \"bairro\": \"Tarumã\", \"cep\": \"82530350\", \"observacao\": \"\", \"codigoIbge\": \"4106902\" } }, \"pagamento\": { \"formaPagamentoId\": \"17\", \"bandeiraCartao\": \"VISA\", \"numeroParcelas\": \"1\", \"nsu\": \"41533\", \"authCodePagamento\": \"40151\", \"transactionId\": \"40151\", \"parcelas\": [ { \"parcelaReferencia\": 1, \"quantidadeParcelas\": 1, \"valorParcela\": 248.26, \"dtLiquidacao\": \"2021-12-02\" } ] }, \"produtos\": [ { \"produtoId\": \"N90970702\", \"precoVenda\": 227.71, \"quantidade\": 1 } ], \"informacoesAdicionais\": { \"intermediador\": { \"cnpjAdquirencia\": \"14338304000178\", \"razaoSocialAdquirencia\": \"YAPAY PAGAMENTOS ONLINE LTDA\", \"cnpjIntermediador\": \"25382893000108\", \"razaoSocialIntermediador\": \"E-PECA DESENVOLVIMENTO DE SISTEMAS LTDA\", \"idRegraValidacao\": \"2\" } } } ]",
        "headers": {
            "Content-Type": "application/json"
        }
    }


def dealernet_nota_fiscal():

    return{
        "method": "GET",
        "endpoint": "https://dealernetwebapi.dealernetworkflow.com.br/DealernetWebApi/DealernetApi?Identificador=47253307000168&API=MarketPlace&Method=VW_EPECAS_PEDIDO_NOTAFISCAL&pedido{79888}/nota_fiscal",
        "body": "",
        "headers": {
            "Content-Type": "application/json"
        }
    }