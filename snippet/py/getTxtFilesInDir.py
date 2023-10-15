import os

for currentFile in os.listdir("/tmp"):
    if currentFile.endswith(".txt"):
        print(os.path.join("/tmp", currentFile))

