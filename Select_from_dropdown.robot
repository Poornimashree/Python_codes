*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Dropdown Selection Test
    Open Browser    https://the-internet.herokuapp.com/dropdown    chrome
    Maximize Browser Window
    Select From List By Label    id=dropdown    Option 2
    sleep    5s
    List Selection Should Be    id=dropdown    Option 1
    Page Should Contain    Option 1
    Sleep    10s
    Close Browser