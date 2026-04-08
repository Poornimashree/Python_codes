* Google form 



\*\*\* Settings \*\*\*

Library    SeleniumLibrary



\*\*\* Test Cases \*\*\*

Radiobutton

&#x20;   Open Browser    https://www.tutorialspoint.com/selenium/practice/selenium\_automation\_practice.php    Chrome

&#x20;   Maximize Browser Window



&#x20;   Input Text    id=name    Siva

&#x20;   Input Text    id=email   siva@test.com

&#x20;   Input Text    id=mobile  9876543210



&#x20;   

&#x20;   Scroll Element Into View    //label\[contains(text(),'Female')]

&#x20;   Click Element               //label\[contains(text(),'Female')]



&#x20; 

&#x20;   Scroll Element Into View    //select\[@name='state']

&#x20;   Select From List By Label   //select\[@name='state']    Haryana



&#x20;   Sleep    5s



* Dictionary merged



dict1 = {"name": "Alice", "age": 25}

dict2 = {"city": "Chennai", "job": "Developer"}



merged = {\*\*dict1, \*\*dict2}

print(merged)



* Stack with List



stack = \[]



stack.append("first")

stack.append("two")

stack.append("three")



print("top", stack\[-1])

stack.pop()

print(stack)



* Single Inheritance



class Animal:

&#x20; def ani(self):

&#x20;    print("animal is eating")



class Dog(Animal):

&#x20; def anima(self):

&#x20;    print("dog bark")



c = Dog()

c.ani()

c.anima()





* Multiple Inheritance



class Father:

&#x20;   def height(self):

&#x20;       print("Tall height from Father")



class Mother:

&#x20;   def color(self):

&#x20;       print("Fair color from Mother")



class Child(Father, Mother):

&#x20;   def study(self):

&#x20;       print("Child is studying")



c = Child()

c.height()  

c.color()   

c.study()   



* Multilevel Inheritance



class Grandfather:

&#x20;   def property(self):

&#x20;       print("Grandfather has property")



class Father(Grandfather):

&#x20;   def business(self):

&#x20;       print("Father runs business")



class Son(Father):

&#x20;   def job(self):

&#x20;       print("Son has a job")



s = Son()

s.property() 

s.business()  

s.job()       



* Hierarchical Inheritance



class Vehicle:

&#x20;   def fuel(self):

&#x20;       print("Vehicle uses fuel")



class Car(Vehicle):

&#x20;   def drive(self):

&#x20;       print("Car is driving")



class Bike(Vehicle):

&#x20;   def ride(self):

&#x20;       print("Bike is riding")



class Truck(Vehicle):

&#x20;   def carry(self):

&#x20;       print("Truck is carrying load")



c = Car()

c.fuel()   

c.drive()



b = Bike()

b.fuel()   

b.ride()   



t = Truck()

t.fuel()   

t.carry()  





* Tuple Operations



student = ("Alice", 20, "Chennai", 85.5)



print(student\[0])    

print(student\[-1])      

print(len(student))   



name, age, city, marks = student   

print(name, age, city, marks)



print(student.count(20))   

print(student.index(85.5)) 





* Pyramid





rows = 5

for i in range(1, rows + 1):

&#x20;   print(" " \* (rows - i), end="")

&#x20;   for j in range(1, i + 1):

&#x20;       print(j, end=" ")

&#x20;   print() 

