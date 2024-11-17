*** Settings ***
Library    SeleniumLibrary
Resource   ../variables/amazon_variables.robot
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


# Verificações
Verificar Titulo da Pagina
    [Arguments]    ${titulo_esperado}
    Title Should Be      title=Eletrônicos e Tecnologia | Amazon.com.br

Verificar Categoria Aparece
    [Arguments]    ${categoria}
    Element Should Be Visible    xpath=//span[@dir='auto'][contains(.,'Celulares e Comunicação')]

# Pesquisa de Produtos
Pesquisar Produto
    [Arguments]    ${produto}
    Input Text    id=twotabsearchtextbox    ${produto}
    Click Button    id=nav-search-submit-button

# Verificar Resultado da Pesquisa
Verificar Resultado da Pesquisa
    [Arguments]    ${produto}
    Wait Until Element Is Visible    xpath=//span[contains(@class,'a-text-normal')]    timeout=10
    ${resultado_produto}=    Get Text    xpath=//span[contains(@class,'a-text-normal')][1]
    Should Contain    ${resultado_produto}    ${produto}

