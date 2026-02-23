**1.To Convert Bytes to a String**



b = b'Helloworld'

s = b.decode()

print(s)



output

Helloworld



**2.To convert all the first letters of words in given sentence to capital**



text = input("Enter a sentence ")

ans= text.split()

new = " "

for val in ans:

&nbsp; new = new + val\[0].upper() + val\[1:] + " "

print(new)



output

Enter a sentence i am happy

&nbsp;I Am Happy 



**3.To Create a Countdown Timer**



seconds = int(input("Enter number of seconds "))

while seconds > 0:

&nbsp;   seconds = seconds - 1    

&nbsp;   print(seconds)   

print("Time's up!")



output

Enter number of seconds 9

8

7

6

5

4

3

2

1

0

Time's up!





**Dictionary:**

**4.To add New Item to Dictionary**



new = {"name" : "varsh", "age" :  "21"}

new\["grade"] = "A"

print(new) 



output:

{'name': 'varsh', 'age': '21', 'grade': 'A'}



**5.To update Item to Dictionary**



new = {"name" : "varsh", "age" :  "21"}

new\["age"] = "22"

print(new) 



output:

{'name': 'varsh', 'age': '22'}



**6.To loop through dictionary**



student = {"name": "Siva", "age": 21, "course": "JAVA"}

for key in student:

&nbsp;   print(key, ":", student\[key])



Output

name : Siva

age : 21

course : JAVA



**7.To find the sum of Dictionary values**



d= {"a" : 200, "b" : 200 ,"c" :300}

ans = sum(d.values())

print(ans)



output

700



**8.To merge 2 directories**



d1= {"1": 100, "2":200}

d2= {"3":230, "4":500}

d1.update(d2)

print(d1)



output:

{'1': 100, '2': 200, '3': 230, '4': 500}



**9.To convert 2 list into directory**



keys = \["name", "age", "course"] 

values = \["Siva", 21, "ece"] 

result = dict(zip(keys, values))

print(result)



output

{'name': 'Siva', 'age': 21, 'course': 'ece'}



**10.To print Triangle**



n=4

for i in range(1,n+1):

&nbsp;   for j in range(i):

&nbsp;      print("\*", end=" ")

&nbsp;   print()



output

\* 

\* \* 

\* \* \* 

\* \* \* \*



**11.To print pyramid**



n = 4



for i in range(1, n + 1):

&nbsp;   print(" " \*(n-i), end = " ")

&nbsp;   for j in range(i):

&nbsp;       print("\* ", end="")

&nbsp;   print()



output:

&nbsp;   \* 

&nbsp;  \* \* 

&nbsp; \* \* \* 

&nbsp;\* \* \* \*



**12.To print number pyramid**



n = 4



for i in range(1, n + 1):

&nbsp;   for j in range(i):

&nbsp;       print(j+1 , end="")

&nbsp;   print()

output:

1

12

123

1234



**13.To print inverted pyramid**



n = 4

for i in range(n, 0, -1):

&nbsp;   for j in range(i):

&nbsp;       print("\*", end=" ")

&nbsp;   print()



output

\* \* \* \* 

\* \* \* 

\* \* 

\* 



**14. Simple calculator**



a = int(input("Enter first number: "))

b = int(input("Enter second number: "))

op = input("Enter operator ")



if op == "+":

&nbsp;   print(a + b)

elif op == "-":

&nbsp;   print(a - b)

elif op == "\*":

&nbsp;   print(a \* b)

elif op == "/":

&nbsp;   print(a / b)

else:

&nbsp;   print("Invalid operator")



output

Enter first number: 9

Enter second number: 8

Enter operator +

17



**15.To check Anagram**



s1 = input("Enter first word ")

s2 = input("Enter second word ")



if sorted(s1) == sorted(s2):

&nbsp;   print("It is Anagram")

else:

&nbsp;   print("Not an Anagram")



output:

Enter first word HELLO

Enter second word WELCOME

Not an Anagram

