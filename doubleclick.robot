*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Double Click Test
    Open Browser    https://demoqa.com/buttons    chrome
     Wait Until Element Is Visible    id=doubleClickBtn    10s
    Double Click Element    id=doubleClickBtn
    Sleep    2s
    Close Browser