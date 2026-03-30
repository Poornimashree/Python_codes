users = {
    "admin": "1234",
    "siva": "pass123"
}

def login():
    username = input("Enter username: ")
    password = input("Enter password: ")

    if username in users and users[username] == password:
        print("Login successful ✅")
    else:
        print("Invalid username or password ❌")

login()