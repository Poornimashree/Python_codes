*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Alert Test
    Open Browser    https://the-internet.herokuapp.com/javascript_alerts    chrome
    Click Button    Click for JS Alert
    Handle Alert    ACCEPT
    sleep    4s
    Page Should Contain    You successfully clicked an alert
    Close Browser