def nbs_nasa_token():

    return{
        "method": "POST",
        "endpoint": "http://201.47.184.196:8080/nbs-infra/security/token?usuario=EPECASVW&senha=nbs&idioma=PT&pacote=ASSOBRAV",
        "body": "",
        "headers": ""
    }


def nbs_nasa_conexao():

    return{

        "method": "GET",
        "endpoint": "http://201.47.184.196:8080/assobrav/conexao/status",
        "body": "",
        "headers": {
            "Authorization": "bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp3ayI6eyJrdHkiOiJSU0EiLCJlIjoiQVFBQiIsImtpZCI6IjdjNzRlODU4LTQ1NTItNGMzYS1iZjVkLTEyNzAyOTk2NGExOSIsIm4iOiJxUnB2VVhSWHAtUTVIYkQ2QVFnSkFYVkRXU3l0cWItVnNJam43LU5oYXd2dl9wa3d6QnhrR2ZpZDFYekdLdTgzNjZFdXJhazZjZzRpcGdSUTVhYnM2STNHdzFkTzFVT0lMY0hBdnJHV0NEVVZseU9hX2hMaEwySUJOOFlpQ052YkdnUDZhUkxRVHljY1BBMFpfZUNKbm1maDM0X1QtQkFSRjM0eUl2RkhJakt6MjgzR1VHc1phMEh6VEZjUG5VQW5GN1ExVElTYzBzRjVFWUpKUUhIN1N1ZVJxZF8wbjlkNWR2ZVhsekJCNy1OWTVIajhwUUdOQlY3bHhRMlJfY0dSenBUaW9VZk9nak1lOTQwbDdMeWJUb3FEcWxZdFB4ZWI4Q19EMUNPVEFpcHdEMmh2TVhfa1BXcHFTR1FvNW80YU5CVkdiNE5MNVpZMXhlc19wQnNMZVEifX0.eyJpc3MiOiJodHRwOlwvXC9sb2NhbGhvc3Q6ODA4MCIsInN1YiI6IkVQRUNBU1ZXIiwiZXhwIjoxNjQxMzE4ODg2LCJ1c2VySWQiOjIsImlhdCI6MTY0MTIzMjQ4Nn0.fW7J_BAN_eF3M6eaxTim-uoSKbM_wjxJxvhBbOASrMJ3W0KqppVRLzN61WbRXAzFlrV76-dn4uODoH8Fgx0R8vQezd54lXRYUWGaBrVlWA8oVtpIthMX7NwKvhgAKAOEwnqtthXww7msuOY3DEzdNky5bQpdFDR7Ros3DhyG0zQgWewvkqIs94GDQ8mV7fbiIczQVL5bSY8BgT4D73RvrLI66qYyvQ2LEL_w5PVdLkpSIjcFbW6KP89WxOXXpI0r2hABRkQ4JoqvjCZB02a6RX68qAfxEXxasFr2S_wA69VhAicAgWYWv58Xkwmq2BSQfwZoLkHxFHcL5omE0wOJ9w",
            "Content-Type": "application/json"
        }
    }


def nbs_nasa_ativar_10_produtos():

    return{
        "method": "POST",
        "endpoint": "http://201.47.184.196:8080/assobrav/api/produtos",
        "body": [
            {
                "produtoId": "JZZ915105",
                "erpEmpresaId": "2",
                "codigoOriginal": "JZZ915105",
                "status": "ATIVAR",
                "dtAtualizacao": "2021-12-01T20:18:11.994Z"
            },
            {
                "produtoId": "JZZ698302B",
                "erpEmpresaId": "2",
                "codigoOriginal": "JZZ698302B",
                "status": "ATIVAR",
                "dtAtualizacao": "2021-12-01T20:18:11.994Z"
            },
            {
                "produtoId": "JZZ698151AB",
                "erpEmpresaId": "2",
                "codigoOriginal": "JZZ698151AB",
                "status": "ATIVAR",
                "dtAtualizacao": "2021-12-01T20:18:11.994Z"
            },
            {
                "produtoId": "JZZ998051",
                "erpEmpresaId": "2",
                "codigoOriginal": "JZZ998051",
                "status": "ATIVAR",
                "dtAtualizacao": "2021-12-01T20:18:11.994Z"
            },
            {
                "produtoId": "JZZ698151AH",
                "erpEmpresaId": "2",
                "codigoOriginal": "JZZ698151AH",
                "status": "ATIVAR",
                "dtAtualizacao": "2021-12-01T20:18:11.994Z"
            },
            {
                "produtoId": "JZW698451A",
                "erpEmpresaId": "2",
                "codigoOriginal": "JZW698451A",
                "status": "ATIVAR",
                "dtAtualizacao": "2021-12-01T20:18:11.994Z"
            },
            {
                "produtoId": "JZZ129620B",
                "erpEmpresaId": "2",
                "codigoOriginal": "JZZ129620B",
                "status": "ATIVAR",
                "dtAtualizacao": "2021-12-01T20:18:11.994Z"
            },
            {
                "produtoId": "JZW615301H",
                "erpEmpresaId": "2",
                "codigoOriginal": "JZW615301H",
                "status": "ATIVAR",
                "dtAtualizacao": "2021-12-01T20:18:11.994Z"
            },
            {
                "produtoId": "JZW698151AC",
                "erpEmpresaId": "2",
                "codigoOriginal": "JZW698151AC",
                "status": "ATIVAR",
                "dtAtualizacao": "2021-12-01T20:18:11.994Z"
            },
            {
                "produtoId": "JZW998002",
                "erpEmpresaId": "2",
                "codigoOriginal": "JZW998002",
                "status": "ATIVAR",
                "dtAtualizacao": "2021-12-01T20:18:11.994Z"
            }
        ],
        "headers": {
            "Authorization": "bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp3ayI6eyJrdHkiOiJSU0EiLCJlIjoiQVFBQiIsImtpZCI6IjdjNzRlODU4LTQ1NTItNGMzYS1iZjVkLTEyNzAyOTk2NGExOSIsIm4iOiJxUnB2VVhSWHAtUTVIYkQ2QVFnSkFYVkRXU3l0cWItVnNJam43LU5oYXd2dl9wa3d6QnhrR2ZpZDFYekdLdTgzNjZFdXJhazZjZzRpcGdSUTVhYnM2STNHdzFkTzFVT0lMY0hBdnJHV0NEVVZseU9hX2hMaEwySUJOOFlpQ052YkdnUDZhUkxRVHljY1BBMFpfZUNKbm1maDM0X1QtQkFSRjM0eUl2RkhJakt6MjgzR1VHc1phMEh6VEZjUG5VQW5GN1ExVElTYzBzRjVFWUpKUUhIN1N1ZVJxZF8wbjlkNWR2ZVhsekJCNy1OWTVIajhwUUdOQlY3bHhRMlJfY0dSenBUaW9VZk9nak1lOTQwbDdMeWJUb3FEcWxZdFB4ZWI4Q19EMUNPVEFpcHdEMmh2TVhfa1BXcHFTR1FvNW80YU5CVkdiNE5MNVpZMXhlc19wQnNMZVEifX0.eyJpc3MiOiJodHRwOlwvXC9sb2NhbGhvc3Q6ODA4MCIsInN1YiI6IkVQRUNBU1ZXIiwiZXhwIjoxNjQxMzE4ODg2LCJ1c2VySWQiOjIsImlhdCI6MTY0MTIzMjQ4Nn0.fW7J_BAN_eF3M6eaxTim-uoSKbM_wjxJxvhBbOASrMJ3W0KqppVRLzN61WbRXAzFlrV76-dn4uODoH8Fgx0R8vQezd54lXRYUWGaBrVlWA8oVtpIthMX7NwKvhgAKAOEwnqtthXww7msuOY3DEzdNky5bQpdFDR7Ros3DhyG0zQgWewvkqIs94GDQ8mV7fbiIczQVL5bSY8BgT4D73RvrLI66qYyvQ2LEL_w5PVdLkpSIjcFbW6KP89WxOXXpI0r2hABRkQ4JoqvjCZB02a6RX68qAfxEXxasFr2S_wA69VhAicAgWYWv58Xkwmq2BSQfwZoLkHxFHcL5omE0wOJ9w",
            "Content-Type": "application/json"
        }
    }

