*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Drag Drop Test
    Open Browser    https://the-internet.herokuapp.com/drag_and_drop    chrome
    Drag And Drop    id=column-a    id=column-b
    sleep   4s
    Close Browser