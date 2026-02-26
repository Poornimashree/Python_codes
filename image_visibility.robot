*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Flower Image Test
    Open Browser    https://pixabay.com/images/search/flower/    chrome
    Page Should Contain Element    xpath=//img
    sleep    7s
    Close Browser