*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Count Links Test
    Open Browser    https://the-internet.herokuapp.com    chrome
    ${links}=    Get Element Count    xpath=//a
    Log    Total Links: ${links}
    sleep  5s
    Close Browser