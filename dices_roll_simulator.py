import random

while True:
    input("Press Enter to roll dice...")
    print("Dice:", random.randint(1, 6))

    choice = input("Roll again? (y/n): ")
    if choice != 'y':
        break