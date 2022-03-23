token_pedido_nbs = "eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp3ayI6eyJrdHkiOiJSU0EiLCJlIjoiQVFBQiIsImtpZCI6IjNmM2U1NjczLTUxNGYtNDg4MC1hZjYxLWY2OWUyMzkxYWRlNiIsIm4iOiJpNFBwbkNnMUxBQTkyazNpY2tFc3VLaW1SSi1JRFR1SkhQV3VVQ0h1S04wbW5tU0hQMmJWSlUza1dtd1p2YWNRNDJJT0cwcFZjajBWUzZGaWpWOVYxYXd0bGctb1JVZWdGYmlDajVMbGhQMXNMVzBzZnNrdDY3RS01bi1RaTNEcC1vTjVZbkpPYnVBeW9ReVdEbVZkbVhVVWNpbTdVajJjNnZXXzVCMXhaOVozeDlHdmdIS180TE02TUtteHpjbE91Tno5RmkyOV9YTFoxSnBGUGxjeGkwa0lZbmJ6ZHpoei1pbC1VX0Y4Y1hIWC1tQ08xR1VYQTZEdGV4eDliSGZjVmVhMzNFLWJ3dWZIME5YV0FGSFpmbTFIa3hUczZiQUozWXdxQWd0M1l0RG9PVHpRUjFpcndrM2ljSFdDeEFVc1ptUUZLNVFGRUExU2l4RGl2YS1SalEifX0.eyJleHAiOjE2NDI2ODgzNjUsImNvZEVtcHJlc2EiOjJ9.Gc9RSyhteES5RlPJ6K_LyxNe-qQga28AFErqadWfYXpDTOC0y1ZkUavEfsAcfh-bPb9fvUoEb86W5d9QxA4hQ7nQ_7ibcxrDl-EVuloXnIY8GgMPZJtgvDRlAousCV0-yyIPpTVZIU2XPUiMC-syo0AJDrgQx1aZP5IyCO4fDTsxEk5ost-G117YZtMwCa-Hgfzl84obV-o2dXIhzDeIxIMP7ByDpATkws3Rr8AwvW5ZSxTEUW_BikhkonAWnNds8m6h2qj9Lh2ZhVwIN0YqN9yu8VbWDjag7H-U1tOvkF5QRslPhIkjYPM3daI_z4ZnIt_1T1HJVS1eV-DGhl633g"
def nbs_token():
    return{
        "method": "POST",
        "endpoint": "http://201.47.184.196:8080/nbs-infra/security/token?usuario=EPECASVW&senha=nbs&idioma=PT&pacote=ASSOBRAV",
        "body": "",
        "headers": ""
    }


def nbs_conexao():
    return{
        "method": "GET",
        "endpoint": "http://200.179.98.135:8357/nbsapi-gateway/nbs/volkswagen/assobrav/microservice/status",
        "body": "",
        "headers": {
            "Authorization": "bearer " + token_pedido_nbs,
            "Content-Type": "application/json"
        }
    }


