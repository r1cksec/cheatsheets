import os
import shutil

# remove a file
os.remove("file.txt")

# remove empty directory
os.rmdir("/dir") 

# remove directory recursively
shutil.rmtree("/dir")

