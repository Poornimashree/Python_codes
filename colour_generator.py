import random

color = "#{:06x}".format(random.randint(0, 0xFFFFFF))
print("Color:", color)