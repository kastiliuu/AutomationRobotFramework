*** Settings ***
Library    BuiltIn

*** Variables ***
&{meses_com_dias}    Janeiro=31    Fevereiro=28    Março=31    Abril=30    Maio=31    Junho=30    Julho=31    Agosto=31    Setembro=30    Outubro=31    Novembro=30    Dezembro=31

*** Test Cases ***
Imprimir Meses e Dias
    [Documentation]    Este teste imprime cada mês e a quantidade de dias no console.
    Log To Console    Janeiro tem ${meses_com_dias.Janeiro} dias.
    Log To Console    Fevereiro tem ${meses_com_dias.Fevereiro} dias.
    Log To Console    Março tem ${meses_com_dias.Março} dias.
    Log To Console    Abril tem ${meses_com_dias.Abril} dias.
    Log To Console    Maio tem ${meses_com_dias.Maio} dias.
    Log To Console    Junho tem ${meses_com_dias.Junho} dias.
    Log To Console    Julho tem ${meses_com_dias.Julho} dias.
    Log To Console    Agosto tem ${meses_com_dias.Agosto} dias.
    Log To Console    Setembro tem ${meses_com_dias.Setembro} dias.
    Log To Console    Outubro tem ${meses_com_dias.Outubro} dias.
    Log To Console    Novembro tem ${meses_com_dias.Novembro} dias.
    Log To Console    Dezembro tem ${meses_com_dias.Dezembro} dias.