def nbs_nasa_ativar_2_produtos():

    return{
        "method": "POST",
        "endpoint": "http://201.47.184.196:8080/assobrav/api/produtos",
        "body": [
            {
                "produtoId": "JZZ915105",
                "erpEmpresaId": "2",
                "codigoOriginal": "JZZ915105",
                "status": "ATIVAR",
                "dtAtualizacao": "2021-12-01T20:18:11.994Z"
            },
            {
                "produtoId": "JZZ698302B",
                "erpEmpresaId": "2",
                "codigoOriginal": "JZZ698302B",
                "status": "ATIVAR",
                "dtAtualizacao": "2021-12-01T20:18:11.994Z"
            }
        ],
        "headers": {
            "Authorization": "bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp3ayI6eyJrdHkiOiJSU0EiLCJlIjoiQVFBQiIsImtpZCI6IjdjNzRlODU4LTQ1NTItNGMzYS1iZjVkLTEyNzAyOTk2NGExOSIsIm4iOiJxUnB2VVhSWHAtUTVIYkQ2QVFnSkFYVkRXU3l0cWItVnNJam43LU5oYXd2dl9wa3d6QnhrR2ZpZDFYekdLdTgzNjZFdXJhazZjZzRpcGdSUTVhYnM2STNHdzFkTzFVT0lMY0hBdnJHV0NEVVZseU9hX2hMaEwySUJOOFlpQ052YkdnUDZhUkxRVHljY1BBMFpfZUNKbm1maDM0X1QtQkFSRjM0eUl2RkhJakt6MjgzR1VHc1phMEh6VEZjUG5VQW5GN1ExVElTYzBzRjVFWUpKUUhIN1N1ZVJxZF8wbjlkNWR2ZVhsekJCNy1OWTVIajhwUUdOQlY3bHhRMlJfY0dSenBUaW9VZk9nak1lOTQwbDdMeWJUb3FEcWxZdFB4ZWI4Q19EMUNPVEFpcHdEMmh2TVhfa1BXcHFTR1FvNW80YU5CVkdiNE5MNVpZMXhlc19wQnNMZVEifX0.eyJpc3MiOiJodHRwOlwvXC9sb2NhbGhvc3Q6ODA4MCIsInN1YiI6IkVQRUNBU1ZXIiwiZXhwIjoxNjQxMzE4ODg2LCJ1c2VySWQiOjIsImlhdCI6MTY0MTIzMjQ4Nn0.fW7J_BAN_eF3M6eaxTim-uoSKbM_wjxJxvhBbOASrMJ3W0KqppVRLzN61WbRXAzFlrV76-dn4uODoH8Fgx0R8vQezd54lXRYUWGaBrVlWA8oVtpIthMX7NwKvhgAKAOEwnqtthXww7msuOY3DEzdNky5bQpdFDR7Ros3DhyG0zQgWewvkqIs94GDQ8mV7fbiIczQVL5bSY8BgT4D73RvrLI66qYyvQ2LEL_w5PVdLkpSIjcFbW6KP89WxOXXpI0r2hABRkQ4JoqvjCZB02a6RX68qAfxEXxasFr2S_wA69VhAicAgWYWv58Xkwmq2BSQfwZoLkHxFHcL5omE0wOJ9w",
            "Content-Type": "application/json"
        }
    }

