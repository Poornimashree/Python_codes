*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Navigation Test
    Open Browser    https://the-internet.herokuapp.com    chrome
    Click Link    Form Authentication
    Go Back
    Close Browser