* API With robot framework



\*\*\* Settings \*\*\*

Library    RequestsLibrary



\*\*\* Test cases \*\*\*

Testing robot framework



&#x20;   Create Session    S    https://jsonplaceholder.typicode.com

&#x20;   ${res}    GET On Session    S    /posts/1

&#x20;   Should Be Equal As Numbers    ${res.status\_code}    200



* Response contain value



\*\*\* Settings \*\*\*

Library    RequestsLibrary



\*\*\* Test Cases \*\*\*

Check Title Contains

&#x20;   Create Session    s    https://jsonplaceholder.typicode.com

&#x20;   ${res}=    GET On Session    s    /posts/1



&#x20;   ${data}=    Set Variable    ${res.json()}

&#x20;   Should Contain    ${data\['title']}    sunt



* Multiple checks



\*\*\* Settings \*\*\*

Library    RequestsLibrary



\*\*\* Test Cases \*\*\*

Full Validation

&#x20;   Create Session    s    https://jsonplaceholder.typicode.com

&#x20;   ${res}=    GET On Session    s    /posts/1



&#x20;   ${data}=    Set Variable    ${res.json()}



&#x20;   Should Be Equal As Numbers    ${res.status\_code}    200

&#x20;   Should Be Equal As Numbers    ${data\['id']}        1

&#x20;   Should Be Equal As Numbers    ${data\['userId']}    1



* Star mixed Triangle



n = 5



for i in range(1, n + 1):

&#x20;   print(i, end=" ")

&#x20;   for j in range(i - 1):

&#x20;       print("\*", end=" ")

&#x20;   print()



* Reusable keys



\*\*\* Settings \*\*\*

Library    RequestsLibrary



\*\*\* Keywords \*\*\*

Get Post By Id

&#x20;   \[Arguments]    ${id}

&#x20;   ${res}    GET On Session    s    /posts/${id}

&#x20;   RETURN    ${res}



\*\*\* Test Cases \*\*\*

Reusable Example

&#x20;   Create Session    s    https://jsonplaceholder.typicode.com

&#x20;   ${response}    Get Post By Id    1

&#x20;   Should Be Equal As Numbers    ${response.status\_code}    200



* Print odd pattern 



n = 5

for i in range(1, n+1):

&#x20;   for j in range(1, i+1):

&#x20;       if j % 2 != 0:

&#x20;           print(j, end=" ")

&#x20;       else:

&#x20;           print("\*", end=" ")

&#x20;   print()





* Pattern 2



n = 5

for i in range(1,n+1):

&#x20;   if i % 2 != 0:

&#x20;     for j in range(1,n+1):

&#x20;      print (j,end=" ")

&#x20;   else:

&#x20;       for j in range(n, 0, -1):

&#x20;           print(j, end=" ")

&#x20;   print()





* Right angle mirror





n = 5



for i in range(1, n+1):          

&#x20;   for j in range(i, n+1):      

&#x20;       print(j, end=" ")

&#x20;   print()





* Inverted pyramid triangle





n = 5



for i in range(1, n+1):          

&#x20;   print(" " \* i, end = " ")

&#x20;   for j in range(1, 2\*(n-i)):      

&#x20;       print(j, end=" ")

&#x20;   print()

