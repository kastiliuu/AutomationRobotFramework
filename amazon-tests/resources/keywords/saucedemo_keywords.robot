*** Settings ***
Library    SeleniumLibrary
Resource   ../resources/variables/saucedemo_locators.robot

*** Keywords ***

Configurar Navegador
    Open Browser    https://www.saucedemo.com/    chrome
    Maximize Browser Window

Dado que o usuário está na página de login
    Open Browser    https://www.saucedemo.com/    chrome
    Maximize Browser Window

Quando ele insere o usuário "${usuario}" e a senha "${senha}"
    Input Text    ${CAMPO_USUARIO}    ${usuario}
    Input Text    ${CAMPO_SENHA}    ${senha}

E clica no botão de login
    Click Button    ${BOTAO_LOGIN}

Então ele deve ver a página inicial
    Wait Until Element Is Visible    ${LOGO_SAUCELABS}

Então ele deve ver uma mensagem de erro
    Wait Until Element Is Visible    ${MENSAGEM_ERRO_LOGIN}

Dado que o usuário está logado no sistema
    ${usuario}    ${senha} =    standard_user    secret_sauce
    Quando ele insere o usuário "${usuario}" e a senha "${senha}"
    E clica no botão de login
    Então ele deve ver a página inicial

Adicionar Produto Ao Carrinho
    [Arguments]    ${produto}
    Click Button    ${produto}
    Click Button    ${BOTAO_ADICIONAR_CARRINHO}

Remover Produto Do Carrinho
    [Arguments]    ${produto}
    Click Button    ${BOTAO_CARRINHO}
    Click Button    ${BOTAO_REMOVER}
