*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Confirm Alert Test
    Open Browser    https://the-internet.herokuapp.com/javascript_alerts    chrome
    Click Button    Click for JS Confirm
    Handle Alert    DISMISS
    Page Should Contain    You clicked: Cancel
    Close Browser