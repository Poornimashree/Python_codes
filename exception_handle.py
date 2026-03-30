try:
    num = int(input("Enter number: "))
    print(10 / num)
except ValueError:
    print("Invalid input")
except ZeroDivisionError:
    print("Cannot divide by zero")