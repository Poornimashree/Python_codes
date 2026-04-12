* Method Overriding



class Shape:

&#x20;   def area(self):

&#x20;       print("Calculating area")



class Circle(Shape):

&#x20;   def \_\_init\_\_(self, r):

&#x20;       self.r = r

&#x20;   def area(self):

&#x20;       print(f"Circle Area: {3.14 \* self.r \* self.r}")



class Rectangle(Shape):

&#x20;   def \_\_init\_\_(self, w, h):

&#x20;       self.w = w

&#x20;       self.h = h

&#x20;   def area(self):

&#x20;       print(f"Rectangle Area: {self.w \* self.h}")



class Triangle(Shape):

&#x20;   def \_\_init\_\_(self, b, h):

&#x20;       self.b = b

&#x20;       self.h = h

&#x20;   def area(self):

&#x20;       print(f"Triangle Area: {0.5 \* self.b \* self.h}")



shapes = \[Circle(7), Rectangle(5, 3), Triangle(10, 4)]

for s in shapes:

&#x20;   s.area()



* Method Overloading



class Area:

&#x20;   def calculate(self, a, b=None):

&#x20;       if b is None:

&#x20;           print(f"Square Area: {a \* a}")

&#x20;       else:

&#x20;           print(f"Rectangle Area: {a \* b}")



obj = Area()

obj.calculate(5)      

obj.calculate(5, 3) 





* Setter Getter



class Student:

&#x20;   def \_\_init\_\_(self, name):

&#x20;       self.\_\_name = name



&#x20;   def get\_name(self):

&#x20;       return self.\_\_name



&#x20;   def set\_name(self, name):

&#x20;       self.\_\_name = name



s = Student("Ram")

print(s.get\_name())   

s.set\_name("Sam")    

print(s.get\_name())





* Dunder and Magic



class Book:

&#x20;   def \_\_init\_\_(self, title, pages):

&#x20;       self.title = title

&#x20;       self.pages = pages



&#x20;   def \_\_str\_\_(self):

&#x20;       return f"Book: {self.title}"



&#x20;   def \_\_len\_\_(self):

&#x20;       return self.pages



&#x20;   def \_\_add\_\_(self, other):

&#x20;       return self.pages + other.pages



b1 = Book("Python", 300)

b2 = Book("Java", 400)

print(str(b1))

print(len(b1))

print(b1 + b2)





* Deep and Shallow copy



import copy



original = \[1, 2, \[3, 4]]



shallow = copy.copy(original)

deep = copy.deepcopy(original)



original\[2]\[0] = 99



print("Original:", original)

print("Shallow: ", shallow)  

print("Deep:    ", deep)    



* Method chaining



class Builder:

&#x20;   def \_\_init\_\_(self):

&#x20;       self.result = ""



&#x20;   def add\_name(self, name):

&#x20;       self.result += f"Name: {name} "

&#x20;       return self 



&#x20;   def add\_age(self, age):

&#x20;       self.result += f"Age: {age} "

&#x20;       return self



&#x20;   def add\_city(self, city):

&#x20;       self.result += f"City: {city}"

&#x20;       return self



&#x20;   def show(self):

&#x20;       print(self.result)



Builder().add\_name("Ram").add\_age(25).add\_city("Chennai").show()





* Callable Class



class Multiplier:

&#x20;   def \_\_init\_\_(self, factor):

&#x20;       self.factor = factor



&#x20;   def \_\_call\_\_(self, number):

&#x20;       return number \* self.factor



double = Multiplier(2)

triple = Multiplier(3)



print(double(5))   

print(triple(5))

print(double(10))





* Counter class



class counter:

&#x20;  def \_\_init\_\_(self):

&#x20;    self.count = 7

&#x20;  def incr(self):

&#x20;    self.count = self.count + 1



c = counter()

c.incr()

print(c.count)





* Rectangular code





class Rectangle:

&#x20;   def \_\_init\_\_(self, w, h):

&#x20;       self.w = w

&#x20;       self.h = h

&#x20;   def area(self):

&#x20;       return self.w \* self.h



r = Rectangle(5, 3)

print(r.area())

