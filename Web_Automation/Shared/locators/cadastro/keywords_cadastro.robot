Documentation
... Suíte com palavras chave de cadastro do sistema

*** Settings ***
Library    SeleniumLibrary
Library    String
# Library    ./../../resources/dados_fake.py
Library         FakerLibrary       locale=pt_BR

*** Keywords ***
# DADO que eu esteja no site - VW
#     Go To       ${home_inicio}

ENTÃO devo deixar todos os campos vazios - VW
    Wait Until Element Is Visible                   ${gravar_cadastro}
    Click Element                                   ${gravar_cadastro}
    Wait Until Element Is Visible                                   ${campo_msg_nome_cadastro}
    Should Contain      ${campo_msg_nome_cadastro}                  ${msg_nome_cadastro}
    Wait Until Element Is Visible                       ${msg_erro_rg_vazio}
    Should Contain      ${msg_erro_rg_vazio}            ${rg_erro_vazio}

    FOR    ${index}    IN RANGE    30
    Press Keys          ${campo_email_2}                BACKSPACE
    END
    Click Element                                       ${gravar_cadastro}

    Wait Until Element Is Visible                       ${msg_erro_email_vazio}
    Should Contain      ${msg_erro_email_vazio}         ${email_erro_vazio}

    Wait Until Element Is Visible                       ${msg_min_8_dig_senha}
    Should Contain      ${msg_min_8_dig_senha}          ${msg_dig_senha}

    Wait Until Element Is Visible                       ${confirm_senha_divergente}
    Should Contain      ${confirm_senha_divergente}     ${msg_confirm_senha}

    Wait Until Element Is Visible                       ${campo_msg_dt_nascimento}
    Should Contain      ${campo_msg_dt_nascimento}      ${msg_dt_nascimento}

    Wait Until Element Is Visible                       ${campo_msg_celular}
    Should Contain      ${campo_msg_celular}            ${msg_celular}

    Wait Until Element Is Visible                       ${campo_msg_cep}
    Should Contain      ${campo_msg_cep}                ${msg_cep}

    Wait Until Element Is Visible                       ${campo_msg_logradouro}
    Should Contain      ${campo_msg_logradouro}         ${msg_logradouro}

    Wait Until Element Is Visible                       ${campo_msg_bairro}
    Should Contain      ${campo_msg_bairro}             ${msg_bairro}

    Wait Until Element Is Visible                       ${campo_msg_numero}
    Should Contain      ${campo_msg_numero}             ${msg_numero}

QUANDO acessar a página de cadastro do site - VW
    ${cpf}                          FakerLibrary.cpf
    ${email}                        FakerLibrary.email
    Click Element                               ${home_btn_entrar}
    Wait Until Element Is Visible               ${cadastro_ponteiro}
    Input Text          ${cadastro_cpfCnpj}             ${cpf}
    Input Text          ${cadastro_email}               ${email}
    Click Element       ${checkbox_termos}
    Wait Until Element Is Visible                       ${cadastro_btn}
    Click Element       ${cadastro_btn}

ENTÃO devo realizar o cadastro feminino - VW
    ${cpf}                          FakerLibrary.cpf
    ${rg}                           Rg Fake
    ${nome}                         FakerLibrary.name
    ${sobrenome}                    FakerLibrary.name
    ${email}                        FakerLibrary.email
    Wait Until Element Is Visible                       ${cadastro_pag2_ponteiro}
    Input Text          ${rg_campo}                     @{rg}
    Input Text          ${nome_cadastro}                ${nome}
    Input Text          ${sobrenome_cadastro}           ${sobrenome}
    Input Text          ${dtnascimento}                 ${nmr_dtnascimanto}
    Input Text          ${celular}                      ${nmr_celular}
    Wait Until Element Is Visible                       ${cookie}
    Click Element       ${cookie}
    Click Element       ${select_genero}
    Wait Until Element Is Visible           ${feminino}
    Click Element       ${feminino}
    Input Password      ${senha_cad}                    ${nrm_password}
    Input Password      ${senha_confirma}               ${nrm_password}
    Input Text          ${cep}                          ${nmr_cep}
    Sleep               8
    Input Text          ${numero_residencia}            ${nmr_residencia}
    Click Element       ${gravar_cadastro}
    Sleep               5
    Wait Until Element Is Visible       ${ver_email_msg}
    Should Contain      ${ver_email_msg}        ${email_confim_msg}

