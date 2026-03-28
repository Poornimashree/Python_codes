**Tested a website(Logged in , Prints Items, added to cart , goes to cart and checks ,then checkout)**





\*\*\* Settings \*\*\*

Library    SeleniumLibrary



\*\*\* Test Cases \*\*\*

Get Product Name

&nbsp;   Open Browser    https://www.saucedemo.com    Chrome

&nbsp;   Input Text      xpath=//input\[@id='user-name']    standard\_user

&nbsp;   Input Text      xpath=//input\[@id='password']     secret\_sauce

&nbsp;   Click Button    xpath=//input\[@id='login-button']

&nbsp;   Sleep  2s

&nbsp;   ${name1}=     Get Text      xpath=//button\[@id='add-to-cart-sauce-labs-backpack']

&nbsp;   ${name2}=     Get Text      xpath=//button\[@id='add-to-cart-sauce-labs-bike-light']

&nbsp;   ${name3}=     Get Text      xpath=//button\[@id='add-to-cart-test.allthethings()-t-shirt-(red)']

&nbsp;   @{names} =  Create List   ${name1}  ${name2}  ${name3} 

&nbsp;   FOR  ${namee}  IN  @{names}

&nbsp;       Log  ${namee}

&nbsp;   END

&nbsp;   Sleep    4s

&nbsp;   Click Button    xpath=//button\[@id='add-to-cart-sauce-labs-backpack']

&nbsp;   Click Button    xpath=//button\[@id='add-to-cart-sauce-labs-bike-light']

&nbsp;   Click Button    xpath=//button\[@id='add-to-cart-test.allthethings()-t-shirt-(red)']

&nbsp;   Sleep    4s

&nbsp;   Click Element    xpath=//a\[@class='shopping\_cart\_link']

&nbsp;   Sleep    2s

&nbsp;   Click Button    xpath=//button\[text()='Checkout']

&nbsp;   

&nbsp;   Close Browser





**String operation**





\*\*\* Settings \*\*\*

Library    BuiltIn



\*\*\* Test Cases \*\*\*

String Operations

&nbsp;   ${name}=      Set Variable    hello world

&nbsp;   ${upper}=     Evaluate   '${name}'.upper()

&nbsp;   ${lower}=    Evaluate   '${name}'.lower()

&nbsp;   ${replace}=   Evaluate    '${name}'.replace('world', 'Robot')

&nbsp;   ${length}=    Evaluate   len('${name}')

&nbsp;   Log           Upper: ${upper}

&nbsp;   Log           lower: ${lower}

&nbsp;   Log           Replace: ${replace}

&nbsp;   Log           Length: ${length}



**Fibonacci series**





\*\*\* Settings \*\*\*

Library    SeleniumLibrary





\*\*\* Test Cases \*\*\*

Fibonacci Series

&nbsp;   ${a}=     Set Variable    0

&nbsp;   ${b}=     Set Variable    1

&nbsp;   ${count}=     Set Variable    1

&nbsp;   Log    ${a}

&nbsp;   Log    ${b}

&nbsp;   WHILE     ${count} < 8

&nbsp;       ${c}=     Evaluate    ${a} + ${b}

&nbsp;       Log       ${c}

&nbsp;       ${a}=     Set Variable    ${b}

&nbsp;       ${b}=     Set Variable    ${c}

&nbsp;       ${count}=     Evaluate   ${count} + 1

&nbsp;   END



**Padding Text**





\*\*\* Settings \*\*\*

Library    BuiltIn

Library    SeleniumLibrary



\*\*\* Test Cases \*\*\*

String Padding

&nbsp;   ${name}=      Set Variable     hello

&nbsp;   ${padleft}=     Evaluate    '${name}'.rjust(10)

&nbsp;   ${padright}=    Evaluate    '${name}'.ljust(10, '-')

&nbsp;   ${padcenter}=     Evaluate    '${name}'.center(10, '\*')

&nbsp;   Log      ${padleft}

&nbsp;   Log      ${padright}

&nbsp;   Log      ${padcenter}





**Random Number Generator**



\*\*\* Settings \*\*\*

Library    Random



\*\*\* Test Cases \*\*\*

Random Number

&nbsp;   ${num}=     Evaluate    random.randint(1, 100)    random

&nbsp;   Log         Random Number: ${num}

&nbsp;   ${num2}=    Evaluate    random.randint(1, 100)    random

&nbsp;   Log         Random Number 2: ${num2}

&nbsp;   Should Not Be Equal As Numbers    ${num}    ${num2}



**Create and read file**





\*\*\* Settings \*\*\*

Library    OperatingSystem



\*\*\* Test Cases \*\*\*

FILE



&nbsp;   Create File    new.txt     HI\_EVERYONE

&nbsp;   ${data}=      Get File     new.txt

&nbsp;   LOG    ${data}





**Delete File**





\*\*\* Settings \*\*\*

Library    OperatingSystem



\*\*\* Test Cases \*\*\*

Delete File Example

&nbsp;   Create File    delete.txt    This will be deleted

&nbsp;   File Should Exist      delete.txt

&nbsp;   Remove File    delete.txt

&nbsp;   File Should Not Exist  delete.txt

&nbsp;   Log            File deleted successfully!



**While loop**



\*\*\* Settings \*\*\*

Library    SeleniumLibrary



\*\*\* Test Cases \*\*\*

WHILELOOP

&nbsp;   ${i}=    Set Variable   1

&nbsp;   WHILE   ${i} < 5

&nbsp;       ${i}=  EVALUATE   ${i}+1

&nbsp;       LOG    ${i}

&nbsp;   END

&nbsp;     

**Multiple Dictionary**





\*\*\* Settings \*\*\*

Library    SeleniumLibrary





\*\*\* Test Cases \*\*\*

Dict



&nbsp;   \&{dict}=     Create Dictionary    

&nbsp;   ...             street=Anna Nagar

&nbsp;   ...             city=Chennai

&nbsp;   ...             pincode=600040



&nbsp;   \&{person}=      Create Dictionary

&nbsp;   ...             name=John

&nbsp;   ...             age=25



&nbsp;    LOG    ${person}\[name]

&nbsp;    LOG    ${dict}\[city]







