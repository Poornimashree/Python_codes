*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Open Google Test
    Open Browser    https://www.google.com    chrome
    Maximize Browser Window
    Title Should Be    Google
    Sleep    3s
    Close Browser