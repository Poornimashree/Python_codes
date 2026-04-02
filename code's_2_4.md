* Polymorphism





class Vector:

&#x20;   def \_\_init\_\_(self, x, y):

&#x20;       self.x = x

&#x20;       self.y = y



&#x20;   def \_\_add\_\_(self, other):     

&#x20;       return Vector(self.x + other.x, self.y + other.y)



&#x20;   def \_\_mul\_\_(self, scalar):      

&#x20;       return Vector(self.x \* scalar, self.y \* scalar)



&#x20;   def \_\_eq\_\_(self, other):        

&#x20;       return self.x == other.x and self.y == other.y



&#x20;   def \_\_repr\_\_(self):

&#x20;       return f"Vector({self.x}, {self.y})"



v1 = Vector(1, 2)

v2 = Vector(3, 4)

print(v1 + v2)     

print(v1 \* 3)      

print(v1 == v2)     







* Multithreading







import threading



def task(name):

&#x20;   print(f"Thread {name} running")



threads = \[threading.Thread(target=task, args=(i,)) for i in range(5)]

for t in threads:

&#x20;   t.start()

for t in threads:

&#x20;   t.join()





* Arrow pattern





def arrow(n):

&#x20;   for i in range(1, n+1):

&#x20;       print('\*' \* i)

&#x20;   for i in range(n-1, 0, -1):

&#x20;       print('\*' \* i)



arrow(5)





* Binary triangle





def binary\_triangle(n):

&#x20;   for i in range(1, n+1):

&#x20;       start = i % 2

&#x20;       row = ''

&#x20;       for j in range(i):

&#x20;           row += str((start + j) % 2)

&#x20;       print(row)



binary\_triangle(5)





* Checker board





def checkerboard(n):

&#x20;   for i in range(n):

&#x20;       for j in range(n):

&#x20;           if (i + j) % 2 == 0:

&#x20;               print('#', end='')

&#x20;           else:

&#x20;               print(' ', end='')

&#x20;       print()



checkerboard(5)





* Xmas tree





def xmas\_tree(n):

&#x20;   

&#x20;   for i in range(1, n+1):

&#x20;       print(' '\*(n-i) + '\*'\*(2\*i-1))

&#x20;   



&#x20;   print(' '\*(n-1) + '|')





xmas\_tree(5)





* Triangle





def nested\_triangles(n):

&#x20;   for i in range(1, n+1):

&#x20;       sp = ' '\*(n-i)

&#x20;       if i == 1 or i == n:

&#x20;           print(sp + '\* '\*i)

&#x20;       else:

&#x20;           print(sp + '\* ' + '  '\*(i-2) + '\*')



nested\_triangles(7)





* Cross Pattern





def cross(n):

&#x20;   mid = n // 2

&#x20;   for i in range(n):

&#x20;       for j in range(n):

&#x20;           if i == mid or j == mid:

&#x20;               print('\*', end='')

&#x20;           else:

&#x20;               print(' ', end='')

&#x20;       print()



cross(5)





* Reverse alphabet triangle





def rev\_alpha\_tri(n):

&#x20;   for i in range(n):

&#x20;       ch = chr(90 - i)

&#x20;       print(' '.join(ch\*(i+1)))



rev\_alpha\_tri(3)



* Stair case





def staircase\_nums(n):

&#x20;   for i in range(1,n+1):

&#x20;       print((str(i)+' ')\*i)



staircase\_nums(3)





* Decorator





def logger(func):

&#x20;   def wrapper(\*args, \*\*kwargs):

&#x20;       print(f"Calling {func.\_\_name\_\_}")

&#x20;       return func(\*args, \*\*kwargs)

&#x20;   return wrapper



@logger

def add(a, b):

&#x20;   return a + b



print(add(3, 5))

