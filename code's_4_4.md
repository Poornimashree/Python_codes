* POST API



import requests



new\_post = {

&#x20;   "title"  : "My First Post",

&#x20;   "body"   : "This is the content.",

&#x20;   "userId" : 1

}



url = "https://jsonplaceholder.typicode.com/posts"

response = requests.post(url, json=new\_post)



print("Status:", response.status\_code)  



created = response.json()

print("New post ID:", created\["id"])

print("Title      :", created\["title"])







* Delete API





import requests



url = "https://jsonplaceholder.typicode.com/posts/1"

response = requests.delete(url)



print("Status  :", response.status\_code)

print("Response:", response.json())   





* StackQueue





from collections import deque





stack = deque()

stack.append("first")

stack.append("second")

stack.append("third")



print("── STACK ──")

while stack:

&#x20;   print(stack.pop())



queue = deque()

queue.append("first")

queue.append("second")

queue.append("third")



print("\\n── QUEUE ──")

while queue:

&#x20;   print(queue.popleft())







* PUT API





import requests



url = "https://jsonplaceholder.typicode.com/posts/1"

updated\_post = {

&#x20;   "id"     : 1,

&#x20;   "title"  : "Updated Title",

&#x20;   "body"   : "Updated body content.",

&#x20;   "userId" : 1

}

response = requests.put(url, json=updated\_post)



updated = response.json()

print("Status:", response.status\_code)

print("Title :", updated\["title"])

print("Body  :", updated\["body"])





* PATCH API





import requests



url = "https://jsonplaceholder.typicode.com/posts/1"

partial\_update = {

&#x20;   "title" : "Only Title Changed"

}

response = requests.patch(url, json=partial\_update)



patched = response.json()

print("Status:", response.status\_code)

print("Title :", patched\["title"])







* Recursion 1





def factorial(n):

&#x20;   if n <= 1:

&#x20;       return 1

&#x20;   return n \* factorial(n - 1)



print("Factorial of 6:", factorial(6))





* Recursion 2





def sum\_n(n):

&#x20;   print(f"sum({n}) called")

&#x20;   if n == 0:

&#x20;       return 0

&#x20;   return n + sum\_n(n - 1)



print("Result:", sum\_n(5))





* Recursion 3





def power(base, exp):

&#x20;   print(f"power({base}, {exp}) called")

&#x20;   if exp == 0:

&#x20;       return 1

&#x20;   return base \* power(base, exp - 1)



print("Result:", power(2, 5))







* Age predictor





import requests



url = "https://api.agify.io/?name=peter"

response = requests.get(url)



if response.status\_code == 200:

&#x20;   data = response.json()

&#x20;   print("Age prediction:", data\["age"])

else:

&#x20;   print("Error:", response.status\_code)