ENTÃO devo realizar o cadastro masculino - VW
    ${cpf}                          FakerLibrary.cpf
    ${rg}                           Rg Fake
    ${nome}                         FakerLibrary.name
    ${sobrenome}                    FakerLibrary.name
    ${email}                        FakerLibrary.email

    Wait Until Element Is Visible                       ${cadastro_pag2_ponteiro}
    Input Text          ${rg_campo}                     @{rg}
    Input Text          ${nome_cadastro}                ${nome}
    Input Text          ${sobrenome_cadastro}           ${sobrenome}
    Input Text          ${dtnascimento}                 ${nmr_dtnascimanto}
    Input Text          ${celular}                      ${nmr_celular}
    Wait Until Element Is Visible                       ${cookie}
    Click Element       ${cookie}
    Click Element       ${select_genero}
    Wait Until Element Is Visible           ${masculino}
    Click Element       ${masculino}
    Input Password      ${senha_cad}                    ${nrm_password}
    Input Password      ${senha_confirma}               ${nrm_password}
    Input Text          ${cep}                          ${nmr_cep}
    Sleep               8
    Input Text          ${numero_residencia}            ${nmr_residencia}
    Click Element       ${gravar_cadastro}
    Sleep               5
    Wait Until Element Is Visible       ${ver_email_msg}
    Should Contain      ${ver_email_msg}        ${email_confim_msg}

ENTÃO devo realizar o cadastro no site com sucesso - VW
    ${cpf}                          FakerLibrary.cpf
    ${rg}                           Rg Fake
    ${nome}                         FakerLibrary.name
    ${sobrenome}                    FakerLibrary.name
    ${email}                        FakerLibrary.email

    Wait Until Element Is Visible                       ${cadastro_pag2_ponteiro}
    Input Text          ${rg_campo}                     @{rg}
    Input Text          ${nome_cadastro}                ${nome}
    Input Text          ${sobrenome_cadastro}           ${sobrenome}
    Input Text          ${dtnascimento}                 ${nmr_dtnascimanto}
    Input Text          ${celular}                      ${nmr_celular}
    Wait Until Element Is Visible                       ${cookie}
    Click Element       ${cookie}
    Click Element       ${select_genero}
    Wait Until Element Is Visible           ${masculino}
    Click Element       ${masculino}
    Input Password      ${senha_cad}                    ${nrm_password}
    Input Password      ${senha_confirma}               ${nrm_password}
    Input Text          ${cep}                          ${nmr_cep}
    Sleep               8
    Input Text          ${numero_residencia}            ${nmr_residencia}
    Click Element       ${gravar_cadastro}
    Sleep               5
    Wait Until Element Is Visible       ${ver_email_msg}
    Should Contain      ${ver_email_msg}        ${email_confim_msg}

ENTÃO devo deixar campo nome vazio e realizar tentativa de cadastro - VW
    ${cpf}                          FakerLibrary.cpf
    ${rg}                           Rg Fake
    ${sobrenome}                    FakerLibrary.name
    ${email}                        FakerLibrary.email

    Wait Until Element Is Visible                       ${cadastro_pag2_ponteiro}
    Input Text          ${rg_campo}                     @{rg}
    Input Text          ${nome_cadastro}                ${vazio}
    Input Text          ${sobrenome_cadastro}           ${sobrenome}
    Input Text          ${dtnascimento}                 ${nmr_dtnascimanto}
    Input Text          ${celular}                      ${nmr_celular}
    Wait Until Element Is Visible                       ${cookie}
    Click Element       ${cookie}
    Click Element       ${select_genero}
    Wait Until Element Is Visible           ${masculino}
    Click Element       ${masculino}
    Input Password      ${senha_cad}                    ${nrm_password}
    Input Password      ${senha_confirma}               ${nrm_password}
    Input Text          ${cep}                          ${nmr_cep}
    Sleep               8
    Input Text          ${numero_residencia}            ${nmr_residencia}
    Click Element       ${gravar_cadastro}
    Sleep               5

    Wait Until Element Is Visible                                   ${campo_msg_nome_cadastro}
    Should Contain      ${campo_msg_nome_cadastro}                  ${msg_nome_cadastro}

