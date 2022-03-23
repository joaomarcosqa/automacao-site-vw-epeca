Documentation
... Suíte com recursos comuns de sistema

*** Settings ***
Library    SeleniumLibrary
Library    dados_fake.py
*** Variables ***
${BROWSER}      headlesschrome

*** Keywords ***

Abrir navegador
    Open Browser        about:blank   ${BROWSER}
    Maximize Browser Window

Fechar navegador
    Delete All Cookies
    Close Browser