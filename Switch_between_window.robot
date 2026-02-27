*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Switch By Title
    Open Browser    https://the-internet.herokuapp.com/windows    chrome
    Click Link    Click Here
    Switch Window    title=New Window
    Close Browser