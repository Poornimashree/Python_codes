* JSON Handling



n = 5



for i in range(1, n+1):

&#x20;   for j in range(1, 2\*n):

&#x20;       if j == n-i+1 or j == n+i-1 or i == n:

&#x20;           print("\*", end="")

&#x20;       else:

&#x20;           print(" ", end="")

&#x20;   print()





* List packing and unpacking





fruits = \["apple", "orange", "banana"]

print(fruits)



fruits = \["apple", "orange", "banana"]

fruit1 =  "apple"

fruit2 =  "orange"

fruit3 =  "banana"



print(fruit1)

print(fruit2)

print(fruit3)





* Tuple Packing and Unpacking



student = ("Ram", 21, "Chennai")

print(student)



student = ("Ram", 21, "Chennai")



name, age, city = student



print(name)  

print(age)   

print(city)





* Unpacking using \*





number = (1,2,3,4,5,6)



first, \*middle, last = number



print(first)

print(middle)

print(last)

print("Length of middle:", len(middle))



print("sum of middle:", sum(middle))

middle.append(100)

print("Middle after adding 100:", middle)





* List operation





nums = \[2, 4, 6, 8, 10]

first, \*mid, last = nums

middle = \[x // 2 for x in mid]

number = \[first \* 2, middle , last \*2]

print(number)





* Rotate using K value



def rotate(lst, k):

&#x20;   return lst\[k:] + lst\[:k]



print(rotate(\[1, 2, 3, 4, 5], 2))





* Operations





a = \[1, 2, 3, 4, 5]

b = \[3, 4, 5, 6, 7]



union        = list(set(a) | set(b))

intersection = list(set(a) \& set(b))

difference   = list(set(a) - set(b))



print("Union:",        union)         

print("Intersection:", intersection) 

print("Difference:",   difference)  





* Append zeros to last





nums = \[1,5,2,7,0,3,0]

num = \[]

c = 0

for n in nums:

&#x20;   if n == 0:

&#x20;      c = c + 1

&#x20;   else:

&#x20;      num.append(n)



print(num +\[0] \* c)

&#x20;





* Hollow pyramid



n = 5



for i in range(1, n+1):

&#x20;   for j in range(1, 2\*n):

&#x20;       if j == n-i+1 or j == n+i-1 or i == n:

&#x20;           print("\*", end="")

&#x20;       else:

&#x20;           print(" ", end="")

&#x20;   print()

