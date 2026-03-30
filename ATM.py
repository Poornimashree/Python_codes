balance = 5000

while True:
    print("\n1. Check Balance  2. Deposit  3. Withdraw  4. Quit")
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