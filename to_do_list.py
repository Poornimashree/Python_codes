tasks = []

while True:
    print("\n1.Add  2.View  3.Remove  4.Exit")
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