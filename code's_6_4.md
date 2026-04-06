* Write JSON to file





import json

data = {'name': 'Alice', 'age': 30}



with open('output.json', 'w') as f:

&#x20;   json.dump(data, f, indent=2)



print("Data written to file!")





* String code



pi = 3.14159265

name = 'world'

print(f'Hello {name!r}')

print(f'Pi = {pi:.3f}')

print(f'{pi = }')  

print(f'{"hi":>10}') 





* Itertools





from itertools import combinations, permutations

items = \['A','B','C','D']

for combo in combinations(items, 2):

&#x20;   print(combo)





* Bisect code





import bisect

scores = \[20, 40, 60, 80, 100]

bisect.insort(scores, 55)

print(scores)

rank = bisect.bisect\_left(scores, 60)

print(f'60 is at index {rank}')





* Map





names = \['alice', 'bob', 'charlie']

caps = list(map(str.upper, names))

print(caps)





* Word frequency



from collections import Counter

words = \['hi','bye','hi','ok','bye','hi']

c = Counter(words)

print(c.most\_common(2))





* Save shopping list





print("Shopping List (type 'done' to finish)")

items = \[]



while True:

&#x20;   item = input("Add item: ")

&#x20;   if item.lower() == "done":

&#x20;       break

&#x20;   items.append(item)



with open("shopping.txt", "w") as f:

&#x20;   for item in items:

&#x20;       f.write("- " + item + "\\n")



print(f"Saved {len(items)} items to shopping.txt")







* Longest line in file





with open("notes.txt", "r") as f:

&#x20;   lines = f.readlines()



longest = max(lines, key=len)

print(f"Longest line ({len(longest)} chars):")

print(longest.strip())





* Perfect number





n = int(input("Enter number: "))

divisors = \[i for i in range(1, n) if n % i == 0]

if sum(divisors) == n:

&#x20;   print(f"{n} is a Perfect number!")

else:

&#x20;   print(f"{n} is NOT a perfect number.")





* Remove a letter



text   = input("Enter text: ")

letter = input("Letter to remove: ")

result = text.replace(letter, "")

print(result)



