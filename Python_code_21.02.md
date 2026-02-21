**1.To add 2numbers:**



a= int(input("Enter 1st number"))

b= int(input("Enter 2nd number"))

result=a+b

print(result)



output:

Enter 1st number3

Enter 2nd number2

5



**2.Factorial of a number**



n=1

for i in range(1,7):

&nbsp;   n=n\*i

print(n)



output:

720





**3.To find Maximum of 2 numbers**



a=int(input("Enter 1st no"))

b=int(input("Enter 2nd no"))

print(a if a>b else b)



output:

Enter 1st no3

Enter 2nd no7

7





**4.To find Simple interest**



P=int(input("Enter Principal"))

R=int(input("Enter Rate of Interest"))

T=int(input("Enter T"))

SI = (P \* R \* T/100)

print(SI)



output:

Enter Principal1000

Enter Rate of Interest2

Enter T1

20.0



**5.To check whether it is prime or not**



a = int(input("Enter a number"))

flag = 0

for i in range(2, a):

&nbsp;   if a % i == 0:

&nbsp;       flag = 1

&nbsp;       break



if flag == 1:

&nbsp;   print("Not a Prime number")

else:

&nbsp;   print("Prime number")



Output:

Enter a number5

Prime number



**6.To Print Fibonacci series**



a=1

b=1

print(a)

print(b)

for i in range(2,9):

&nbsp;c=a+b

&nbsp;a=b

&nbsp;b=c

&nbsp;print(c)



output:



1

1

2

3

5

8

13

21

34



**7.To Print ASCII Value of a character**



ch = input("Enter a character")

print("ASCII value is", ord(ch))



output:

Enter a characterZ

ASCII value is 90



**8.To print Armstrong number**



num = int(input("Enter a number"))

temp=num

sum=0

digits=len(str(num))

while temp > 0:

&nbsp;   digit=temp % 10

&nbsp;   sum=sum + digit \*\* digits

&nbsp;   temp = temp // 10

if sum == num:

&nbsp;   print("Armstrong Number")

else:

&nbsp;   print("Not an Armstrong Number")



output:

Enter a number122

Not an Armstrong Number



**9.To find sum of array**



array = \[1,3,2,5,4]

sum=0

for i in array:

&nbsp; sum=sum+i

print("output is",sum)

output:

output is 15



**10.To print Largest number in an array**



arr=\[1,9,4,2,3]

ans=arr\[0]

for i in range(1,len(arr)):

&nbsp; if ans < arr\[i]:

&nbsp;    ans=arr\[i]

print("Bigger number is", ans)



output:

Bigger number is 9



**11.To reverse a list using slicing**



arr=\[1,4,2,3,9]

rev = arr\[::-1]

print(rev)



output:

\[9, 3, 2, 4, 1]



**12.To Find the Length of a List**



array=\[9,3,20,40,4]

i=0

for i in array:

&nbsp;  i = i+1

print(i)



output:

5



**13.To print second largest element**



array=\[20,4,98,3,11]

print("second largest element is",sorted(array)\[-2])



output:

second largest element is 20



**14.To exchange first and last element in array**



array=\[2,3,4,1,5]

array\[0] , array\[-1] = array\[-1] , array\[0]

print(array)



output

\[5, 3, 4, 1, 2]



**15. To print odd and even numbers separately**



even=\[]

odd=\[]

for i in range(1,20,1):

&nbsp; if i%2 == 0:

&nbsp;   even.append(i)

&nbsp; else:

&nbsp;   odd.append(i)



print("even numbers in array",even)

print("odd numbers in array",odd)



output

even numbers in array \[2, 4, 6, 8, 10, 12, 14, 16, 18]

odd numbers in array \[1, 3, 5, 7, 9, 11, 13, 15, 17, 19]

&nbsp; 

