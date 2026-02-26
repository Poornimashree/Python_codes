*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Add Remove Test
    Open Browser    https://the-internet.herokuapp.com/add_remove_elements/    chrome
    Maximize Browser Window
    Click Button    Add Element
    Page Should Contain Button    Delete
    Click Button    Delete
    Sleep    2s
    Close Browser