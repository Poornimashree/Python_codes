*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Invalid Login Test
    Open Browser    https://the-internet.herokuapp.com/login    chrome
    Maximize Browser Window

    Input Text    id=username    wronguser
    Input Text    id=password    wrongpass
    Click Button    xpath=//button[@type='submit']
    Page Should Contain    Your username is invalid!
    Sleep    2s
    Close Browser