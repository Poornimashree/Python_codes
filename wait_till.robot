*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Wait Test
    Open Browser    https://the-internet.herokuapp.com/dynamic_loading/1    chrome
    Click Button    xpath=//button

    Wait Until Page Contains    Hello World!
    Sleep    7s
    Close Browser