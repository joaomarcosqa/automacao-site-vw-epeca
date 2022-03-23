Documentation
... Suíte com palavras chave de login do sistema

*** Settings ***
Library    SeleniumLibrary
Library    String
Library         FakerLibrary       locale=pt_BR

*** Keywords ***
DADO que eu esteja no site - VW
    Go To       ${home_inicio}

QUANDO acessar a página de login do site - VW
    Click Element                           ${perfil_entrar}
    Wait Until Element Is Visible           ${ponteiro_login}

ENTÃO devo efetuar o login com sucesso - VW
    Input Text                          ${campo_email}                      ${email}
    Input Text                          ${campo_senha}                      ${senha}
    Click button                        ${btn_entrar}
    Wait Until Element Is Visible       ${ponteiro_login}
    Sleep                               4
    Title Should Be                     ${titulo}

ENTÃO devo efetuar o login sem sucesso - VW
    ${email_fake}                       FakerLibrary.email
    Input Text                          ${campo_email}                      ${email_fake}
    Input Text                          ${campo_senha}                      ${senha}
    Click button                        ${btn_entrar}
    Wait Until Element Is Visible       ${login_erro}
    Should Contain                      ${login_erro}                       ${login_msg_erro}

ENTÃO devo efetuar o login sem sucesso e-mail inválido - VW
    ${email_fake}                       FakerLibrary.email
    Input Text                          ${campo_email}                      ${email_fake}
    Input Text                          ${campo_senha}                      ${senha}
    Click button                        ${btn_entrar}
    Wait Until Element Is Visible       ${login_erro}
    Should Contain                      ${login_erro}                       ${login_msg_erro}

ENTÃO devo efetuar o login sem sucesso senha inválida - VW
    Input Text                          ${campo_email}                      ${email}
    Input Password                      ${campo_senha}                      ${nrm_password_invalida} 
    Click button                        ${btn_entrar}
    Wait Until Element Is Visible       ${login_erro}
    Should Contain                      ${login_erro}                       ${login_msg_erro}

ENTÃO devo recuperar senha com sucesso - VW
    Wait Until Element Is Visible       ${link_esqueci_a_senha}
    Click Element                       ${link_esqueci_a_senha}
    Wait Until Element Is Visible       ${ponteiro_recuperar_senha}
    Input Text                          ${campo_email_rec_senha}            ${email}
    Wait Until Element Is Visible       ${btn_recuperar_senha}
    Click Button                        ${btn_recuperar_senha}
    Wait Until Element Is Visible       ${ponteiro_msg_codigo_email}
    Sleep                               8

ENTÃO devo recuperar senha sem sucesso - VW
    ${email_fake}                       FakerLibrary.email
    Wait Until Element Is Visible       ${link_esqueci_a_senha}
    Click Element                       ${link_esqueci_a_senha}
    Wait Until Element Is Visible       ${ponteiro_recuperar_senha}
    Input Text                          ${campo_email_rec_senha}            ${email_fake}
    Wait Until Element Is Visible       ${btn_recuperar_senha}
    Click Button                        ${btn_recuperar_senha}
    Wait Until Element Is Visible       ${ponteiro_msg_erro_enviar_codigo}

ENTÃO devo efetuar o login sem sucesso e-mail e senha inválida - VW
    ${email_fake}                       FakerLibrary.email
    Input Text                          ${campo_email}                      ${email_fake}
    Input Text                          ${campo_senha}                      ${nrm_password_invalida}
    Click button                        ${btn_entrar}
    Wait Until Element Is Visible       ${login_erro}
    Should Contain                      ${login_erro}                       ${login_msg_erro}