* Zigzag pattern



rows = int(input("Enter rows: "))

cols = int(input("Enter cols: "))



for i in range(rows):

&nbsp;   for j in range(cols):

&nbsp;       if (i + j) % 2 == 0:

&nbsp;           print("\*", end=" ")

&nbsp;       else:

&nbsp;           print(" ", end=" ")

&nbsp;   print()





* Hangman game





import random



word = random.choice(\["cat", "dog", "sun", "car"])



guessed = \[]

lives = 5



print("=== Hangman Game ===")

print("Guess the word letter by letter!")

print()



while lives > 0:



&nbsp; 

&nbsp;   for letter in word:

&nbsp;       if letter in guessed:

&nbsp;           print(letter, end=" ")

&nbsp;       else:

&nbsp;           print("\_", end=" ")

&nbsp;   print()





&nbsp;   if all(letter in guessed for letter in word):

&nbsp;       print()

&nbsp;       print("You guessed it! You WIN! 🎉")

&nbsp;       break



&nbsp;   print(f"Lives remaining: {lives}")

&nbsp;   letter = input("Enter a letter: ")

&nbsp;   print()





&nbsp;   if letter in word:

&nbsp;       guessed.append(letter)

&nbsp;       print("Nice! Correct letter ✅")

&nbsp;   else:

&nbsp;       lives -= 1

&nbsp;       print("Oops! Wrong letter ❌")

&nbsp;       print(f"Lives left: {lives}")



&nbsp;   print()



else:

&nbsp;   print(f"No lives left! Game Over 😞")

&nbsp;   print(f"The word was: {word}")





* Inheritance





class Animal:

&nbsp;   def \_\_init\_\_(self, name):

&nbsp;       self.name = name



&nbsp;   def speak(self):

&nbsp;       return "..."



class Dog(Animal):

&nbsp;   def speak(self):

&nbsp;       return "Woof!"



class Cat(Animal):

&nbsp;   def speak(self):

&nbsp;       return "Meow!"



dog = Dog("Bruno")

cat = Cat("Kitty")



print(f"{dog.name} says {dog.speak()}")   

print(f"{cat.name} says {cat.speak()}")   





* QR\_generation





import qrcode

qr = qrcode.make("https://example.com")

qr.save("qr.png")

print("QR saved!")





* Rock paper scissors





import random

choices = \["rock", "paper", "scissors"]

user = input("rock / paper / scissors: ").lower()

bot  = random.choice(choices)

print(f"Bot chose: {bot}")

if user == bot: print("Draw!")

elif (user=="rock" and bot=="scissors") or \\

&nbsp;    (user=="paper" and bot=="rock") or \\

&nbsp;    (user=="scissors" and bot=="paper"): print("You Win!")

else: print("You Lose!")





* Counter class





class Counter:

&nbsp;   def \_\_init\_\_(self):

&nbsp;       self.count = 0



&nbsp;   def increment(self):

&nbsp;       self.count += 1



&nbsp;   def decrement(self):

&nbsp;       if self.count > 0:

&nbsp;           self.count -= 1



&nbsp;   def reset(self):

&nbsp;       self.count = 0



&nbsp;   def show(self):

&nbsp;       print(f"Count: {self.count}")



c = Counter()

c.increment()

c.increment()

c.increment()

c.show()        

c.decrement()

c.show()        

c.reset()

c.show()        





* Simple chatbot





responses = {

&nbsp;   "hello": "Hi there! 👋",

&nbsp;   "how are you I'm doing great!",

&nbsp;   "bye Goodbye! 👋",

&nbsp;   "name I'm PyBot!"

}



print("PyBot: Hello! Type 'bye' to exit.")

while True:

&nbsp;   user = input("You: ").lower()

&nbsp;   if user == "bye":

&nbsp;       print("PyBot: Goodbye!")

&nbsp;       break

&nbsp;   print("PyBot:", responses.get(user, "I don't understand that yet!"))





* Text to morse





MORSE = {'A':'.-','B':'-...','C':'-.-.','D':'-..','E':'.','F':'..-.','G':'--.','H':'....','I':'..','J':'.---','K':'-.-','L':'.-..','M':'--','N':'-.','O':'---','P':'.--.','Q':'--.-','R':'.-.','S':'...','T':'-','U':'..-','V':'...-','W':'.--','X':'-..-','Y':'-.--','Z':'--..'}



def to\_morse(text):

&nbsp;   return ' '.join(MORSE.get(c.upper(), '?') for c in text if c != ' ')



print(to\_morse("Hello World"))





* Temperature converter





print("=== Temperature Converter ===")



temp = float(input("Enter temperature: "))

unit = input("Is it C or F? ").upper()



if unit == "C":

&nbsp;   result = (temp \* 9/5) + 32

&nbsp;   print(f"{temp}°C = {result}°F")



elif unit == "F":

&nbsp;   result = (temp - 32) \* 5/9

&nbsp;   print(f"{temp}°F = {result:.1f}°C")



else:

&nbsp;   print("Invalid! Enter C or F only.")





* Word counter 





sentence = input("Enter sentence: ")

words = sentence.split()

print(f"Word count: {len(words)}")