def nbs_nasa_retirar_1_produto_da_fila():

    return{
        "method": "PUT",
        "endpoint": "http://201.47.184.196:8080/assobrav/api/produtos/fila",
        "body": [
            {
                "produtoId": "JZZ915105",
                "erpEmpresaId": 2
            },
        ],
        "headers": {
            "Authorization": "bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp3ayI6eyJrdHkiOiJSU0EiLCJlIjoiQVFBQiIsImtpZCI6IjdjNzRlODU4LTQ1NTItNGMzYS1iZjVkLTEyNzAyOTk2NGExOSIsIm4iOiJxUnB2VVhSWHAtUTVIYkQ2QVFnSkFYVkRXU3l0cWItVnNJam43LU5oYXd2dl9wa3d6QnhrR2ZpZDFYekdLdTgzNjZFdXJhazZjZzRpcGdSUTVhYnM2STNHdzFkTzFVT0lMY0hBdnJHV0NEVVZseU9hX2hMaEwySUJOOFlpQ052YkdnUDZhUkxRVHljY1BBMFpfZUNKbm1maDM0X1QtQkFSRjM0eUl2RkhJakt6MjgzR1VHc1phMEh6VEZjUG5VQW5GN1ExVElTYzBzRjVFWUpKUUhIN1N1ZVJxZF8wbjlkNWR2ZVhsekJCNy1OWTVIajhwUUdOQlY3bHhRMlJfY0dSenBUaW9VZk9nak1lOTQwbDdMeWJUb3FEcWxZdFB4ZWI4Q19EMUNPVEFpcHdEMmh2TVhfa1BXcHFTR1FvNW80YU5CVkdiNE5MNVpZMXhlc19wQnNMZVEifX0.eyJpc3MiOiJodHRwOlwvXC9sb2NhbGhvc3Q6ODA4MCIsInN1YiI6IkVQRUNBU1ZXIiwiZXhwIjoxNjQxMzE4ODg2LCJ1c2VySWQiOjIsImlhdCI6MTY0MTIzMjQ4Nn0.fW7J_BAN_eF3M6eaxTim-uoSKbM_wjxJxvhBbOASrMJ3W0KqppVRLzN61WbRXAzFlrV76-dn4uODoH8Fgx0R8vQezd54lXRYUWGaBrVlWA8oVtpIthMX7NwKvhgAKAOEwnqtthXww7msuOY3DEzdNky5bQpdFDR7Ros3DhyG0zQgWewvkqIs94GDQ8mV7fbiIczQVL5bSY8BgT4D73RvrLI66qYyvQ2LEL_w5PVdLkpSIjcFbW6KP89WxOXXpI0r2hABRkQ4JoqvjCZB02a6RX68qAfxEXxasFr2S_wA69VhAicAgWYWv58Xkwmq2BSQfwZoLkHxFHcL5omE0wOJ9w",
            "Content-Type": "application/json"
        }
    }

def nbs_nasa_ativar_5_produtos():

    return{
        "method": "POST",
        "endpoint": "http://201.47.184.196:8080/assobrav/api/produtos",
        "body": [
            {
                "produtoId": "JZZ915105",
                "erpEmpresaId": "2",
                "codigoOriginal": "JZZ915105",
                "status": "ATIVAR",
                "dtAtualizacao": "2021-12-01T20:18:11.994Z"
            },
            {
                "produtoId": "JZZ698302B",
                "erpEmpresaId": "2",
                "codigoOriginal": "JZZ698302B",
                "status": "ATIVAR",
                "dtAtualizacao": "2021-12-01T20:18:11.994Z"
            },
            {
                "produtoId": "JZZ698151AB",
                "erpEmpresaId": "2",
                "codigoOriginal": "JZZ698151AB",
                "status": "ATIVAR",
                "dtAtualizacao": "2021-12-01T20:18:11.994Z"
            },
            {
                "produtoId": "JZZ998051",
                "erpEmpresaId": "2",
                "codigoOriginal": "JZZ998051",
                "status": "ATIVAR",
                "dtAtualizacao": "2021-12-01T20:18:11.994Z"
            },
            {
                "produtoId": "JZZ698151AH",
                "erpEmpresaId": "2",
                "codigoOriginal": "JZZ698151AH",
                "status": "ATIVAR",
                "dtAtualizacao": "2021-12-01T20:18:11.994Z"
            }
        ],
        "headers": {
            "Authorization": "bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp3ayI6eyJrdHkiOiJSU0EiLCJlIjoiQVFBQiIsImtpZCI6IjdjNzRlODU4LTQ1NTItNGMzYS1iZjVkLTEyNzAyOTk2NGExOSIsIm4iOiJxUnB2VVhSWHAtUTVIYkQ2QVFnSkFYVkRXU3l0cWItVnNJam43LU5oYXd2dl9wa3d6QnhrR2ZpZDFYekdLdTgzNjZFdXJhazZjZzRpcGdSUTVhYnM2STNHdzFkTzFVT0lMY0hBdnJHV0NEVVZseU9hX2hMaEwySUJOOFlpQ052YkdnUDZhUkxRVHljY1BBMFpfZUNKbm1maDM0X1QtQkFSRjM0eUl2RkhJakt6MjgzR1VHc1phMEh6VEZjUG5VQW5GN1ExVElTYzBzRjVFWUpKUUhIN1N1ZVJxZF8wbjlkNWR2ZVhsekJCNy1OWTVIajhwUUdOQlY3bHhRMlJfY0dSenBUaW9VZk9nak1lOTQwbDdMeWJUb3FEcWxZdFB4ZWI4Q19EMUNPVEFpcHdEMmh2TVhfa1BXcHFTR1FvNW80YU5CVkdiNE5MNVpZMXhlc19wQnNMZVEifX0.eyJpc3MiOiJodHRwOlwvXC9sb2NhbGhvc3Q6ODA4MCIsInN1YiI6IkVQRUNBU1ZXIiwiZXhwIjoxNjQxMzE4ODg2LCJ1c2VySWQiOjIsImlhdCI6MTY0MTIzMjQ4Nn0.fW7J_BAN_eF3M6eaxTim-uoSKbM_wjxJxvhBbOASrMJ3W0KqppVRLzN61WbRXAzFlrV76-dn4uODoH8Fgx0R8vQezd54lXRYUWGaBrVlWA8oVtpIthMX7NwKvhgAKAOEwnqtthXww7msuOY3DEzdNky5bQpdFDR7Ros3DhyG0zQgWewvkqIs94GDQ8mV7fbiIczQVL5bSY8BgT4D73RvrLI66qYyvQ2LEL_w5PVdLkpSIjcFbW6KP89WxOXXpI0r2hABRkQ4JoqvjCZB02a6RX68qAfxEXxasFr2S_wA69VhAicAgWYWv58Xkwmq2BSQfwZoLkHxFHcL5omE0wOJ9w",
            "Content-Type": "application/json"
        }
    }


