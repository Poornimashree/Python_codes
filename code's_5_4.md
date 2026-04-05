* Location ISS





import requests



res = requests.get("http://api.open-notify.org/iss-now.json")

data = res.json()



print(data\["iss\_position"])





* Lambda function





square = lambda x: x \*\* 2

add    = lambda a, b: a + b



print(square(5))    

print(add(3, 4))    



nums = \[5, 2, 8, 1]

nums.sort(key=lambda x: x)

print(nums) 







* List Slicing



nums = \[10, 20, 30, 40, 50, 60]



print(nums\[1:4])  

print(nums\[:3])   

print(nums\[3:])    

print(nums\[::2])   

print(nums\[::-1]) 





* Sorting





data = \[(1, 5), (2, 3), (3, 4)]

data.sort(key=lambda x: x\[1])

print(data) 





* Replace string using Regex





import re

text = "I have 2 cats"

new\_text = re.sub(r'\\d+', '3', text)

print(new\_text) 





* Transpose matrix





matrix = \[\[1,2,3],\[4,5,6]]

transpose = list(zip(\*matrix))

print(transpose)  





* Swap keys and value in Dictionary





d = {'a':1,'b':2}

swapped = {v:k for k,v in d.items()}

print(swapped)  





* Execution time





import time



start = time.time()



for i in range(1000000):

&#x20;   pass



end = time.time()

print("Time:", end - start)





* Longest word in sentence





text = "Python is very powerful language"

words = text.split()

print(max(words, key=len))





* Prints IP



import requests



ip = requests.get("https://api.ipify.org").text

print(ip)

