*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Screenshot Test
    Open Browser    https://www.google.com    chrome
    Capture Page Screenshot
    Close Browser