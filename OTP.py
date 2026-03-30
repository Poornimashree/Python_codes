import random
import time

otp = random.randint(1000, 9999)
print("OTP:", otp)

start = time.time()

user = int(input("Enter OTP: "))

if time.time() - start > 10:
    print("OTP expired")
elif user == otp:
    print("Success")
else:
    print("Wrong OTP")