import os

if (os.stat("file.txt").st_size == 0):
    print("File is empty")

