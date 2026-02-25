*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Valid Login Test
    Open Browser    https://the-internet.herokuapp.com/login    chrome
    Maximize Browser Window
    Input Text    id=username    tomsmith
    Input Text    id=password    SuperSecretPassword!
    Click Button    css=button[type="submit"]
    Page Should Contain    You logged into a secure area!
    Sleep    3s
    Close Browser