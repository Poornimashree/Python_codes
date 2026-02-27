*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Get URL Test
    Open Browser    https://the-internet.herokuapp.com    chrome
    ${url}=    Get Location
    Log    Current URL is ${url}
    Close Browser