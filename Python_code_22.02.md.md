**1. To rotate array**



a=\[2,3,1,6,5]

d=int(input("enter the value for rotation "))

a\[:] = a\[d:] + a\[:d]

print(a\[:])



output:

enter the value for rotation 3

\[6, 5, 2, 3, 1]



**2.To count the occurrence of single elements**



a=list(map(int,input("enter numbers ").split()))

print(a)

print(a.count(5))



output

enter numbers 2 5 3 5 4 1 5

\[2, 5, 3, 5, 4, 1, 5]

3



**3.To copy and create a new list**



a=\[1,3,2,5,4]

b=a\[:]

print(b)



output:

\[1, 3, 2, 5, 4]





**4.To remove duplicate element**

a = \[1,2,3,1,2,3,6,5]

k = (set(a))

print(k)



output:

{1, 2, 3, 5, 6}



**5.To print occurrence of element**



a = \[1,2,3,1,2,3,6,5]

for val in set(a):

    print(val, a.count(val))



output:

1 2

2 2

3 2

5 1

6 1



**6.To Remove Empty Lists from List**



a=\[2,1,4],\[2,2],\[],\[2,1],\[]

res=list(filter(None,a))

print(res)



output

\[\[2, 1, 4], \[2, 2], \[2, 1]]



**7.Given a string, print vowels in it**



s = input("enter a string ")

for ch in s:

  if ch in "aeiouAEIOU":

    print(ch)



output

enter a string mother

o

e



**8.To check if a string is palindrome**



s= "MALAYALAM"



if s == s\[::-1]:

 print("Palindrome")

else:

 print("Not palindrome")



output



Palindrome



**9.To reverse a string**



s = "I learn Python"

res = s.split()

ans=res\[::-1]

val =" ".join(ans)

print(val)



output



Python learn I



**10.To Remove Letters From a String**



s = "PYTHON"

res= s.replace("P"," ")

print(res)



output:

YTHON



**11.To check an element exists or not**



a=\[1,3,2,5,4]

if 7 in a:

    print("element exist")

else:

    print("not exists")



output

not exists



**12.To sum all elements using dictionary**



d= {'a':100, 'b':200 ,'c':300}

res = sum(d.values())

print(res)



output:

600



**13.To remove a key from dictionary**



a={"a":2, "b":3, "c":1}

res = a.pop("b")

print(a)



output

{'a': 2, 'c': 1}



**14.To Replace all Occurrences of a Substring in a String**



a = "python javascript python css python"

res = a.replace("python", "c++")

print(res)



output

c++ javascript c++ css c++





**15.To Split and Join a String in Python**



a = "Hello, how are you?"

k = a.split()

c = "-".join(k)

print(k)

print(c)



output

\['Hello,', 'how', 'are', 'you?']

Hello,-how-are-you?