def nbs_nasa_buscar_produtos_fila():

    return{
        "method": "GET",
        "endpoint": "http://201.47.184.196:8080/assobrav/api/produtos/fila",
        "body": "",
        "headers": {
            "Authorization": "bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp3ayI6eyJrdHkiOiJSU0EiLCJlIjoiQVFBQiIsImtpZCI6IjdjNzRlODU4LTQ1NTItNGMzYS1iZjVkLTEyNzAyOTk2NGExOSIsIm4iOiJxUnB2VVhSWHAtUTVIYkQ2QVFnSkFYVkRXU3l0cWItVnNJam43LU5oYXd2dl9wa3d6QnhrR2ZpZDFYekdLdTgzNjZFdXJhazZjZzRpcGdSUTVhYnM2STNHdzFkTzFVT0lMY0hBdnJHV0NEVVZseU9hX2hMaEwySUJOOFlpQ052YkdnUDZhUkxRVHljY1BBMFpfZUNKbm1maDM0X1QtQkFSRjM0eUl2RkhJakt6MjgzR1VHc1phMEh6VEZjUG5VQW5GN1ExVElTYzBzRjVFWUpKUUhIN1N1ZVJxZF8wbjlkNWR2ZVhsekJCNy1OWTVIajhwUUdOQlY3bHhRMlJfY0dSenBUaW9VZk9nak1lOTQwbDdMeWJUb3FEcWxZdFB4ZWI4Q19EMUNPVEFpcHdEMmh2TVhfa1BXcHFTR1FvNW80YU5CVkdiNE5MNVpZMXhlc19wQnNMZVEifX0.eyJpc3MiOiJodHRwOlwvXC9sb2NhbGhvc3Q6ODA4MCIsInN1YiI6IkVQRUNBU1ZXIiwiZXhwIjoxNjQxMzE4ODg2LCJ1c2VySWQiOjIsImlhdCI6MTY0MTIzMjQ4Nn0.fW7J_BAN_eF3M6eaxTim-uoSKbM_wjxJxvhBbOASrMJ3W0KqppVRLzN61WbRXAzFlrV76-dn4uODoH8Fgx0R8vQezd54lXRYUWGaBrVlWA8oVtpIthMX7NwKvhgAKAOEwnqtthXww7msuOY3DEzdNky5bQpdFDR7Ros3DhyG0zQgWewvkqIs94GDQ8mV7fbiIczQVL5bSY8BgT4D73RvrLI66qYyvQ2LEL_w5PVdLkpSIjcFbW6KP89WxOXXpI0r2hABRkQ4JoqvjCZB02a6RX68qAfxEXxasFr2S_wA69VhAicAgWYWv58Xkwmq2BSQfwZoLkHxFHcL5omE0wOJ9w",
            "Content-Type": "application/json"
        }
    }


def nbs_nasa_retirar_5_produtos_da_fila():

    return{
        "method": "PUT",
        "endpoint": "http://201.47.184.196:8080/assobrav/api/produtos/fila",
        "body": [
            {
                "produtoId": "JZZ915105",
                "erpEmpresaId": 2
            },
            {
                "produtoId": "JZZ698302B",
                "erpEmpresaId": 2
            },
            {
                "produtoId": "JZZ698151AB",
                "erpEmpresaId": 2
            },
            {
                "produtoId": "JZZ998051",
                "erpEmpresaId": 2
            },
            {
                "produtoId": "JZZ698151AH",
                "erpEmpresaId": 2
            },
        ],
        "headers": {
            "Authorization": "bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp3ayI6eyJrdHkiOiJSU0EiLCJlIjoiQVFBQiIsImtpZCI6IjdjNzRlODU4LTQ1NTItNGMzYS1iZjVkLTEyNzAyOTk2NGExOSIsIm4iOiJxUnB2VVhSWHAtUTVIYkQ2QVFnSkFYVkRXU3l0cWItVnNJam43LU5oYXd2dl9wa3d6QnhrR2ZpZDFYekdLdTgzNjZFdXJhazZjZzRpcGdSUTVhYnM2STNHdzFkTzFVT0lMY0hBdnJHV0NEVVZseU9hX2hMaEwySUJOOFlpQ052YkdnUDZhUkxRVHljY1BBMFpfZUNKbm1maDM0X1QtQkFSRjM0eUl2RkhJakt6MjgzR1VHc1phMEh6VEZjUG5VQW5GN1ExVElTYzBzRjVFWUpKUUhIN1N1ZVJxZF8wbjlkNWR2ZVhsekJCNy1OWTVIajhwUUdOQlY3bHhRMlJfY0dSenBUaW9VZk9nak1lOTQwbDdMeWJUb3FEcWxZdFB4ZWI4Q19EMUNPVEFpcHdEMmh2TVhfa1BXcHFTR1FvNW80YU5CVkdiNE5MNVpZMXhlc19wQnNMZVEifX0.eyJpc3MiOiJodHRwOlwvXC9sb2NhbGhvc3Q6ODA4MCIsInN1YiI6IkVQRUNBU1ZXIiwiZXhwIjoxNjQxMzE4ODg2LCJ1c2VySWQiOjIsImlhdCI6MTY0MTIzMjQ4Nn0.fW7J_BAN_eF3M6eaxTim-uoSKbM_wjxJxvhBbOASrMJ3W0KqppVRLzN61WbRXAzFlrV76-dn4uODoH8Fgx0R8vQezd54lXRYUWGaBrVlWA8oVtpIthMX7NwKvhgAKAOEwnqtthXww7msuOY3DEzdNky5bQpdFDR7Ros3DhyG0zQgWewvkqIs94GDQ8mV7fbiIczQVL5bSY8BgT4D73RvrLI66qYyvQ2LEL_w5PVdLkpSIjcFbW6KP89WxOXXpI0r2hABRkQ4JoqvjCZB02a6RX68qAfxEXxasFr2S_wA69VhAicAgWYWv58Xkwmq2BSQfwZoLkHxFHcL5omE0wOJ9w",
            "Content-Type": "application/json"
        }
    }


