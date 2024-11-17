*** Settings ***
Resource        resources/keywords/amazon_keywords.robot
Test Setup      Abrir o Navegador
Test Teardown   Fechar o Navegador

*** Test Cases ***

Caso de Teste 01 - Acesso ao Menu "Eletrônicos"
    [Documentation]    Este teste acessa a homepage e navega até o menu "Eletrônicos".
    [Tags]    menu_eletronicos
    Acessar Home Page
    Entrar no Menu Eletronicos
    Verificar Titulo da Pagina    Eletrônicos
    Verificar Categoria Aparece    Celulares e Telefonia

Caso de Teste 02 - Pesquisa de um Produto
    [Documentation]    Este teste acessa a homepage e pesquisa por um produto específico.
    [Tags]    pesquisa_produto
    Acessar Home Page
    Pesquisar Produto    Echo Dot
    Verificar Resultado da Pesquisa    Echo Dot