ENTÃO devo realizar uma tentativa de cadastro com apenas um caracter no campo nome - VW
    ${cpf}                          FakerLibrary.cpf
    ${rg}                           Rg Fake
    ${nome}     Set Variable        j
    ${sobrenome}                    FakerLibrary.name
    ${email}                        FakerLibrary.email

    Wait Until Element Is Visible                       ${cadastro_pag2_ponteiro}
    Input Text          ${rg_campo}                     @{rg}
    Input Text          ${nome_cadastro}                ${nome}
    Input Text          ${sobrenome_cadastro}           ${sobrenome}
    Input Text          ${dtnascimento}                 ${nmr_dtnascimanto}
    Input Text          ${celular}                      ${nmr_celular}
    Wait Until Element Is Visible                       ${cookie}
    Click Element       ${cookie}
    Click Element       ${select_genero}
    Wait Until Element Is Visible           ${masculino}
    Click Element       ${masculino}
    Input Password      ${senha_cad}                    ${nrm_password}
    Input Password      ${senha_confirma}               ${nrm_password}
    Input Text          ${cep}                          ${nmr_cep}
    Sleep               8
    Input Text          ${numero_residencia}            ${nmr_residencia}
    Click Element       ${gravar_cadastro}
    Sleep               5
    Wait Until Element Is Visible                                   ${campo_nome_cadastro_msg2}
    Should Contain      ${campo_nome_cadastro_msg2}                 ${msg2_nome_cadastro}

    # Wait Until Element Is Visible       ${ver_email_msg}
    # Should Contain      ${ver_email_msg}        ${email_confim_msg}

ENTÃO devo realizar tentativa de cadastro com e-mail inválido - VW
    ${cpf}                          FakerLibrary.cpf
    ${rg}                           Rg Fake
    ${nome}                         FakerLibrary.name
    ${sobrenome}                    FakerLibrary.name
    ${email}                        FakerLibrary.email

    Wait Until Element Is Visible                       ${cadastro_pag2_ponteiro}
    Input Text          ${rg_campo}                     @{rg}
    Input Text          ${nome_cadastro}                ${nome}
    Input Text          ${sobrenome_cadastro}           ${sobrenome}
    Input Text          ${dtnascimento}                 ${nmr_dtnascimanto}
    Input Text          ${celular}                      ${nmr_celular}
    FOR    ${index}    IN RANGE    30
    Press Keys          ${campo_email_2}                BACKSPACE
    END
    Wait Until Element Is Visible                       ${campo_email_2}
    Input Text          ${campo_email_2}                ${email_invalido}
    Wait Until Element Is Visible                       ${cookie}
    Click Element       ${cookie}
    Click Element       ${select_genero}
    Wait Until Element Is Visible           ${masculino}
    Click Element       ${masculino}
    Input Password      ${senha_cad}                    ${nrm_password}
    Input Password      ${senha_confirma}               ${nrm_password}
    Input Text          ${cep}                          ${nmr_cep}
    Sleep               8
    Input Text          ${numero_residencia}            ${nmr_residencia}
    Click Element       ${gravar_cadastro}
    Sleep               5
    Wait Until Element Is Visible       ${msg_insira_email_valido}
    Should Contain      ${msg_insira_email_valido}      ${email_insira_email_valido}

ENTÃO devo realizar o cadastro genero nao informado - VW
    ${cpf}                          FakerLibrary.cpf
    ${rg}                           Rg Fake
    ${nome}                         FakerLibrary.name
    ${sobrenome}                    FakerLibrary.name
    ${email}                        FakerLibrary.email
    Wait Until Element Is Visible                       ${cadastro_pag2_ponteiro}
    Input Text          ${rg_campo}                     @{rg}
    Input Text          ${nome_cadastro}                ${nome}
    Input Text          ${sobrenome_cadastro}           ${sobrenome}
    Input Text          ${dtnascimento}                 ${nmr_dtnascimanto}
    Input Text          ${celular}                      ${nmr_celular}
    Wait Until Element Is Visible                       ${cookie}
    Click Element       ${cookie}
    Click Element       ${select_genero}
    Wait Until Element Is Visible                       ${nao_informado}
    Click Element       ${nao_informado}
    Input Password      ${senha_cad}                    ${nrm_password}
    Input Password      ${senha_confirma}               ${nrm_password}
    Input Text          ${cep}                          ${nmr_cep}
    Sleep               8
    Input Text          ${numero_residencia}            ${nmr_residencia}
    Click Element       ${gravar_cadastro}
    Sleep               5
    Wait Until Element Is Visible       ${ver_email_msg}
    Should Contain      ${ver_email_msg}        ${email_confim_msg}

