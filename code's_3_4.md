* API codes



* colour info from hex





import requests



hex\_code = input("Enter hex color ")

url = f"https://www.thecolorapi.com/id?hex={hex\_code}"



data = requests.get(url).json()



print("Color Name:", data\["name"]\["value"])

print("RGB:", data\["rgb"]\["value"])





* Translate text



import requests



text = input("Enter text: ")

url = f"https://api.mymemory.translated.net/get?q={text}\&langpair=en|ta"



data = requests.get(url).json()



print("Translated:", data\["responseData"]\["translatedText"])





* Dog\_image





import requests

import webbrowser



url = "https://dog.ceo/api/breeds/image/random"

data = requests.get(url).json()

image\_url = data\["message"]



print("Dog Image URL:", image\_url)

webbrowser.open(image\_url) 







* Weather





import requests



city = input("Enter city: ")

url = f"https://wttr.in/{city}?format=j1"



data = requests.get(url).json()



temp = data\["current\_condition"]\[0]\["temp\_C"]

print(f"Temperature in {city}: {temp}°C")







* Movie search





import requests



api\_key = "YOUR\_API\_KEY"

movie = input("Enter movie name: ")



url = f"http://www.omdbapi.com/?t={movie}\&apikey={api\_key}"

data = requests.get(url).json()



print("Title:", data\["Title"])

print("Year:", data\["Year"])

print("IMDB Rating:", data\["imdbRating"])





* Currency converter





import requests



url = "https://api.exchangerate-api.com/v4/latest/USD"

data = requests.get(url).json()



rate = data\["rates"]\["INR"]

print("1 USD =", rate, "INR")





* GitHub user



import requests



username = input("Enter GitHub username: ")

url = f"https://api.github.com/users/{username}"



data = requests.get(url).json()



print("Name:", data\["name"])

print("Public Repos:", data\["public\_repos"])

print("Followers:", data\["followers"])







* Website status





import requests



site = input("Enter website URL: ")



try:

&#x20;   res = requests.get(site)

&#x20;   print(f"Status Code: {res.status\_code}")

except:

&#x20;   print("Invalid URL or connection error")





* Time





import requests



city = input("Enter timezone (e.g. Asia/Kolkata): ")

url = f"https://timeapi.io/api/time/current/zone?timeZone={city}"



data = requests.get(url).json()

print("Time:", data\["dateTime"])







* Newsheadline







import requests



url = "https://saurav.tech/NewsAPI/top-headlines/category/general/in.json"



data = requests.get(url).json()



for article in data\["articles"]\[:5]:

&#x20;   print("-", article\["title"])



