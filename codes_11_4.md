* X Pattern



n = 5



for i in range(n):

&#x20;   for j in range(n):

&#x20;       if i == j or i + j == n - 1:

&#x20;           print("\*", end=" ")

&#x20;       else:

&#x20;           print(" ", end=" ")

&#x20;   print()



* Mirror inverted triangle



n = 5



for i in range(n, 0, -1):

&#x20;   

&#x20;   for j in range(n - i):

&#x20;       print(" ", end=" ")



&#x20;   for j in range(i):

&#x20;       print(chr(65 + j), end=" ")



&#x20;   print()



* Alphabet pyramid



n = 5



for i in range(1, n+1):

&#x20;   print(" " \* (n - i), end="")   

&#x20;   

&#x20;   for j in range(i):

&#x20;       print(chr(65 + j), end=" ")  

&#x20;   

&#x20;   print()



* V pattern 



n = 3



for i in range(1, n+1):



&#x20;   for j in range(1, i+1):

&#x20;       print(j, end="")



&#x20; 

&#x20;   for j in range(2\*(n-i)+1):

&#x20;       print(" ", end="")



&#x20;   for j in range(i, 0, -1):

&#x20;       print(j, end="")



&#x20;   print()



* ZIP



names = \["Siva", "Kumar", "Ravi"]

marks = \[85, 90, 78]



for n, m in zip(names, marks):

&#x20;   print(n, m)



* Enumerate



names = \["Siva", "Kumar", "Ravi"]



for i, name in enumerate(names):

&#x20;   print(i, name)



* NumPy Matrix operation



import numpy as np

A = np.array(\[\[1, 2], \[3, 4]])

B = np.array(\[\[5, 6], \[7, 8]])



print(A + B)

print(A @ B)   

print(A.T)   



* Stack array 



import numpy as np

a = np.array(\[1, 2])

b = np.array(\[3, 4])



print(np.vstack((a, b)))  

print(np.hstack((a, b)))   



* clip value



import numpy as np



a = np.array(\[8, 10, 15, 20])

print(np.clip(a, 7, 18))



* NumPy different operations



import numpy as np



print(np.ones((2, 2)))

print(np.arange(1, 10, 2))



a = np.array(\[1, 2, 3, 4])

print(a.reshape(2, 2))

print(np.mean(a))

