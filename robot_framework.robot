*** Settings ***
Library  main.py

*** Variables ***
${a}=   10
${b}=   20

*** Test Cases ***
Addition two values from python
    [Tags]  add
    ${value}=   add     ${a}    ${b}
    ${c}=   Add two values in robot framework keyword
    Should Be Equal     ${c}    ${value}

*** Keywords ***
Add two values in robot framework keyword
    ${c}=   Evaluate    ${a}+${b}
    [Return]  ${c}