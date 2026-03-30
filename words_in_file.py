import os

def word_count(filename):
    if not os.path.exists(filename):
        return "File not found!"
    
    with open(filename, 'r') as file:
        text = file.read()
    return len(text.split())

print(word_count("sample.txt"))