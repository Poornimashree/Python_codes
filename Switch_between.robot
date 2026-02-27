*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Switch A And B
    Open Browser    https://the-internet.herokuapp.com/drag_and_drop    chrome
    Drag And Drop    id=column-a    id=column-b
    Close Browser