*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Checkbox Test
    Open Browser    https://the-internet.herokuapp.com/checkboxes    chrome
    Maximize Browser Window

    Select Checkbox    xpath=(//input[@type="checkbox"])[1]
    Checkbox Should Be Selected    xpath=(//input[@type="checkbox"])[1]

    Unselect Checkbox    xpath=(//input[@type="checkbox"])[2]
    Checkbox Should Not Be Selected    xpath=(//input[@type="checkbox"])[2]

    Sleep    5s
    Close Browser