* Stack





class Stack:

&nbsp;   def \_\_init\_\_(self): self.data = \[]

&nbsp;   def push(self, x): self.data.append(x)

&nbsp;   def pop(self): return self.data.pop()

&nbsp;   def peek(self): return self.data\[-1]

&nbsp;   def is\_empty(self): return not self.data



s = Stack()



s.push(10)

s.push(20)

s.push(30)



print("Stack:", s.data)        

print("Peek:", s.peek())      

print("Pop:", s.pop())        

print("Stack:", s.data)      

print("Empty?", s.is\_empty())  





* Bubblesort





def bubble\_sort(arr):

&nbsp;   n = len(arr)

&nbsp;   for i in range(n):

&nbsp;       for j in range(0, n-i-1):

&nbsp;           if arr\[j] > arr\[j+1]:

&nbsp;               arr\[j], arr\[j+1] = arr\[j+1], arr\[j]

&nbsp;   return arr



print(bubble\_sort(\[64, 34, 25, 12, 22]))





* Selectionsort





def selection\_sort(arr):

&nbsp;   n = len(arr)

&nbsp;   for i in range(n):

&nbsp;       min\_idx = i

&nbsp;       for j in range(i+1, n):

&nbsp;           if arr\[j] < arr\[min\_idx]:

&nbsp;               min\_idx = j

&nbsp;       arr\[i], arr\[min\_idx] = arr\[min\_idx], arr\[i]

&nbsp;   return arr



print(selection\_sort(\[64, 25, 12, 22, 11]))







* Insertion sort





def insertion\_sort(arr):

&nbsp;   for i in range(1, len(arr)):

&nbsp;       key = arr\[i]

&nbsp;       j = i - 1

&nbsp;       while j >= 0 and arr\[j] > key:

&nbsp;           arr\[j+1] = arr\[j]

&nbsp;           j -= 1

&nbsp;       arr\[j+1] = key

&nbsp;   return arr



print(insertion\_sort(\[12, 11, 13, 5, 6]))





* Quicksort





def quick\_sort(arr):

&nbsp;   if len(arr) <= 1:

&nbsp;       return arr



&nbsp;   pivot = arr\[0]                            



&nbsp;   left  = \[x for x in arr\[1:] if x <= pivot] 

&nbsp;   right = \[x for x in arr\[1:] if x > pivot]  

&nbsp;   return quick\_sort(left) + \[pivot] + quick\_sort(right)





arr = list(map(int, input("Enter numbers: ").split()))

print("Sorted:", quick\_sort(arr))





* Chunk a list





def chunk(lst, size):

&nbsp;   result = \[]

&nbsp;   for i in range(0, len(lst), size):

&nbsp;       piece = lst\[i : i+size]

&nbsp;       result.append(piece)

&nbsp;   return result



lst = list(map(int, input("Enter numbers (space separated): ").split()))

size = int(input("Enter chunk size: "))



print(chunk(lst, size))





* Split and extracts first letter





name  = input("enter your name")



res = ".".join(w\[0].upper() for w in name.split())

print(res)





* Contact book





contacts = {}



while True:

&nbsp;   name = input("Enter name (or exit): ")

&nbsp;   if name == "exit":

&nbsp;       break

&nbsp;   number = input("Enter number: ")

&nbsp;   contacts\[name] = number



print("Contacts:")

for k, v in contacts.items():

&nbsp;   print(k, ":", v)





* Browser





import webbrowser



while True:

&nbsp;   search = input("Search (or exit): ")



&nbsp;   if search == "exit":

&nbsp;       break



&nbsp;   url = f"https://www.google.com/search?q={search}"

&nbsp;   webbrowser.open(url)





* Digital clock





import time

from datetime import datetime



while True:

&nbsp;   print("Time:", datetime.now())

&nbsp;   time.sleep(1)

