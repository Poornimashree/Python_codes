*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Loop Example
    FOR    ${i}    IN RANGE    1    6
        Log    Number ${i}
    END