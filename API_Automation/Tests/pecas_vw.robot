Documentation
... Suíte específica para os testes de API

*** Settings ***
Resource                  ../Shared/resources/shared_pecas_vw/resources_pecas_vw.robot
Resource                  ../Shared/variables/variables_api.robot

***Test Cases***
Test case 1: Lojas Prioritárias SP
    DADO que eu me conecte ao WebService - PECAS VW
    QUANDO acessar a minha conta - PECAS VW
    ENTÃO devo verificar as lojas prioritárias de SP - PECAS VW

Test case 2: Lojas Prioritárias RJ
    DADO que eu me conecte ao WebService - PECAS VW
    QUANDO acessar a minha conta - PECAS VW
    ENTÃO devo verificar as lojas prioritárias de RJ - PECAS VW

Test case 3: Lojas Prioritárias GO
    DADO que eu me conecte ao WebService - PECAS VW
    QUANDO acessar a minha conta - PECAS VW
    ENTÃO devo verificar as lojas prioritárias de GO - PECAS VW

Test case 4: Lojas Prioritárias BA
    DADO que eu me conecte ao WebService - PECAS VW
    QUANDO acessar a minha conta - PECAS VW
    ENTÃO devo verificar as lojas prioritárias de BA - PECAS VW

Test case 5: Lojas Prioritárias PR
    DADO que eu me conecte ao WebService - PECAS VW
    QUANDO acessar a minha conta - PECAS VW
    ENTÃO devo verificar as lojas prioritárias de PR - PECAS VW

Test case 6: Lojas Prioritárias SC
    DADO que eu me conecte ao WebService - PECAS VW
    QUANDO acessar a minha conta - PECAS VW
    ENTÃO devo verificar as lojas prioritárias de SC - PECAS VW    