ENTÃO devo realizar o cadastro com o campo nome vazio - VW
    ${cpf}                          FakerLibrary.cpf
    ${rg}                           Rg Fake
    ${nome}                         FakerLibrary.name
    ${sobrenome}                    FakerLibrary.name
    ${email}                        FakerLibrary.email
    Wait Until Element Is Visible                       ${cadastro_pag2_ponteiro}
    Input Text          ${rg_campo}                          @{rg}
    Sleep               3
    Wait Until Element Is Visible                       ${nome_cadastro}
    Wait Until Element Is Visible                       ${cookie}
    Click Element                                       ${cookie}
    FOR    ${index}    IN RANGE    10
    Press Keys          ${nome_cadastro}                     SPACE
    Sleep               1
    END
    
    FOR    ${index}    IN RANGE    10
    Press Keys          ${sobrenome_cadastro}                SPACE
    Sleep               1
    END
    
    Input Text          ${dtnascimento}                 ${nmr_dtnascimanto}
    Input Text          ${celular}                      ${nmr_celular}
    Click Element       ${select_genero}
    Click Element       ${feminino}
    Input Password      ${senha_cad}                    ${nrm_password}
    Input Password      ${senha_confirma}               ${nrm_password}
    Input Text          ${cep}                          ${nmr_cep}
    Sleep               8
    Input Text          ${numero_residencia}            ${nmr_residencia}
    Click Element       ${gravar_cadastro}
    Sleep               3
    Wait Until Element Is Visible                                   ${campo_msg_nome_cadastro}
    Should Contain      ${campo_msg_nome_cadastro}                  ${msg_nome_cadastro}
    Wait Until Element Is Visible                                   ${campo_msg_sobrenome_cadastro}
    Should Contain      ${campo_msg_sobrenome_cadastro}             ${msg_sobrenome_cadastro}

ENTÃO devo realizar o cadastro com o campo rg vazio - VW
    ${cpf}                          FakerLibrary.cpf
    ${rg}                           Rg Fake
    ${nome}                         FakerLibrary.name
    ${sobrenome}                    FakerLibrary.name
    ${email}                        FakerLibrary.email
    Log         ${cpf}
    Wait Until Element Is Visible                       ${cadastro_pag2_ponteiro}

    FOR    ${index}    IN RANGE    10
    Press Keys          ${rg_campo}                     SPACE
    Sleep               1
    END
    Wait Until Element Is Visible                       ${cookie}
    Click Element       ${cookie}
    Input Text          ${nome_cadastro}                ${nome}
    Input Text          ${sobrenome_cadastro}           ${sobrenome}
    Input Text          ${dtnascimento}                 ${nmr_dtnascimanto}
    Input Text          ${celular}                      ${nmr_celular}
    Click Element       ${select_genero}
    Click Element       ${feminino}
    Input Password      ${senha_cad}                    ${nrm_password}
    Input Password      ${senha_confirma}               ${nrm_password}
    Input Text          ${cep}                          ${nmr_cep}
    Sleep               8
    Input Text          ${numero_residencia}            ${nmr_residencia}
    Click Element       ${gravar_cadastro}
    Sleep               3
    Wait Until Element Is Visible                       ${msg_erro_rg_vazio}
    Should Contain      ${msg_erro_rg_vazio}            ${rg_erro_vazio}

