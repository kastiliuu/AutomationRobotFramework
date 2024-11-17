*** Settings ***
Resource    ../resources/keywords/amazon_keywords.robot
Suite Setup    Abrir o Navegador
Suite Teardown    Fechar o Navegador

*** Test Cases ***
Buscar Produto Na Amazon
    [Documentation]    Este teste pesquisa um produto na barra de pesquisa da Amazon.
    ${produto}    Set Variable    iPhone 14
    Pesquisar Produto    ${produto}
    Verificar Resultado da Pesquisa    ${produto}
