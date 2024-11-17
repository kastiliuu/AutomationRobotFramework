*** Settings ***
Library    SeleniumLibrary
Resource   amazon_variables.robot

*** Keywords ***

# Abertura e Fechamento do Navegador
Abrir o Navegador
    [Arguments]    ${url}=${DEFAULT_URL}
    Open Browser    ${url}    chrome
    Maximize Browser Window
    Wait Until Element Is Visible    xpath=//a[contains(@class,'nav-logo-link')]    timeout=5

Fechar o Navegador
    Close Browser

# Navegação na Amazon
Acessar Home Page
    Go To    ${DEFAULT_URL}

Entrar no Menu Eletronicos
    Click Element    xpath=//a[@data-csa-c-content-id='nav_cs_electronics']

# Funções para Interações Genéricas (Input e Click)
Input Text
    [Arguments]    ${locator}    ${text}
    Input Text    ${locator}    ${text}

Click Button
    [Arguments]    ${locator}
    Click Button    ${locator}

# Verificações
Verificar Titulo da Pagina
    [Arguments]    ${titulo_esperado}
    Title Should Be    ${titulo_esperado}

Verificar Categoria Aparece
    [Arguments]    ${categoria}
    Element Should Be Visible    xpath=//span[text()='${categoria}']

# Pesquisa de Produtos
Pesquisar Produto
    [Arguments]    ${produto}
    Input Text    id=twotabsearchtextbox    ${produto}
    Click Button    xpath=//input[@value='Ir']

Verificar Resultado da Pesquisa
    [Arguments]    ${produto}
    Element Should Contain    xpath=//span[contains(@class,'a-text-normal')]    ${produto}
