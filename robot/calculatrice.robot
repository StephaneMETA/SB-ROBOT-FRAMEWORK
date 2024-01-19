*** Settings ***
library    ../calculatrice.py

*** Test Cases ***
Addition Test
    [Documentation]    test d'addition
    ${result}    addition    5    3
    Should Be Equal As Numbers    ${result}    8
    
*** Test Cases ***
Soustraction Test
    [Documentation]    test de Soustraction
    ${result}    Soustraction    5    3
    Should Be Equal As Numbers    ${result}    2
    
*** Test Cases ***
Mumtiplication Test
    [Documentation]    test de Multiplication
    ${result}    Multiplication    5    3
    Should Be Equal As Numbers    ${result}    15
    
*** Test Cases ***
Division Test
    [Documentation]    test de Division
    ${result}    Division    6    3
    Should Be Equal As Numbers    ${result}    2

*** Test Cases ***
Division par 0 Test
    [Documentation]    test de Division par 0
    ${result}    Division    6    0
    Should Be Equal As Strings   ${result}    Division par 0 impossible
    