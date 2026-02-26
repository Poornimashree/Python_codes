*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Multiple Checkbox Test
    Open Browser    https://artoftesting.com/samplesiteforselenium    chrome
    Maximize Browser Window
    Wait Until Element Is Visible    xpath=//input[@type='checkbox']    10s
    Select Checkbox    xpath=(//input[@type='checkbox'])[1]
    Select Checkbox    xpath=(//input[@type='checkbox'])[2]

    Sleep    2s
    Close Browser