import os

for files in os.listdir("dir"):
    if files.endswith(".txt"):
        print(os.path.join("dir", files))

# list files recursively
import pathlib

fileDir = "dir"
fileExt = r"**/*.txt"
list(pathlib.Path(fileDir).glob(fileExt))

