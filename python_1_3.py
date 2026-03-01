1. To create class (constructor)

class Student:
    def __init__(self, name, marks):
        self.name = name
        self.marks = marks

    def display(self):
        print("Name:", self.name)
        print("Marks:", self.marks)
s1 = Student("Siva", 85)
s1.display()

output
Name: Siva
Marks: 85

2.Code for Inheritance

class Animal:
    def sound(self):
        print("Animals make sound")

class Dog(Animal):
    def bark(self):
        print("Dog barks")

d = Dog()
d.sound()
d.bark()


output
Animals make sound
Dog barks


3.Encapsulation

class Bank:
    def __init__(self, balance):
        self.__balance = balance   

    def get_balance(self):
        return self.__balance

b1 = Bank(1000)
print("Balance:", b1.get_balance())

output
Balance: 1000

4.Real time code

class Employee:
    def __init__(self, name, salary):
        self.name = name
        self.salary = salary

    def yearly_salary(self):
        return self.salary * 12

emp1 = Employee("Siva", 25000)
print("Yearly Salary:", emp1.yearly_salary())

output
Yearly Salary: 300000

5.Inheritance

class Vehicle:
    def __init__(self, brand):
        self.brand = brand

    def start(self):
        print(self.brand, "vehicle is starting")

class Car(Vehicle):
    def __init__(self, brand, model):
        super().__init__(brand)   
        self.model = model

    def display(self):
        print("Brand:", self.brand)
        print("Model:", self.model)

c1 = Car("Toyota", "Innova")
c1.start()
c1.display()

output

Toyota vehicle is starting
Brand: Toyota
Model: Innova
