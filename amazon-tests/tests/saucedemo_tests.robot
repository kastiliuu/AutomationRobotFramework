*** Settings ***
Library    SeleniumLibrary
Resource   ../resources/keywords/saucedemo_keywords.robot
Resource   ../resources/variables/saucedemo_locators.robot
Test Setup    Abrir o Navegador
Test Teardown    Fechar o Navegador

*** Variables ***
${USUARIOS_VALIDOS}    standard_user    problem_user    performance_glitch_user
${SENHA_COMUM}         secret_sauce

*** Test Cases ***

Caso de Teste 01: Login com sucesso
    [Documentation]    Este teste acessa o Saucedemo e realiza login com sucesso.
    [Tags]    saucedemo
    Dado que o usuário está na página de login
    Quando ele insere o usuário "${USUARIOS_VALIDOS[0]}" e a senha "${SENHA_COMUM}"
    E clica no botão de login
    Então ele deve ver a página inicial

Caso de Teste 02: Login com credenciais inválidas
    [Documentation]    Teste de login com credenciais inválidas.
    [Tags]    erro_login
    Dado que o usuário está na página de login
    Quando ele insere o usuário "usuario_invalido" e a senha "senha_errada"
    E clica no botão de login
    Então ele deve ver uma mensagem de erro