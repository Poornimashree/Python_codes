* Filter to Lambda





nums = \[1,2,3,4,5]



res = list(filter(lambda x: x%2==0, nums))

print(res)





* Print first repeating element



nums = \[5,3,4,3,5,6]



seen = set()



for n in nums:

&#x20;   if n in seen:

&#x20;       print(n)

&#x20;       break

&#x20;   seen.add(n)





* Missing number (Set)



nums = \[1,2,4,5]

n = 5



missing = set(range(1,n+1)) - set(nums)

print(missing)





* List to dictionary





key = \["1","2","3"]

values = \["a" ,"b", "c"]

val  = dict(zip(key, values))

print(val)





* Tuple to dictionary





t = \[("a", 1), ("b", 2)]

d = dict(t)

print(d)  





* Code in Dictionary





d = {"a":1,"b":2}



total = 0

for k, v in d.items():

&#x20;   total += v

&#x20;   if v % 2 == 0:

&#x20;       print(f"{k} -> {v} is Even")

&#x20;   else:

&#x20;       print(f"{k} -> {v} is Odd")



print("Total:", total)







* Print common elements





a = \[1,2,3,4]

b = \[3,4,5]



common = \[i for i in a if i in b]

print(common)





* Student management code









class Student:

&#x20;   def \_\_init\_\_(self, name, age, marks):

&#x20;       self.name = name

&#x20;       self.age = age

&#x20;       self.marks = marks



&#x20;   def display(self):

&#x20;       print(f"Name: {self.name}, Age: {self.age}, Marks: {self.marks}")



&#x20;   def update\_marks(self, new\_marks):

&#x20;       self.marks = new\_marks

&#x20;       print(f"{self.name}'s marks updated to {self.marks}")



&#x20;   def is\_pass(self):

&#x20;       if self.marks >= 40:

&#x20;           return "Pass"

&#x20;       else:

&#x20;           return "Fail"



students = \[]



while True:

&#x20;   print("\\n1. Add Student")

&#x20;   print("2. Show Students")

&#x20;   print("3. Update Marks")

&#x20;   print("4. Exit")



&#x20;   choice = input("Enter choice: ")



&#x20;   if choice == "1":

&#x20;       name = input("Enter name: ")

&#x20;       age = int(input("Enter age: "))

&#x20;       marks = int(input("Enter marks: "))

&#x20;       s = Student(name, age, marks)

&#x20;       students.append(s)



&#x20;   elif choice == "2":

&#x20;       for s in students:

&#x20;           s.display()

&#x20;           print("Result:", s.is\_pass())



&#x20;   elif choice == "3":

&#x20;       name = input("Enter student name to update: ")

&#x20;       for s in students:

&#x20;           if s.name == name:

&#x20;               new\_marks = int(input("Enter new marks: "))

&#x20;               s.update\_marks(new\_marks)



&#x20;   elif choice == "4":

&#x20;       print("Exiting...")

&#x20;       break



&#x20;   else:

&#x20;       print("Invalid choice!")

&#x20;   



* Count and remove duplicates



nums = \[1,2,2,3,4,4,4,2,1]



for i in range(len(nums)):

&#x20; c = 0

&#x20; for j in range(len(nums)):

&#x20;    if nums\[i] == nums\[j]:

&#x20;      c= c + 1

&#x20; print(nums\[i],c)

nums = list(set(nums))

print(nums)

