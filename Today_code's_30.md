* ATM





balance = 5000



while True:

    print("\\n1. Check Balance  2. Deposit  3. Withdraw  4. Quit")

    choice = input("Choice: ")



    if choice == "1":

        print(f"Balance: ₹{balance}")

    elif choice == "2":

        amount = int(input("Deposit amount: ₹"))

        balance = balance + amount

        print(f"Done! New balance: ₹{balance}")

    elif choice == "3":

        amount = int(input("Withdraw amount: ₹"))

        if amount > balance:

            print("Not enough balance!")

        else:

            balance -= amount

            print(f"Done! New balance: ₹{balance}")

    elif choice == "4":

        print("Goodbye!")

        break





* To do list



tasks = \[]



while True:

    print("\\n1.Add  2.View  3.Remove  4.Exit")

    choice = input("Choose: ")



    if choice == "1":

        task = input("Enter task: ")

        tasks.append(task)



    elif choice == "2":

        for i, t in enumerate(tasks, 1):

            print(i, t)



    elif choice == "3":

        num = int(input("Task number: "))

        if 0 < num <= len(tasks):

            tasks.pop(num - 1)



    elif choice == "4":

        break



* Login (username and password)



users = {

    "admin": "1234",

    "siva": "pass123"

}



def login():

    username = input("Enter username: ")

    password = input("Enter password: ")



    if username in users and users\[username] == password:

        print("Login successful ✅")

    else:

        print("Invalid username or password ❌")



login()



* Dice scroll simulator





import random



while True:

    input("Press Enter to roll dice...")

    print("Dice:", random.randint(1, 6))



    choice = input("Roll again? (y/n): ")

    if choice != 'y':

        break



* Colour Generator



import random



color = "#{:06x}".format(random.randint(0, 0xFFFFFF))

print("Color:", color)





* OTP generation



import random

import time



otp = random.randint(1000, 9999)

print("OTP:", otp)



start = time.time()



user = int(input("Enter OTP: "))



if time.time() - start > 10:

&nbsp;   print("OTP expired")

elif user == otp:

&nbsp;   print("Success")

else:

&nbsp;   print("Wrong OTP")



* Square pattern





n = int(input("Enter size: "))



for i in range(n):

&nbsp;   for j in range(n):

&nbsp;       if i == 0 or i == n-1 or j == 0 or j == n-1:

&nbsp;           print("\*", end=" ")

&nbsp;       else:

&nbsp;           print(" ", end=" ")

&nbsp;   print()





* Words in file





import os



def word\_count(filename):

&nbsp;   if not os.path.exists(filename):

&nbsp;       return "File not found!"

&nbsp;   

&nbsp;   with open(filename, 'r') as file:

&nbsp;       text = file.read()

&nbsp;   return len(text.split())



print(word\_count("sample.txt"))





* Butterfly pattern





n = int(input("Enter rows: "))



for i in range(1, n + 1):

&nbsp;   print("\*" \* i + " " \* (2 \* (n - i)) + "\*" \* i)

for i in range(n, 0, -1):

&nbsp;   print("\*" \* i + " " \* (2 \* (n - i)) + "\*" \* i)





* Number guessing





import random



secret = random.randint(1, 100)

attempts = 0



print("Guess number between 1 to 100")



while True:

&nbsp;   guess = int(input("Enter number: "))

&nbsp;   attempts += 1



&nbsp;   if guess == secret:

&nbsp;       print("Correct!")

&nbsp;       print("Attempts:", attempts)

&nbsp;       break

&nbsp;   elif guess < secret:

&nbsp;       print("Too low")

&nbsp;   else:

&nbsp;       print("Too high")







* Exception handling





try:

&nbsp;   num = int(input("Enter number: "))

&nbsp;   print(10 / num)

except ValueError:

&nbsp;   print("Invalid input")

except ZeroDivisionError:

&nbsp;   print("Cannot divide by zero")







* Email slicer





email = input("Enter email: ")



username = email\[:email.index("@")]

domain = email\[email.index("@") + 1:]



print("Username:", username)

print("Domain:", domain)







* Pattern



n = int(input("Enter rows: "))



for i in range(1, n + 1):

&nbsp;   print(" " \* (n - i) + "\* " \* i)

for i in range(n - 1, 0, -1):

&nbsp;   print(" " \* (n - i) + "\* " \* i)







