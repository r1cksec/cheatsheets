import os

# check if file or directory exists
fp = "file.txt"

if (os.path.exists(fp)):
    print("This file exists!")

# check if it is a directory
dp = "dir"

if (os.path.isdir(dp)):
    print("This directory exists!")