def nbs_nasa_limpar_fila():

    return{
        "method": "PUT",
        "endpoint": "http://201.47.184.196:8080/assobrav/api/produtos/fila",
        "body": [
               {
      "produtoId": "APR057001IV",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004GD",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "JZZ129620B",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "JZZ698151AB",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004JL",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004JQ",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005PD",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005TJ",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005HG",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005CQ",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004QG",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005TS",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005QB",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004NL",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005FB",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005DS",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004CH",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005QE",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "JZZ129620E",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005PB",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005SP",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005KS",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004F",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "JZZ413031K",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "JZW998002K",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005HH",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004GR",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "JZZ998002D",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004CE",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005CP",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "JZZ998002",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004TH",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005QL",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "JZZ198015B",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004CG",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005QD",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005BJ",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004BR",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005M",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004CS",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004EL",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057003AP",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004PG",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004JG",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "JZW615301",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005ML",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005SD",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004EK",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057002T",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005DP",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005HD",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005NS",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004GM",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005HE",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004FH",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "JZZ198015E",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004JM",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "JZZ513025H",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "JZZ698451AE",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004JN",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004QC",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004J",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004QF",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005LT",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004FK",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005NN",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004JS",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "JZZ998051A",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "JZZ998051",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005HL",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005BT",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005NA",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "JZZ413031B",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "JZW998003A",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004EG",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005TB",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004GK",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004HB",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004JT",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005DN",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004RQ",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005DG",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004G",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005CS",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005NL",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005DM",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "JZZ998051D",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004DS",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "JZW998002Q",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "JZW998002",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005PN",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "JZZ513025B",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "JZZ413031D",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004KB",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005SQ",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005BS",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004FC",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005PP",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005HA",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004LD",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004RT",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004MN",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005NE",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004FS",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005PT",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004NS",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004GB",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005ES",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005KT",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005LB",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004EM",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005MJ",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "JZZ998051C",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004KR",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004HT",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004FR",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "JZZ198015C",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "JZZ698520",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005PQ",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057002TA",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005TP",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004HE",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005GS",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004KL",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "JZW413031A",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004HM",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057002SS",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005QM",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "JZW615301A",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005PC",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004EQ",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004JC",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005HB",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004CK",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005GP",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004DQ",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004JB",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "JZZ413031G",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005PG",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004TG",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "V04010054A",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005SR",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005MR",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005Q",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005QR",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057002ST",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005TF",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "JZZ513025A",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005QN",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "JZZ698151AD",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004JJ",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005DT",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005PE",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005NC",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004QS",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "JZZ513025E",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005ME",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "JZZ513025G",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005GR",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "JZZ819653D",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005PA",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004CB",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004TK",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005N",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005RB",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005BG",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004LP",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004RR",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004KA",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004HS",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004QJ",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004FE",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005TR",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "JZZ915105",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "JZZ129620B",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "JZZ915105B",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "JZZ698302B",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "JZW698151AC",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "JZW615301H",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004MM",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "JZW698451A",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004GA",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "JZZ698151AH",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004KF",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005MF",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004HP",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "JZZ915105A",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004CT",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "V04010054C",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005GT",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004GC",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005MA",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004GN",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "JZZ698151AC",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004FD",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004NG",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005PH",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005NQ",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004EB",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004KM",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "JZW698451C",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "JZZ413031F",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004EA",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004JA",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004DC",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005QH",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004QE",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005RA",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005QP",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005LA",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004NH",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "JZZ413031A",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005DR",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057003AQ",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "V04010054B",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005MN",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "JZZ698302",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004FB",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004TJ",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005HJ",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "JZW998003C",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005TA",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "V04010054",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005T",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005FD",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005QF",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "JZZ513025D",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005R",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "GJZZ250R2BRA",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004FM",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005CT",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004CD",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "GJZZ530R2BRA",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057003AN",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004NJ",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004KE",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005CR",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004EF",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004HF",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004QH",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004FQ",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005MD",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005MG",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005HF",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "JZZ129620D",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004RS",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004K",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "JZW998003B",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "JZZ698151AE",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "JZZ513025",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004HD",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "JZW998002M",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004TM",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "JZZ998002A",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "JZZ998002E",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "JZZ819653B",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "GJZW012R2",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005H",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004CC",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004FJ",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005NK",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004TE",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004QT",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057002RF",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005DJ",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004EE",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004CJ",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004BL",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "JZZ413031C",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004JD",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "JZW413031B",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005SF",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005DH",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005QJ",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004KN",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "JZZ115561A",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005MQ",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057001PJ",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "JZW698151AD",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005D",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004HR",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004ED",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "JZW998003D",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "JZZ998051B",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "JZZ998051E",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004BM",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005SN",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005NJ",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005ST",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005TQ",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004DT",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "JZZ129620C",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004KD",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005QG",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "JZZ129620",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004GJ",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005C",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "JZZ413031",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005CA",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "JZZ413031E",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005PF",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005NH",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005DA",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005PS",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005MB",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004DB",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004TF",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005GQ",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004GH",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004LL",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "GJZZ502M2BRA",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005HC",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005TM",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004HC",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "JZZ413031H",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "GJZZ040R3",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005QC",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004KG",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004RE",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004GL",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004GQ",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004GT",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004JF",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005NB",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004QD",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "JZZ698451AB",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004TJ",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005HJ",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005TA",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005T",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005FD",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "JZZ998051C",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "JZZ513025D",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004FM",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004CD",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004NJ",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005CR",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004EF",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004QH",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005MD",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005HF",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004K",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004HD",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "JZZ998002A",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004NK",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004KH",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "V04010054",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004B",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004FJ",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004QB",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004BQ",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004EP",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004EH",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004GP",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005R",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005CT",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004KR",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "JZZ698520",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004FA",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004KL",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005SG",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005HK",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057003AN",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005PR",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "JZW615301A",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004KE",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005L",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005DB",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004HF",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004HQ",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005GP",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004FQ",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005QT",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005MG",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004CJ",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004RS",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005MR",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "JZW413031B",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057002ST",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004TE",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005DH",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057002RF",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004KN",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005QS",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005FC",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005MM",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004GS",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005D",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "JZZ998002F",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004ED",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "JZZ915105B",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "JZZ998051E",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004BM",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004DA",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004GA",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005NJ",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004KF",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005P",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004DT",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005MF",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005MP",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005QG",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004HP",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005NM",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004GF",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005MS",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004CT",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005PF",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "V04010054C",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005DA",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005GT",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005SE",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005MB",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005NG",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004GC",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004S",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004TF",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004GH",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004GN",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004BL",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004HC",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004FD",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "GJZZ040R3",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004NG",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005QJ",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004KG",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005PH",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005MQ",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005NQ",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "JZW698151AD",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004EB",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004HR",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004KM",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "JZW698451C",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "JZZ413031F",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004EA",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "JZZ998051B",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004JA",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004DC",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005QH",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004LC",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005TQ",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004KD",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004GJ",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005CA",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005NH",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005PS",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004DB",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004QE",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005RA",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005QP",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005LA",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004NH",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "JZZ413031A",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005DR",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057003AQ",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "V04010054B",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005MN",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "JZZ698302",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004FB",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005GQ",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "GJZZ502M2BRA",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "JZZ698451AC",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004FL",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004HT",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004FR",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004GD",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005PQ",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004JL",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057002TA",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004JQ",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005TP",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005PD",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004HE",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005TJ",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005HG",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005CQ",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "JZW413031A",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004HM",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "JZZ513025H",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005TS",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "JZZ698451AE",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005QM",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004JN",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005PC",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005QB",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004QC",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004EQ",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004NL",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004J",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004JC",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005LT",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004FK",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004CK",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004JS",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005QE",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004DQ",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005HL",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005BT",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005NA",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005SP",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "JZW998003A",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005KS",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "V04010054A",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004F",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005SR",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005TB",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "JZZ413031K",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004GK",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005QR",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004HB",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005HH",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004JT",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004GR",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004RQ",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "JZZ998002D",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004G",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005QN",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005CS",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005NL",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005CP",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005DM",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005DT",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005PE",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "JZW998002Q",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005QL",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004QS",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "JZZ513025B",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "JZZ413031D",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005ME",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004CG",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005GR",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "JZZ819653D",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004FC",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005PA",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004BR",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005HA",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004CB",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004TK",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005N",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004CS",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005BG",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004MN",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004EL",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004LP",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005NE",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004KA",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004FS",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004HS",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004PG",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004JG",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004NS",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "JZW615301",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004FE",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004GB",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005ML",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005TR",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004EK",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057002T",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "JZW998003C",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "JZZ413031J",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005HD",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005QF",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005NS",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "GJZZ250R2BRA",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004GM",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "GJZZ530R2BRA",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005HE",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "JZZ819653C",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004FH",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "JZZ198015E",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "JZW201511",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "JZZ129620D",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "JZW998003B",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "JZZ698151AE",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "JZW998002M",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "JZZ698151AJ",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "JZZ198015D",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005SM",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "JZZ819653B",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "GJZW012R2",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004JE",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004CC",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004GE",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004D",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004LT",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004QT",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005MH",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005DJ",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "JZZ998002C",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "JZZ413031C",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004HN",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "JZZ698151AK",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004BP",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "JZW615301J",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005BL",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "JZZ819653",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "JZZ513025F",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004LE",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005SN",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004JP",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005ST",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057003BF",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "JZZ129620C",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005MC",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "JZZ129620",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004EN",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "JZZ413031E",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005QQ",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "JZZ698151AG",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "JZW615601F",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "JZZ698151AA",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "JZZ129620A",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "JZZ698302A",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004LL",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004ES",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005TM",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "JZZ413031H",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004JH",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005QC",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004RE",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004GL",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004GQ",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004GT",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004JF",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005NB",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004QD",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "JZZ698451AB",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004FG",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005SS",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005TK",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004CF",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005FA",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004GG",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004E",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004CR",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004HG",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057003AM",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005QA",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005NR",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004DR",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004BS",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004EJ",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004BT",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004FP",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "JZW698451",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004ET",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004JK",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005QK",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005DQ",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004C",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005MT",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004FN",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005TT",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005ND",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004BK",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005NF",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005DK",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004FT",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "JZZ698451AA",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005SM",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004JE",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004GE",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004LT",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005MH",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "JZZ513025C",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004HN",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004BP",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005BL",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004MK",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004LE",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004JP",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057003BF",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005MC",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004EN",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005QQ",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "JZW615601F",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057001JA",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005NP",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004ES",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004JH",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005ER",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005ET",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004FG",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005SS",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005TK",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004CF",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005FA",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004GG",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004E",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004CR",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004HG",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057003AM",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005QA",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005NR",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004DR",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004BS",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004EJ",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004BT",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004FP",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "JZW698451",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004ET",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004JK",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005QK",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005DQ",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004C",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005MT",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004FN",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005TT",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005ND",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004BK",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005NF",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057005DK",
      "erpEmpresaId": "2"
   },
   {
      "produtoId": "APR057004FT",
      "erpEmpresaId": "2"
   },
        ],
        "headers": {
            "Authorization": "bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp3ayI6eyJrdHkiOiJSU0EiLCJlIjoiQVFBQiIsImtpZCI6IjdjNzRlODU4LTQ1NTItNGMzYS1iZjVkLTEyNzAyOTk2NGExOSIsIm4iOiJxUnB2VVhSWHAtUTVIYkQ2QVFnSkFYVkRXU3l0cWItVnNJam43LU5oYXd2dl9wa3d6QnhrR2ZpZDFYekdLdTgzNjZFdXJhazZjZzRpcGdSUTVhYnM2STNHdzFkTzFVT0lMY0hBdnJHV0NEVVZseU9hX2hMaEwySUJOOFlpQ052YkdnUDZhUkxRVHljY1BBMFpfZUNKbm1maDM0X1QtQkFSRjM0eUl2RkhJakt6MjgzR1VHc1phMEh6VEZjUG5VQW5GN1ExVElTYzBzRjVFWUpKUUhIN1N1ZVJxZF8wbjlkNWR2ZVhsekJCNy1OWTVIajhwUUdOQlY3bHhRMlJfY0dSenBUaW9VZk9nak1lOTQwbDdMeWJUb3FEcWxZdFB4ZWI4Q19EMUNPVEFpcHdEMmh2TVhfa1BXcHFTR1FvNW80YU5CVkdiNE5MNVpZMXhlc19wQnNMZVEifX0.eyJpc3MiOiJodHRwOlwvXC9sb2NhbGhvc3Q6ODA4MCIsInN1YiI6IkVQRUNBU1ZXIiwiZXhwIjoxNjQxMzE4ODg2LCJ1c2VySWQiOjIsImlhdCI6MTY0MTIzMjQ4Nn0.fW7J_BAN_eF3M6eaxTim-uoSKbM_wjxJxvhBbOASrMJ3W0KqppVRLzN61WbRXAzFlrV76-dn4uODoH8Fgx0R8vQezd54lXRYUWGaBrVlWA8oVtpIthMX7NwKvhgAKAOEwnqtthXww7msuOY3DEzdNky5bQpdFDR7Ros3DhyG0zQgWewvkqIs94GDQ8mV7fbiIczQVL5bSY8BgT4D73RvrLI66qYyvQ2LEL_w5PVdLkpSIjcFbW6KP89WxOXXpI0r2hABRkQ4JoqvjCZB02a6RX68qAfxEXxasFr2S_wA69VhAicAgWYWv58Xkwmq2BSQfwZoLkHxFHcL5omE0wOJ9w",
            "Content-Type": "application/json"
        }
    }