def nbs_ativar_produtos():

    return{
        "method": "POST",
        "endpoint": "http://200.179.98.135:8357/nbsapi-gateway/nbs/volkswagen/assobrav/api/produtos",
        "body": [
            {
                "produtoId": "JZZ915105",
                "erpEmpresaId": "22",
                "codigoOriginal": "JZZ915105",
                "status": "ATIVAR",
                "dtAtualizacao": "2021-09-10 14:30:30.113441"
            },
            {
                "produtoId": "JZZ915105A",
                "erpEmpresaId": "22",
                "codigoOriginal": "JZZ915105A",
                "status": "ATIVAR",
                "dtAtualizacao": "2021-09-10 14:30:30.113458"
            },
            {
                "produtoId": "JZZ915105B",
                "erpEmpresaId": "22",
                "codigoOriginal": "JZZ915105B",
                "status": "ATIVAR",
                "dtAtualizacao": "2021-09-10 14:30:30.113462"
            },
            {
                "produtoId": "JZZ819653D",
                "erpEmpresaId": "22",
                "codigoOriginal": "JZZ819653D",
                "status": "ATIVAR",
                "dtAtualizacao": "2021-09-10 14:30:30.113465"
            },
            {
                "produtoId": "JZZ819653",
                "erpEmpresaId": "22",
                "codigoOriginal": "JZZ819653",
                "status": "ATIVAR",
                "dtAtualizacao": "2021-09-10 14:30:30.113467"
            },
            {
                "produtoId": "JZZ129620A",
                "erpEmpresaId": "22",
                "codigoOriginal": "JZZ129620A",
                "status": "ATIVAR",
                "dtAtualizacao": "2021-09-10 14:30:30.113470"
            },
            {
                "produtoId": "JZZ129620B",
                "erpEmpresaId": "22",
                "codigoOriginal": "JZZ129620B",
                "status": "ATIVAR",
                "dtAtualizacao": "2021-09-10 14:30:30.113473"
            },
            {
                "produtoId": "JZZ129620D",
                "erpEmpresaId": "22",
                "codigoOriginal": "JZZ129620D",
                "status": "ATIVAR",
                "dtAtualizacao": "2021-09-10 14:30:30.113514"
            },
            {
                "produtoId": "JZZ129620",
                "erpEmpresaId": "22",
                "codigoOriginal": "JZZ129620",
                "status": "ATIVAR",
                "dtAtualizacao": "2021-09-10 14:30:30.113519"
            },
            {
                "produtoId": "JZZ129620C",
                "erpEmpresaId": "22",
                "codigoOriginal": "JZZ129620C",
                "status": "ATIVAR",
                "dtAtualizacao": "2021-09-10 14:30:30.113522"
            }
        ],
        "headers": {
            "Authorization": "bearer eyJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE2MzEyODQzMjIsInN1YiI6IkVQRUNBUy87LzEyMzQ1Ni87IiwiZXhwIjoxNjMxMzcwNzIyLCJpZGlvbWEiOiJQVCIsInBhY290ZSI6IkFTU09CUkFWIiwiY29kRW1wcmVzYSI6MjIsInVzdWFyaW8iOiJFUEVDQVMifQ.LMxaujldyENIHxBmfqAK1LEj_CRRV-RtdGXf0YfByLw",
            "Content-Type": "application/json"
        }
    }


def nbs_buscar_produtos_fila():

    return{
        "method": "GET",
        "endpoint": "http://200.179.98.135:8357/nbsapi-gateway/nbs/volkswagen/assobrav/api/produtos/fila",
        "body": "",
        "headers": {
            "Authorization": "bearer eyJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE2MzEyODQzMjIsInN1YiI6IkVQRUNBUy87LzEyMzQ1Ni87IiwiZXhwIjoxNjMxMzcwNzIyLCJpZGlvbWEiOiJQVCIsInBhY290ZSI6IkFTU09CUkFWIiwiY29kRW1wcmVzYSI6MjIsInVzdWFyaW8iOiJFUEVDQVMifQ.LMxaujldyENIHxBmfqAK1LEj_CRRV-RtdGXf0YfByLw",
            "Content-Type": "application/json"
        }
    }


