import random

secret = random.randint(1, 100)
attempts = 0

print("Guess number between 1 to 100")

while True:
    guess = int(input("Enter number: "))
    attempts += 1

    if guess == secret:
        print("Correct!")
        print("Attempts:", attempts)
        break
    elif guess < secret:
        print("Too low")
    else:
        print("Too high")