def nbs_nasa_retirar_10_produtos_da_fila():

    return{
        "method": "PUT",
        "endpoint": "http://201.47.184.196:8080/assobrav/api/produtos/fila",
        "body": [
            {
                "produtoId": "JZZ915105",
                "erpEmpresaId": 2
            },
            {
                "produtoId": "JZZ698302B",
                "erpEmpresaId": 2
            },
            {
                "produtoId": "JZZ698151AB",
                "erpEmpresaId": 2
            },
            {
                "produtoId": "JZZ998051",
                "erpEmpresaId": 2
            },
            {
                "produtoId": "JZZ698151AH",
                "erpEmpresaId": 2
            },
            {
                "produtoId": "JZW698451A",
                "erpEmpresaId": 2
            },
            {
                "produtoId": "JZZ129620B",
                "erpEmpresaId": 2
            },
            {
                "produtoId": "JZW615301H",
                "erpEmpresaId": 2
            },
            {
                "produtoId": "JZW698151AC",
                "erpEmpresaId": 2
            },
            {
                "produtoId": "JZW998002",
                "erpEmpresaId": 2
            },

        ],
        "headers": {
            "Authorization": "bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp3ayI6eyJrdHkiOiJSU0EiLCJlIjoiQVFBQiIsImtpZCI6IjdjNzRlODU4LTQ1NTItNGMzYS1iZjVkLTEyNzAyOTk2NGExOSIsIm4iOiJxUnB2VVhSWHAtUTVIYkQ2QVFnSkFYVkRXU3l0cWItVnNJam43LU5oYXd2dl9wa3d6QnhrR2ZpZDFYekdLdTgzNjZFdXJhazZjZzRpcGdSUTVhYnM2STNHdzFkTzFVT0lMY0hBdnJHV0NEVVZseU9hX2hMaEwySUJOOFlpQ052YkdnUDZhUkxRVHljY1BBMFpfZUNKbm1maDM0X1QtQkFSRjM0eUl2RkhJakt6MjgzR1VHc1phMEh6VEZjUG5VQW5GN1ExVElTYzBzRjVFWUpKUUhIN1N1ZVJxZF8wbjlkNWR2ZVhsekJCNy1OWTVIajhwUUdOQlY3bHhRMlJfY0dSenBUaW9VZk9nak1lOTQwbDdMeWJUb3FEcWxZdFB4ZWI4Q19EMUNPVEFpcHdEMmh2TVhfa1BXcHFTR1FvNW80YU5CVkdiNE5MNVpZMXhlc19wQnNMZVEifX0.eyJpc3MiOiJodHRwOlwvXC9sb2NhbGhvc3Q6ODA4MCIsInN1YiI6IkVQRUNBU1ZXIiwiZXhwIjoxNjQxMzE4ODg2LCJ1c2VySWQiOjIsImlhdCI6MTY0MTIzMjQ4Nn0.fW7J_BAN_eF3M6eaxTim-uoSKbM_wjxJxvhBbOASrMJ3W0KqppVRLzN61WbRXAzFlrV76-dn4uODoH8Fgx0R8vQezd54lXRYUWGaBrVlWA8oVtpIthMX7NwKvhgAKAOEwnqtthXww7msuOY3DEzdNky5bQpdFDR7Ros3DhyG0zQgWewvkqIs94GDQ8mV7fbiIczQVL5bSY8BgT4D73RvrLI66qYyvQ2LEL_w5PVdLkpSIjcFbW6KP89WxOXXpI0r2hABRkQ4JoqvjCZB02a6RX68qAfxEXxasFr2S_wA69VhAicAgWYWv58Xkwmq2BSQfwZoLkHxFHcL5omE0wOJ9w",
            "Content-Type": "application/json"
        }
    }


