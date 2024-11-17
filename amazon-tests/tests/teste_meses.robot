*** Settings ***
Library    BuiltIn

*** Variables ***
@{meses}    Janeiro    Fevereiro    Março    Abril    Maio    Junho    Julho    Agosto    Setembro    Outubro    Novembro    Dezembro

*** Test Cases ***
Imprimir Meses
    [Documentation]    Este teste imprime os meses do ano no console.
    Log To Console    ${meses}[0]
    Log To Console    ${meses}[1]
    Log To Console    ${meses}[2]
    Log To Console    ${meses}[3]
    Log To Console    ${meses}[4]
    Log To Console    ${meses}[5]
    Log To Console    ${meses}[6]
    Log To Console    ${meses}[7]
    Log To Console    ${meses}[8]
    Log To Console    ${meses}[9]
    Log To Console    ${meses}[10]
    Log To Console    ${meses}[11]