ENTÃO devo realizar o cadastro com o campo e-mail vazio - VW
    ${cpf}                          FakerLibrary.cpf
    ${rg}                           Rg Fake
    ${nome}                         FakerLibrary.name
    ${sobrenome}                    FakerLibrary.name
    ${email}                        FakerLibrary.email
    Log         ${cpf}
    Wait Until Element Is Visible                       ${cadastro_pag2_ponteiro}
    Input Text          ${rg_campo}                     @{rg}
    Input Text          ${dtnascimento}                 ${nmr_dtnascimanto}
    Input Text          ${nome_cadastro}                ${nome}
    Input Text          ${sobrenome_cadastro}           ${sobrenome}
    Sleep               3
    Wait Until Element Is Visible                       ${cookie}
    Click Element                                       ${cookie}

    FOR    ${index}    IN RANGE    10
    Press Keys          ${campo_email_2}                BACKSPACE 
    Sleep               1
    END
         
    Input Text          ${celular}                      ${nmr_celular}
    Click Element       ${select_genero}
    Click Element       ${feminino}
    Input Password      ${senha_cad}                    ${nrm_password}
    Input Password      ${senha_confirma}               ${nrm_password}
    Input Text          ${cep}                          ${nmr_cep}
    Sleep               8
    Input Text          ${numero_residencia}            ${nmr_residencia}
    Click Element       ${gravar_cadastro}
    Sleep               3
    Wait Until Element Is Visible                       ${msg_erro_email_vazio}
    Should Contain      ${msg_erro_email_vazio}         ${email_erro_vazio}

ENTÃO devo efetuar um tentativa de cadastro com o campo senha vazio - VW
    ${cpf}                          FakerLibrary.cpf
    ${rg}                           Rg Fake
    ${nome}                         FakerLibrary.name
    ${sobrenome}                    FakerLibrary.name
    ${email}                        FakerLibrary.email
    Wait Until Element Is Visible                       ${cadastro_pag2_ponteiro}
    Input Text          ${rg_campo}                     @{rg}
    Input Text          ${nome_cadastro}                ${nome}
    Input Text          ${sobrenome_cadastro}           ${sobrenome}
    Input Text          ${dtnascimento}                 ${nmr_dtnascimanto}
    Input Text          ${celular}                      ${nmr_celular}
    Wait Until Element Is Visible                       ${cookie}
    Click Element       ${cookie}
    Click Element       ${select_genero}
    Wait Until Element Is Visible           ${feminino}
    Click Element       ${feminino}
    Input Password      ${campo_senha_reg}              ${vazio}
    Input Password      ${senha_confirma}               ${vazio}
    Input Text          ${cep}                          ${nmr_cep}
    Sleep               8
    Input Text          ${numero_residencia}            ${nmr_residencia}
    Click Element       ${gravar_cadastro}
    Sleep               5
    Wait Until Element Is Visible                       ${msg_min_8_dig_senha}
    Should Contain      ${msg_min_8_dig_senha}          ${msg_dig_senha}
    Wait Until Element Is Visible                       ${confirm_senha_divergente}
    Should Contain      ${confirm_senha_divergente}     ${msg_confirm_senha}


ENTÃO devo deixar campo sobrenome vazio e realizar tentativa de cadastro - VW
    ${cpf}                          FakerLibrary.cpf
    ${rg}                           Rg Fake
    ${nome}                         FakerLibrary.name
    ${email}                        FakerLibrary.email

    Wait Until Element Is Visible                       ${cadastro_pag2_ponteiro}
    Input Text          ${rg_campo}                     @{rg}
    Input Text          ${nome_cadastro}                ${nome}
    Input Text          ${sobrenome_cadastro}           ${vazio}
    Input Text          ${dtnascimento}                 ${nmr_dtnascimanto}
    Input Text          ${celular}                      ${nmr_celular}
    Wait Until Element Is Visible                       ${cookie}
    Click Element       ${cookie}
    Click Element       ${select_genero}
    Wait Until Element Is Visible           ${masculino}
    Click Element       ${masculino}
    Input Password      ${senha_cad}                    ${nrm_password}
    Input Password      ${senha_confirma}               ${nrm_password}
    Input Text          ${cep}                          ${nmr_cep}
    Sleep               8
    Input Text          ${numero_residencia}            ${nmr_residencia}
    Click Element       ${gravar_cadastro}
    Sleep               5
    Wait Until Element Is Visible       ${campo_msg_sobrenome_cadastro}
    Should Contain      ${campo_msg_sobrenome_cadastro}        ${msg_sobrenome_cadastro}