def nbs_retirar_produtos_da_fila():

    return{
        "method": "PUT",
        "endpoint": "http://200.179.98.135:8357/nbsapi-gateway/nbs/volkswagen/assobrav/api/produtos/fila",
        "body": [
            {
                "produtoId": "3AA868243A",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "3AA9621253X1",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "3AA998490",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "3C0035507M",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "5U7853675A739",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "5U7927808",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "2378575051",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "5U7860145KN2",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "5W0012219",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "5U7827185A",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "5U7853675A2ZZ",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "5U7853596",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "211721153",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "211501121",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "5W0805903N58",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "5U7927807",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "5U7809922C1NN",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "2G5071310",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "1J1863201L2QL",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "1JE945095F",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "5U3831721A1NN",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "5U7831721G1NN",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "5W4833721A1NN",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "1S0863831",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "5U0805903BEL7",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "5U78272299B9",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "377133085B",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "377819103",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "1S0820803E",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "5Z0853601AFDY",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "6Q08532749B9",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "5X08375811NN",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "6EA064317H",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "5Z0823729",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "6Q0411314P",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "6C0853688MFOD",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "6Q08532739B9",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "5Z0809857BGRU",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "5Z6945701B",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "5X0823531",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "5X0711025A",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "6Q0121407D",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "5X0201801",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "5X0201801A",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "6Q0825237R",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "1SB8059039B9",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "1JE8536551NN",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "6EC827933041",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "5U0853677G9B9",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "5Z0853671A9B9",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "5Z0422887D",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "0269190811",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "0143115611",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "0261034832",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "02T911021E",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "030109243Q",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "03L115562",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "06A115561B",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "030105263G",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "030107411L",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "0491033853",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "1027112331",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "04E109119L",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "030198955A",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "030109119AB",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "5U0035849C",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "036919081D",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "1K0899185",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "1133112951",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "321513279",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "305721559A",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "013945415A",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "3258812131",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "2GP064317A",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "04E905612C",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "1JE943021",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "211301215",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "1SB201511",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "3C06011739B9",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "1K5955651",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "5U0121073",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "5428677801NN",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "1J0412331C",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "2H0411313C",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "030109423B",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "030905607",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "2114012731",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "2114056811",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "2114051511",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "357407182",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "2Q0698151G",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "5Z1857521",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "5Z0853601CFDY",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "5U0121156",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "5X0412329",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "5U0122101",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "5U0601147LZ31",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "5U0199167B",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "5U0805583E9B9",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "5U4831721J1NN",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "5Z0858071C1FR",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "5U0199555E",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "6EA805071B",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "5U7860146KN2",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "5Z9827550A",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "6EA805705B",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "6EA827761A",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "5Z0955751",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "5U6955425",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "5U0867299B71N",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "5Z0853685C739",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "5X0419775",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "5Z0412331C",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "5X0943021",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "5U09621259B9",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "WHT004739",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "G052182A2",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "JZZ819653C",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "7X0253111",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "JZW998003D",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "811407181A",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "JZZ129620",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "6Q0411314R",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "JZZ819653",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "030115636D",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "6Q09598589B9",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "N10437301",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "G052527R2",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "WHT001865",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "6EA853688CFOD",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "JZW998003B",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "N90665001",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "7X0201511",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "JZW998003C",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "JZZ115561A",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "6QE721261D",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "JZZ819653D",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "JZZ998002E",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "JZZ698151AE",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "6Q0512131B",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "6EA853675BSEW",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "N90800503",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "7X0311105",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "026121041M",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "06H145255F",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "04E905110M",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "03L130277C",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "0813112614",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "1J0915435J",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "04C141015M",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "04E121119P",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "2H6127401C",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "5U0853677J9B9",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "377809961A",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "6EA035710",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "04C129717D",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "N10087901",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "2378434231",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "11383735511NN",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "5Z0853695",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "N0385491",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "3055015412",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "30585744711NN",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "JZW819653E",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "2QB615301D",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "3217211731NN",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "5U0010795E",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "000010006",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "5U0010795A",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "WHT005433",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "6N0867276",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "377201953",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "211711197",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "WHT005263",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "04E109411N",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "3119552611",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "5U0805583J9B9",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "5Q0411315A",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "5U0853665S9B9",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "1H5863849A01C",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "6EA807184",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "1SB955425A03C",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "7H086729901C",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "1K1819653B",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "1K0412249B",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "5U0010824N",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "ZBA803583A",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "2Q0407183B",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "N0200271",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "1J3881634B71N",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "5U6853687C739",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "2H6129620",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "1H0412303B",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "04E109423F",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "5U7941006",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "5Z0807183A",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "N0177632",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "377809962A",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "5Z0010381K",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "6RD423057N",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "04E129620B",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "1S0820367",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "6Q0820367B",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "5Z0129620",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "WHT001386",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "5U0881203",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "5U0807183",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "1499552751",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "N90813202",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "6Q0121367A",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "032121026CP",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "6QE121367",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "377411327",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "3258812132",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "377819841",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "N90891001",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "059198405B",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "2W0905121B",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "5U0807184A",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "3098672991",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "N10320101",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "811711279",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "5U0807183A",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "V04011006A",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "5Z0955410B",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "6Q0955453P",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "G055512A2",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "6QE906517",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "1K0201051K",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "JZZ129620B",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "N0177382",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "JZZ129620A",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "N10528301",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "6Q2867180Q9B9",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "5Z0867299",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "5U4837399A",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "6X0827499F",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "WHT005353",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "6EA601147AZ31",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "1H0121321C",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "1SB6011478Z8",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "G055025A2",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "377411313",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "JZZ698151AB",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "5G1998002",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "JZZ998002D",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "6Q4837477C5AP",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "V04010031",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "6Q0858069AB1QA",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "N0177535",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "5Z1857522A",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "2H0127401G",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "5U0807184B",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "5U0820159A",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "5U5945106",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "032109121K",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "030109145AL",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "032115251D",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "2378434251",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "5U0807183B",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "06L115562B",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "7L6868243",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "5Z0867299A9B9",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "5X0867299C",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "823711813",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "191827471",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "2H0407077A",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "839601361",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "3CN868243",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "311601367",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "N10640501",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "0401011291",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "059129717S",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "3058218951",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "N10867601",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "101905625",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "3072014498",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "5Z0823301H",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "8018672991NN",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "37388568371N",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "3259717391",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "443955465",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "5U0820160A",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "5Z0805757",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "6RF412319",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "5U7809957A",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "377513425A",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "04E133036D",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "5U0867299B9B9",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "N0195268",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "1319452791",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "377853585",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "5X48373551NN",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "2H0867276",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "431253205B",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "4H0973703",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "547955455",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "5C0122051N",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "5C0501117B",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "3C8807718",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "3C8825202B",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "3C8953042",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "3Q0825902",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "3W0971838",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "3C0953041L",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "3C5919491M",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "3C5919491N",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "3C8807248D",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "5Q0819669",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "3C8807241BGRU",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "JZZ698151AH",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "6EA807183",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "5Z0807184A",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "5Z0823302H",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "04E109244D",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "04E145933AD",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "5U0853601D2ZZ",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "5Z0698151B",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "2QB698151",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "7H0819631",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "6R0820367",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "04C129620A",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "N0203012",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "ZBA805757",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "5Z088167171N",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "N0385494",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "N90765701",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "5U0805584J9B9",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "5U7941005",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "5U0853677D9B9",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "5U0807221ACGRU",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "5U0807221TGRU",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "030109127AE",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "N0177322",
                "erpEmpresaId": 22
            },
            {
                "produtoId": "5U0853666S9B9",
                "erpEmpresaId": 22
            }
        ],
        "headers": {
            "Authorization": "bearer eyJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE2MzYwNTM1NTEsInN1YiI6IkVQRUNBUy87LzEyMzQ1Ni87IiwiZXhwIjoxNjM2MTM5OTUxLCJpZGlvbWEiOiJQVCIsInBhY290ZSI6IkFTU09CUkFWIiwiY29kRW1wcmVzYSI6MjIsInVzdWFyaW8iOiJFUEVDQVMifQ.AhNecpyE7BCoD08j5qW7f2UanOFHmPAU7oYRVwnyA40",
            "Content-Type": "application/json"
        }
    }


