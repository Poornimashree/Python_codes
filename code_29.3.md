* To check Page source length



\*\*\* Settings \*\*\*

Library    SeleniumLibrary



\*\*\* Test Cases \*\*\*

Page Source Length

&nbsp;   Open Browser    https://example.com    chrome

&nbsp;   ${source}=    Get Source

&nbsp;   ${length}=    Get Length    ${source}

&nbsp;   Log    Length: ${length}

&nbsp;   Close Browser



* Element attribute



\*\*\* Settings \*\*\*

Library    SeleniumLibrary



\*\*\* Test Cases \*\*\*

Check Attribute

&nbsp;   Open Browser    https://example.com    chrome

&nbsp;   ${attr}=    Get Element Attribute    xpath=//a    href

&nbsp;   Log    ${attr}

&nbsp;   Close Browser



* Java script.1





\*\*\* Settings \*\*\*

Library    SeleniumLibrary



\*\*\* Test Cases \*\*\*

JS Click

&nbsp;   Open Browser    https://example.com    chrome

&nbsp;   Execute Javascript    document.querySelector("a").click()

&nbsp;   Close Browser



* Java script.2



\*\*\* Settings \*\*\*

Library    SeleniumLibrary



\*\*\* Test Cases \*\*\*

Show Hidden Element

&nbsp;   Open Browser    https://example.com    chrome

&nbsp;   Execute Javascript    document.body.style.display='block'

&nbsp;   Close Browser



* Java script.3



\*\*\* Settings \*\*\*

Library    SeleniumLibrary



\*\*\* Test Cases \*\*\*

Check Focus

&nbsp;   Open Browser    https://google.com    chrome

&nbsp;   Click Element    name=q

&nbsp;   ${active}=    Execute Javascript    return document.activeElement.name

&nbsp;   Log    ${active}

&nbsp;   Close Browser



* Text from element





\*\*\* Settings \*\*\*

Library    SeleniumLibrary



\*\*\* Test Cases \*\*\*

Get Heading Text

&nbsp;   Open Browser    https://example.com    chrome

&nbsp;   ${text}=    Get Text    xpath=//h1

&nbsp;   Log    ${text}

&nbsp;   Close Browser



* Scroll\_1000 pixel





\*\*\* Settings \*\*\*

Library    SeleniumLibrary



\*\*\* Test Cases \*\*\*

Scroll Working Demo

&nbsp;   Open Browser    https://the-internet.herokuapp.com/infinite\_scroll    chrome

&nbsp;   Sleep    3s

&nbsp;   Execute Javascript    window.scrollBy(0,1000)

&nbsp;   Sleep    3s

&nbsp;   Execute Javascript    window.scrollBy(0,1000)

&nbsp;   Close Browser





* Element count





\*\*\* Settings \*\*\*

Library    SeleniumLibrary



\*\*\* Test Cases \*\*\*

Dynamic Count

&nbsp;   Open Browser    https://example.com    chrome

&nbsp;   ${count}=    Get Element Count    xpath=//\*

&nbsp;   Log    Total Elements: ${count}

&nbsp;   Close Browser





* Browser form submission





\*\*\* Settings \*\*\*

Library    SeleniumLibrary

Test Teardown    Close Browser



\*\*\* Test Cases \*\*\*

Submit Contact Form

&nbsp;   Open Browser    https://www.selenium.dev/selenium/web/web-form.html    chrome

&nbsp;   Sleep    2s

&nbsp;   Input Text      id=my-text-id        John Doe

&nbsp;   Input Text      name=my-password     secret123

&nbsp;   Sleep    2s

&nbsp;   Click Button    css=button\[type='submit']

&nbsp;   Page Should Contain    Form submitted



* Retry until success



\*\*\* Settings \*\*\*

Library    SeleniumLibrary

Test Teardown    Close Browser



\*\*\* Test Cases \*\*\*

Wait For Dynamic Element

&nbsp;   Open Browser    https://the-internet.herokuapp.com/dynamic\_loading/1    chrome

&nbsp;   Click Button    css=button

&nbsp;   Wait Until Keyword Succeeds    5x    2s

&nbsp;   ...    Element Should Be Visible    id=finish

&nbsp;   Element Text Should Be    id=finish    Hello World!



* Iframe





\*\*\* Settings \*\*\*

Library    SeleniumLibrary



\*\*\* Test Cases \*\*\*

Frame Switch

&nbsp;   Open Browser    https://the-internet.herokuapp.com/iframe    chrome

&nbsp;   Select Frame    id=mce\_0\_ifr

&nbsp;   Close Browser





* HTTP form





\*\*\* Settings \*\*\*

Library    SeleniumLibrary

Test Teardown    Close Browser



\*\*\* Test Cases \*\*\*

Submit Contact Form

&nbsp;   Open Browser    https://www.selenium.dev/selenium/web/web-form.html    chrome

&nbsp;   Maximize Browser Window

&nbsp;   Wait Until Element Is Visible    name=my-text    10s

&nbsp;   Input Text      name=my-text         John Doe

&nbsp;   Input Text      name=my-password     secret123

&nbsp;   Input Text      name=my-textarea     Hello there!

&nbsp;   Select From List By Value    name=my-select    2

&nbsp;   Click Element    xpath=//button\[@type='submit']

&nbsp;   Wait Until Page Contains    Form submitted    10s

&nbsp;   Page Should Contain    Form submitted