def nbs_nasa_pedidos():

    return{
        "method": "POST",
        "endpoint": "http://201.47.184.196:8080/assobrav/api/pedidos",
        "body": [
            {
                "ecommercePedidoId": "251800972",
                "vendedorId": "EPECASVW",
                "erpEmpresaId": "2",
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
                    "freteId": "421",
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
                    "formaPagamentoId": "25366",
                    "bandeiraCartao": "Hipercard Crédito",
                    "numeroParcelas": "1",
                    "nsu": "1233",
                    "authCodePagamento": "1233",
                    "transactionId": "1233"
                },
                "produtos": [
                    {
                        "produtoId": "G1CL003",
                        "precoVenda": 545.95,
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
            "Authorization": "bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp3ayI6eyJrdHkiOiJSU0EiLCJlIjoiQVFBQiIsImtpZCI6IjZmMzNiOTk4LTFjNjAtNGI0ZC1hZjk3LWQwZTE2ZGQ5OTFhYiIsIm4iOiJpQ1VWcjNELXZpYnZ1bV9BYnRjQjRkTzFkZ09wYWRjTllLSXF4M3B5MUphTDI4M1F3cUY4Q0V2VVE0UDFxZkFsSkR0SWFQSTlxQ3haVy1VNThDZ1ByVmxHemxLVmsyN1o3SlVOZVU2UGF6SlBwOW12QVJ2dnd5ci1IbWlnQzFmOXdmdE53ZGZmN05vUjI3X3Y4S2NMOE94TnQ3RndrTmdWcHY2NkNzZnIxRlg5dzM2ZDNFV0NUUFdtRlNsalhxbXJWYXl1VXNxRlI3RlFFMEFPSEl0dWZZaVNZZU1nY0d2SU5XcGZGZlRUVzV0Tm56NzlHOUhUOTVXVjBnTUJwT0lBV0JsNWR2WngyUmtjWFg0Zm1yS2xyWEl4Y2JfQm4yT0JvdkhBbGloQk1ibEFMYjBFSklWQ3pqZnF3bUozaVNUV0pTUkNKTUVrbmJBaEhBY3gxNkJaOFEifX0.eyJpc3MiOiJodHRwOlwvXC9sb2NhbGhvc3Q6ODA4MCIsInN1YiI6IkVQRUNBU1ZXIiwiZXhwIjoxNjM5MjMzNjgyLCJ1c2VySWQiOjIsImlhdCI6MTYzOTE0NzI4Mn0.EG9zHwWbHgChv9xmN8KHgsbkDEDAwRFhahHpF2C3nUY7XYaz-N8pX15GugWz5L8vpFVYoaFItUMut1u5jprcRef3dR7pTl1CZAI_ms4F1ByMkuPnfQufSFqsLzirMjw7okJOeziqKFE8H6t-0sm-ubzO-RQamj2L64Be3LQ7cJzWrrJmI4TV5fr7HO7-xO-5ot8-0bV0SucFbUAMegyjz4jVaUjyRzUYORw9V_GzKo0_4Mfj95EJB_Tx8la-PblYt7zvFp0DHFOdUv_ip0SUqLobEqkURaXBGqSiT3Yrxshf-SzcMS9AK-pj_oXufLC7EQ1EH5dhWL73ozBrHSDCog",
            "Content-Type": "application/json"
        }
    }


def nbs_nasa_nota_fiscal():

    return{
        "method": "GET",
        "endpoint": "http://201.47.184.196:8080/assobrav/api/pedido/251794972/nota_fiscal",
        "body": [],
        "headers": {
            "Authorization": "bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp3ayI6eyJrdHkiOiJSU0EiLCJlIjoiQVFBQiIsImtpZCI6IjdjNzRlODU4LTQ1NTItNGMzYS1iZjVkLTEyNzAyOTk2NGExOSIsIm4iOiJxUnB2VVhSWHAtUTVIYkQ2QVFnSkFYVkRXU3l0cWItVnNJam43LU5oYXd2dl9wa3d6QnhrR2ZpZDFYekdLdTgzNjZFdXJhazZjZzRpcGdSUTVhYnM2STNHdzFkTzFVT0lMY0hBdnJHV0NEVVZseU9hX2hMaEwySUJOOFlpQ052YkdnUDZhUkxRVHljY1BBMFpfZUNKbm1maDM0X1QtQkFSRjM0eUl2RkhJakt6MjgzR1VHc1phMEh6VEZjUG5VQW5GN1ExVElTYzBzRjVFWUpKUUhIN1N1ZVJxZF8wbjlkNWR2ZVhsekJCNy1OWTVIajhwUUdOQlY3bHhRMlJfY0dSenBUaW9VZk9nak1lOTQwbDdMeWJUb3FEcWxZdFB4ZWI4Q19EMUNPVEFpcHdEMmh2TVhfa1BXcHFTR1FvNW80YU5CVkdiNE5MNVpZMXhlc19wQnNMZVEifX0.eyJpc3MiOiJodHRwOlwvXC9sb2NhbGhvc3Q6ODA4MCIsInN1YiI6IkVQRUNBU1ZXIiwiZXhwIjoxNjQxMzE4ODg2LCJ1c2VySWQiOjIsImlhdCI6MTY0MTIzMjQ4Nn0.fW7J_BAN_eF3M6eaxTim-uoSKbM_wjxJxvhBbOASrMJ3W0KqppVRLzN61WbRXAzFlrV76-dn4uODoH8Fgx0R8vQezd54lXRYUWGaBrVlWA8oVtpIthMX7NwKvhgAKAOEwnqtthXww7msuOY3DEzdNky5bQpdFDR7Ros3DhyG0zQgWewvkqIs94GDQ8mV7fbiIczQVL5bSY8BgT4D73RvrLI66qYyvQ2LEL_w5PVdLkpSIjcFbW6KP89WxOXXpI0r2hABRkQ4JoqvjCZB02a6RX68qAfxEXxasFr2S_wA69VhAicAgWYWv58Xkwmq2BSQfwZoLkHxFHcL5omE0wOJ9w",
            "Content-Type": "application/json"
        }
    }