def nbs_pedidos():

    return{
        "method": "POST",
        "endpoint": "http://200.179.98.135:8357/nbsapi-gateway/nbs/volkswagen/assobrav/api/pedidos",
        "body": [
            {
                "ecommercePedidoId": "251794970",
                "vendedorId": "EPECAS",
                "erpEmpresaId": "48",
                "valorPedido": 714.08,
                "valorFrete": 168.13,
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
                    "dtEntregaEstimada": "2021-11-06",
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
                    "authCodePagamento": "1233",
                    "transactionId": "1233"
                },
                "produtos": [
                    {
                        "produtoId": "JZZ198015D",
                        "precoVenda": 545.95,
                        "quantidade": 1
                    }
                ]
            }
        ],
        "headers": {
            "Authorization": "bearer eyJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE2MzU3Nzg1NjcsInN1YiI6IkVQRUNBUy87LzEyMzQ1Ni87IiwiZXhwIjoxNjM1ODY0OTY3LCJpZGlvbWEiOiJQVCIsInBhY290ZSI6IkFTU09CUkFWIiwiY29kRW1wcmVzYSI6MjIsInVzdWFyaW8iOiJFUEVDQVMifQ.yff8GBXFOn1DPJTjN0qRHK2vMnKt8c9iDYgjDY4d7SU",
            "Content-Type": "application/json"
        }
    }


def nbs_nota_fiscal():

    return{
        "method": "GET",
        "endpoint": "http://200.179.98.135:8357/nbsapi-gateway/nbs/volkswagen/assobrav/api/pedido/14/nota_fiscal",
        "body": [],
        "headers": {
            "Authorization": "bearer eyJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE2MjkxNDQzNTgsInN1YiI6IkVQRUNBUy87LzEyMzQ1Ni87IiwiZXhwIjoxNjI5MjMwNzU4LCJpZGlvbWEiOiJQVCIsInBhY290ZSI6IkFTU09CUkFWIiwiY29kRW1wcmVzYSI6MjIsInVzdWFyaW8iOiJFUEVDQVMifQ.Zn_P0jpbyegQKBPmwCKkumtX_W2m7IxBZnPk-lXC_6E",
            "Content-Type": "application/json"
        }
    }