* **Compare 2 sites**



\*\*\* Settings \*\*\*

Library    SeleniumLibrary



\*\*\* Test Cases \*\*\*

Compare Two Sites

&nbsp;   Open Browser    https://www.google.com    chrome

&nbsp;   ${title1}=    Get Title



&nbsp;   Go To    https://www.wikipedia.org

&nbsp;   ${title2}=    Get Title



&nbsp;   Should Not Be Equal    ${title1}    ${title2}

&nbsp;   Log    Site1: ${title1} | Site2: ${title2}



&nbsp;   Close Browser


* Multi Page navigation

\*\*\* Settings \*\*\*

Library    SeleniumLibrary



\*\*\* Test Cases \*\*\*

Multi Page Navigation Flow

&nbsp;   Open Browser    https://practice.automationtesting.in    chrome

&nbsp;   Maximize Browser Window



Check home page

&nbsp;   ${home\_title}=    Get Title

&nbsp;   Log    Home Page: ${home\_title}



Go to Shop

&nbsp;   Go To    https://practice.automationtesting.in/shop/

&nbsp;   Wait Until Page Contains    Shop    10s

&nbsp;   ${shop\_url}=    Get Location

&nbsp;   Log    Shop URL: ${shop\_url}



Go to My Account

&nbsp;   Go To    https://practice.automationtesting.in/my-account/

&nbsp;   Wait Until Page Contains    Login    10s

&nbsp;   ${account\_title}=    Get Title

&nbsp;   Log    Account Page: ${account\_title}



&nbsp;   Close Browser





* To check error



\*\*\* Settings \*\*\*

Library    SeleniumLibrary



\*\*\* Test Cases \*\*\*

Page Should Not Contain Test

&nbsp;   Open Browser    https://practice.automationtesting.in/shop/    chrome

&nbsp;   Maximize Browser Window



&nbsp;   Page Should Not Contain    Page Not Found

&nbsp;   Page Should Not Contain    Access Denied

&nbsp;   Log    PASS: No errors on page



&nbsp;   Close Browser



* To open mentioned window size

\*\*\* Settings \*\*\*

Library    SeleniumLibrary



\*\*\* Test Cases \*\*\*

Set Window Size

&nbsp;   Open Browser    https://www.google.com    chrome



&nbsp;   Set Window Size    800    600

&nbsp;   Sleep    2s



&nbsp;   Set Window Size    1280    720

&nbsp;   Sleep    2s



&nbsp;   Title Should Be    Google



&nbsp;   Close Browser



* Add to cart



\*\*\* Settings \*\*\*

Library    SeleniumLibrary



\*\*\* Test Cases \*\*\*

Add Product To Cart

&nbsp;   Open Browser    https://practice.automationtesting.in/shop/    chrome

&nbsp;   Maximize Browser Window



&nbsp;   Click Element    xpath=//a\[@class='button product\_type\_simple add\_to\_cart\_button ajax\_add\_to\_cart']



&nbsp;   Close Browser



* Simple addition

\*\*\* Settings \*\*\*

Documentation     My First Robot Test



\*\*\* Test Cases \*\*\*

My First Test

&nbsp;   Log    Hello World



Addition Test

&nbsp;   ${result}=    Evaluate    10 + 20

&nbsp;   Log    ${result}



* To test a login page



\*\*\* Settings \*\*\*

Library    SeleniumLibrary



\*\*\* Test Cases \*\*\*

Shopping Login

&nbsp;   Open Browser    https://practice.automationtesting.in/my-account/    chrome

&nbsp;   Maximize Browser Window



&nbsp;   Wait Until Element Is Visible    xpath=//input\[@id='username']    10s



&nbsp;   Input Text    xpath=//input\[@id='username']    admin@admin.com

&nbsp;   Input Text    xpath=//input\[@id='password']    admin@123



&nbsp;   Click Element    xpath=//input\[@value='Login']



&nbsp;   Sleep    5s

&nbsp;   Close Browser



* List code



\*\*\* Test Cases \*\*\*

List Example

&nbsp;   @{FRUITS}=    Create List    Apple    Mango    Guava



&nbsp;   FOR    ${fruit}    IN    @{FRUITS}

&nbsp;       Log    ${fruit}

&nbsp;   END



* Dictionary code



\*\*\* Test Cases \*\*\*

Dictionary Example

&nbsp;   \&{user}=    Create Dictionary    name=Siva    age=22



&nbsp;   Log    Name: ${user}\[name]

&nbsp;   Log    Age: ${user}\[age]

